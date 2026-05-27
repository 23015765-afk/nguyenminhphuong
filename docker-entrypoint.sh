#!/bin/bash
set -e

echo "=========================================="
echo "  Du Lich Viet — Starting up..."
echo "=========================================="

# Tạo APP_KEY nếu chưa có
if [ -z "$APP_KEY" ]; then
    echo ">> Generating APP_KEY..."
    php artisan key:generate --force
fi

# Cache config, routes, views
echo ">> Caching config, routes, views..."
php artisan config:cache
php artisan route:cache
php artisan view:cache

# Chạy migrate fresh + seed để đồng nhất dữ liệu với localhost
# FRESH_SEED=true  → reset toàn bộ và seed lại (dùng khi deploy lần đầu hoặc muốn reset)
# FRESH_SEED=false → chỉ migrate thêm, không xóa dữ liệu cũ
echo ">> Checking database sync mode..."

if [ "${FRESH_SEED}" = "true" ]; then
    echo ">> FRESH_SEED=true: Running migrate:fresh --seed..."
    php artisan migrate:fresh --seed --force
    echo ">> Database reset and seeded successfully!"
else
    echo ">> Running migrations only (set FRESH_SEED=true to reset data)..."
    php artisan migrate --force

    # Seed nếu bảng users chưa có dữ liệu
    USER_COUNT=$(php artisan tinker --execute="echo App\Models\User::count();" 2>/dev/null | grep -E '^[0-9]+$' | tail -1)
    if [ -z "$USER_COUNT" ] || [ "$USER_COUNT" = "0" ]; then
        echo ">> Empty database detected, seeding..."
        php artisan db:seed --force
    else
        echo ">> Database has data (users: $USER_COUNT), skipping seed."
    fi
fi

# Tạo storage symlink
echo ">> Creating storage symlink..."
php artisan storage:link || true

# Set permissions
chown -R www-data:www-data storage bootstrap/cache
chmod -R 775 storage bootstrap/cache

echo ">> Server is ready!"
echo "=========================================="

# Khởi động Apache
exec "$@"
