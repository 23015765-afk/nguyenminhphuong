<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        // Featured: top 6 bài phổ biến nhất (1 large + 3 small cards + 5 sidebar = cần ít nhất 5)
        $featuredPosts = Post::published()
            ->with(['user', 'category'])
            ->popular()
            ->take(6)
            ->get();

        $latestPosts = Post::published()
            ->with(['user', 'category'])
            ->latest()
            ->take(6)
            ->get();

        $foodPosts = Post::published()
            ->with(['user', 'category'])
            ->whereHas('category', function ($q) {
                $q->where('name', 'like', '%Ẩm thực%');
            })
            ->latest()
            ->take(3)
            ->get();

        $destinationPosts = Post::published()
            ->with(['user', 'category'])
            ->whereHas('category', function ($q) {
                $q->where('name', 'like', '%Điểm đến%');
            })
            ->latest()
            ->take(3)
            ->get();

        $checkinPosts = Post::published()
            ->with(['user', 'category'])
            ->whereHas('category', function ($q) {
                $q->where('name', 'like', '%Checkin%');
            })
            ->latest()
            ->take(3)
            ->get();

        // 3 danh mục mới
        $experiencePosts = Post::published()
            ->with(['user', 'category'])
            ->whereHas('category', function ($q) {
                $q->where('name', 'like', '%Kinh nghiệm%');
            })
            ->latest()
            ->take(3)
            ->get();

        $hotelPosts = Post::published()
            ->with(['user', 'category'])
            ->whereHas('category', function ($q) {
                $q->where('name', 'like', '%Khách sạn%');
            })
            ->latest()
            ->take(3)
            ->get();

        $guidePosts = Post::published()
            ->with(['user', 'category'])
            ->whereHas('category', function ($q) {
                $q->where('name', 'like', '%Cẩm nang%');
            })
            ->latest()
            ->take(3)
            ->get();

        $categories = Category::withCount(['posts' => function ($q) {
            $q->where('status', 'published');
        }])->get();

        return view('home', compact(
            'featuredPosts',
            'latestPosts',
            'foodPosts',
            'destinationPosts',
            'checkinPosts',
            'experiencePosts',
            'hotelPosts',
            'guidePosts',
            'categories'
        ));
    }
}
