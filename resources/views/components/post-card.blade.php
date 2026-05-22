<div class="col-lg-4 col-md-6" data-aos="fade-up">
    <div class="card-glass h-100" style="border-radius:16px;overflow:hidden;">
        <div class="card-img-wrapper" style="overflow:hidden;position:relative;">
            <img src="{{ $post->image_url }}" class="card-img-top" alt="{{ $post->title }}"
                 style="height:230px;object-fit:cover;width:100%;transition:transform 0.5s ease;">
            <div class="card-img-overlay-gradient"></div>
            <!-- Category badge top-left -->
            <div class="position-absolute top-0 start-0 p-3" style="z-index:3;">
                <span class="badge-category" style="backdrop-filter:blur(8px);background:rgba(255,255,255,0.92);color:var(--gold-dark);border-color:rgba(212,163,115,0.3);box-shadow:0 2px 8px rgba(15,23,42,0.12);">
                    {{ $post->category->name }}
                </span>
            </div>
            <!-- Views badge top-right -->
            @if(isset($showViews) && $showViews)
            <div class="position-absolute top-0 end-0 p-3" style="z-index:3;">
                <span style="display:inline-flex;align-items:center;gap:4px;background:rgba(15,23,42,0.7);color:#fff;border-radius:9999px;font-size:0.72rem;font-weight:600;padding:0.3rem 0.75rem;backdrop-filter:blur(6px);">
                    <i class="fas fa-eye"></i>{{ number_format($post->views_count) }}
                </span>
            </div>
            @endif
        </div>
        <div class="card-body d-flex flex-column p-4">
            <h5 class="card-title" style="font-family:'Playfair Display',serif;font-size:1.05rem;font-weight:700;line-height:1.4;margin-bottom:0.6rem;">
                <a href="{{ route('posts.show', $post->slug) }}" style="color:var(--navy);text-decoration:none;transition:color 0.3s ease;">{{ $post->title }}</a>
            </h5>
            <p class="card-text flex-grow-1" style="color:var(--text-secondary);font-size:0.88rem;line-height:1.65;">
                {{ Str::limit($post->excerpt ?? strip_tags($post->content), 100) }}
            </p>
            <div class="d-flex justify-content-between align-items-center mt-3 pt-3" style="border-top:1px solid rgba(212,163,115,0.15);">
                <div class="meta-info" style="font-size:0.8rem;">
                    <span><i class="fas fa-user me-1"></i>{{ $post->user->name }}</span>
                    @if(isset($showDate) && $showDate)
                    <span><i class="fas fa-calendar me-1"></i>{{ $post->created_at->format('d/m/Y') }}</span>
                    @endif
                </div>
                <div class="stars" style="font-size:0.75rem;">
                    @for($i = 1; $i <= 5; $i++)
                        <i class="fas fa-star{{ $i <= round($post->average_rating) ? '' : ' empty' }}"></i>
                    @endfor
                </div>
            </div>
        </div>
    </div>
</div>
