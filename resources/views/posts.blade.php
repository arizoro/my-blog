@extends('layouts.main')

@section('container')
    <h1 class="mb-4 mt-4 text-center">{{ $title }}</h1>

    <div class="row d-flex justify-content-center">
      <div class="col-md-6">
        <form action="/posts">
          @if(request('category'))
          <input type="hidden" name="category" value="{{ request('category') }}" >
          @endif
          @if(request('author'))
          <input type="hidden" name="author" value="{{ request('author') }}" >
          @endif
          <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="Masukan pencarian" name="search" value="{{ request('search') }}" >
            <button class="btn btn-dark text-light" type="submit" >Search</button>
          </div>
        </form> 
      </div>
    </div>

    @if ($posts->count() > 0)    
      <div class="card mb-3 text-center mt-2">
          @if ( $posts[0]->image)
          <div style="max-height: 400px; overflow:hidden;">
            <img src="{{ asset('/storage/' . $posts[0]->image ) }}" alt="{{ $posts[0]->category->name }}" class="img-fluid ">
          </div>
          @else
          <img src="https://source.unsplash.com/1200x400/?{{ $posts[0]->category->name }}" alt="{{ $posts[0]->category->name }}" class="img-fluid ">
          @endif
          <div class="card-body">
            <h2 class="card-title"><a href="/post/{{ $posts[0]->slug }}" class="text-decoration-none text-dark">{{ $posts[0]->title }}</a></h2>
            <p> 
              <small class="text-body-secondary">By: <a href="/posts?author={{ $posts[0]->author->username }}" class="text-decoration-none">{{ $posts[0]->author->name }}
            </a> in <a href="/posts?category={{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->name }}</a>
              {{ $posts[0]->created_at->diffForHumans() }}</small>
            </p>
            <p class="card-text">{{ $posts[0]->excerpt }}</p>
            <a href="/post/{{ $posts[0]->slug }}" class="btn btn-primary">RedaMore</a>
          </div>
        </div>

    <div class="container">
      <div class="row">
      @foreach($posts->skip(1) as $post)
        <div class="col-md-4">
          <div class="card m-3" >
            <div class="position-absolute px-3 py-2" style="background-color: rgba(0, 0, 0, 0.7)" >
              <a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none text-light">{{ $post->category->name }}</a>
            </div>
            @if ( $post->image)
            <div style="max-height: 500px; overflow:hidden;">
              <img src="{{ asset('/storage/' . $post->image ) }}" alt="{{ $post->category->name }}" class="card-img-top">
            </div>
            @else
            <img src="https://source.unsplash.com/500x400/?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="card-img-top">
            @endif
            <div class="card-body">
              <h5 class="card-title">{{ $post->title }}</h5>
              <p> 
                <small class="text-body-secondary">By: <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}
              </a>
                {{ $post->created_at->diffForHumans() }}</small>
              </p>
              <p class="card-text">{{ $post->excerpt }}</p>
              <a href="/post/{{ $post->slug }}" class="btn btn-primary">ReadMore</a>
            </div>
          </div>
        </div>
      @endforeach
      </div>
    </div>
    @else
      <p class="text-center fs-4">Not post found</p>
    @endif
<div class="d-flex justify-content-center my-3">
    {{ $posts->links() }}
</div>

@endsection