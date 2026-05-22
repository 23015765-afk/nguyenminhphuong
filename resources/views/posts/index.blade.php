@extends('layouts.app')
@section('title', 'Bài viết')
@section('content')

<style>
.posts-hero {
    background: url('https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?w=1600&q=80') center/cover no-repeat;
    position: relative;
    padding: 5rem 0 3.5rem;
}
.posts-hero::before {
    content:'';
    position:absolute;inset:0;
    background: linear-gradient(135deg, rgba(15,23,42,0.78) 0%, rgba(26,58,42,0.6) 100%);
}
.filter-bar {
    background: #fff;
    border-radius: 20px;
    padding: 1.75rem 2rem;
    box-shadow: 0 8px 32px rgba(15,23,42,0.1);
    border: 1px solid rgba(212,163,115,0.18);
    margin-top: -2.5rem;
    position: relative;
    z-index: 10;
}
.active-filter-tag {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    background: rgba(212,163,115,0.12);
    border: 1px solid rgba(212,163,115,0.3);
    color: var(--gold-dark);
    padding: 0.3rem 0.85rem;
    border-radius: 9999px;
    font-size: 0.8rem;
    font-weight: 600;
}
</style>

<!-- Page Header -->
<div class="posts-hero">
    <div class="container position-relative text-center">
        <span style="display:inline-block;background:rgba(212,163,115,0.25);border:1px solid rgba(212,163,115,0.5);color:var(--gold);padding:0.3rem 1rem;border-radius:9999px;font-size:0.78rem;font-weight:600;letter-spacing:0.08em;text-transform:uppercase;margin-bottom:1rem;">
            ✈ Khám phá
        </span>
        <h1 style="font-family:'Playfair Display',serif;font-size:clamp(2rem,5vw,3rem);font-weight:700;color:#fff;margin-bottom:0.75rem;">
            Tất cả Bài viết
        </h1>
        <p style="color:rgba(255,255,255,0.75);font-size:1rem;">Khám phá những bài viết du lịch hữu ích từ cộng đồng</p>
    </div>
</div>

