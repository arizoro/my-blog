@extends('dashboard.layouts.main')

@section('container')

<div class="container">
  <div class="row">
    <div class="col-md-8 ">
      <h1 class="my-3">{{ $post->title }}</h1>
      <a href="/dashboard/posts" class="btn btn-success" ><i class="bi bi-box-arrow-right"></i> Back to all MyPost</a>
      <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning" ><i class="bi bi-pen"></i> Edit</a>

      <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline" >
      @method('delete')
      @csrf
        <button class="btn btn-danger"><i class="bi bi-file-earmark-x"></i> Delete</button>
      </form>

      @if ( $post->image)
          <div style="max-height: 400px; overflow:hidden;">
            <img src="{{ asset('/storage/' . $post->image ) }}" alt="{{ $post->category->name }}" class="img-fluid my-3">
          </div>
      @else
      <img src="https://source.unsplash.com/1200x400/?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid my-3">
      @endif

      
      <article class="my-3">
        {!! $post->body !!}
      </article>
      <a href="/dashboard/posts" class="text-decoration-none d-block mt-4 mb-5" >Back to my posts</a>
    </div>
  </div>
</div>

@endsection