<div class="container">
    <!-- Filter Bar -->
    <div class="filter-bar mb-4" data-aos="fade-up">
        <form action="{{ route('posts.index') }}" method="GET">
            <div class="row g-3 align-items-end">
                <div class="col-md-4">
                    <label class="form-label-custom"><i class="fas fa-search me-1" style="color:var(--gold);"></i> Tìm kiếm</label>
                    <input type="text" name="search" class="form-control form-control-dark" placeholder="Tìm kiếm bài viết..." value="{{ request('search') }}">
                </div>
                <div class="col-md-3">
                    <label class="form-label-custom"><i class="fas fa-folder me-1" style="color:var(--gold);"></i> Danh mục</label>
                    <select name="category" class="form-control form-control-dark">
                        <option value="">Tất cả danh mục</option>
                        @foreach($categories as $cat)
                        <option value="{{ $cat->slug }}" {{ request('category') == $cat->slug ? 'selected' : '' }}>
                            {{ $cat->name }} ({{ $cat->posts_count }})
                        </option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-2">
                    <label class="form-label-custom"><i class="fas fa-map-marker-alt me-1" style="color:var(--gold);"></i> Địa điểm</label>
                    <input type="text" name="location" class="form-control form-control-dark" placeholder="Địa điểm..." value="{{ request('location') }}">
                </div>
                <div class="col-md-2">
                    <label class="form-label-custom"><i class="fas fa-sort me-1" style="color:var(--gold);"></i> Sắp xếp</label>
                    <select name="sort" class="form-control form-control-dark">
                        <option value="latest" {{ request('sort') == 'latest' ? 'selected' : '' }}>Mới nhất</option>
                        <option value="popular" {{ request('sort') == 'popular' ? 'selected' : '' }}>Phổ biến</option>
                        <option value="oldest" {{ request('sort') == 'oldest' ? 'selected' : '' }}>Cũ nhất</option>
                    </select>
                </div>
                <div class="col-md-1">
                    <button type="submit" class="btn btn-primary-custom w-100" style="padding:0.7rem;border-radius:var(--radius-sm);">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>
        </form>
    </div>

    <!-- Active Filters -->
    @if(request()->anyFilled(['search', 'category', 'location']))
    <div class="mb-4 d-flex align-items-center gap-2 flex-wrap">
        <span style="color:var(--text-secondary);font-size:0.875rem;font-weight:500;">Kết quả cho:</span>
        @if(request('search'))
        <span class="active-filter-tag"><i class="fas fa-search"></i>"{{ request('search') }}"</span>
        @endif
        @if(request('category'))
        <span class="active-filter-tag"><i class="fas fa-folder"></i>{{ request('category') }}</span>
        @endif
        @if(request('location'))
        <span class="active-filter-tag"><i class="fas fa-map-marker-alt"></i>{{ request('location') }}</span>
        @endif
        <a href="{{ route('posts.index') }}" style="color:#ef4444;font-size:0.85rem;font-weight:600;text-decoration:none;display:inline-flex;align-items:center;gap:4px;">
            <i class="fas fa-times-circle"></i> Xóa bộ lọc
        </a>
    </div>
    @endif

    <!-- Posts Grid -->
    @if($posts->count())
    <div class="row g-4 py-3">
        @foreach($posts as $post)
        <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="{{ ($loop->index % 3) * 80 }}">
            <div class="card-glass h-100" style="border-radius:16px;overflow:hidden;">
                <div class="card-img-wrapper" style="overflow:hidden;position:relative;">
                    <img src="{{ $post->image_url }}" class="card-img-top" alt="{{ $post->title }}"
                         style="height:230px;object-fit:cover;width:100%;transition:transform 0.5s ease;">
                    <div class="card-img-overlay-gradient"></div>
                    <div class="position-absolute top-0 start-0 p-3" style="z-index:3;">
                        <span class="badge-category" style="backdrop-filter:blur(8px);background:rgba(255,255,255,0.92);color:var(--gold-dark);">{{ $post->category->name }}</span>
                    </div>
                    @if($post->location)
                    <div class="position-absolute bottom-0 start-0 p-3" style="z-index:3;">
                        <span style="color:white;font-size:0.78rem;text-shadow:0 1px 4px rgba(0,0,0,0.6);"><i class="fas fa-map-marker-alt me-1" style="color:var(--gold);"></i>{{ $post->location }}</span>
                    </div>
                    @endif
                </div>
                <div class="card-body d-flex flex-column p-4">
                    <h5 class="card-title" style="font-family:'Playfair Display',serif;font-size:1.05rem;font-weight:700;line-height:1.4;">
                        <a href="{{ route('posts.show', $post->slug) }}" style="color:var(--navy);text-decoration:none;transition:color 0.3s ease;">{{ $post->title }}</a>
                    </h5>
                    <p class="card-text flex-grow-1" style="color:var(--text-secondary);font-size:0.88rem;line-height:1.65;">{{ Str::limit($post->excerpt ?? strip_tags($post->content), 100) }}</p>
                    <div class="d-flex justify-content-between align-items-center mt-3">
                        <div class="meta-info" style="font-size:0.78rem;">
                            <span><i class="fas fa-eye me-1"></i>{{ number_format($post->views_count) }}</span>
                            <span><i class="fas fa-comment me-1"></i>{{ $post->comments_count ?? $post->comments()->count() }}</span>
                        </div>
                        <div class="stars" style="font-size:0.75rem;">
                            @for($i = 1; $i <= 5; $i++)
                                <i class="fas fa-star{{ $i <= round($post->average_rating) ? '' : ' empty' }}"></i>
                            @endfor
                        </div>
                    </div>
                    <div class="meta-info mt-2 pt-2" style="border-top:1px solid rgba(212,163,115,0.15);font-size:0.78rem;">
                        <span><i class="fas fa-user me-1"></i>{{ $post->user->name }}</span>
                        <span><i class="fas fa-calendar me-1"></i>{{ $post->created_at->format('d/m/Y') }}</span>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <div class="d-flex justify-content-center mt-5 pb-4">{{ $posts->links() }}</div>
    @else
    <div class="text-center py-5 my-4" data-aos="fade-up">
        <div style="width:80px;height:80px;background:rgba(212,163,115,0.1);border-radius:50%;display:inline-flex;align-items:center;justify-content:center;margin-bottom:1.5rem;">
            <i class="fas fa-search fa-2x" style="color:var(--gold);"></i>
        </div>
        <h4 style="font-family:'Playfair Display',serif;color:var(--navy);margin-bottom:0.75rem;">Không tìm thấy bài viết nào</h4>
        <p style="color:var(--text-secondary);">Thử thay đổi từ khóa hoặc bộ lọc.</p>
        <a href="{{ route('posts.index') }}" class="btn btn-outline-custom mt-2">Xem tất cả bài viết</a>
    </div>
    @endif
</div>

@endsection
