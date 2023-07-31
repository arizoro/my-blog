@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1>Create New Posts</h1>
</div>

<div class="col-lg-8 mt-4">
  <form method="post" action="/dashboard/posts" enctype="multipart/form-data" >
    @csrf
    
    <div class="mb-3">
      <label for="title" class="form-label">Title</label>
      <input type="text" class="form-control @error('title') is-invalid @endError " id="title" name="title" value="{{ old('title') }}" required autofocus >
      @error('title')
      <div class="invalid-feedback">{{ $message }}</div>
      @endError
    </div>

    <div class="mb-3">
      <label for="slug" class="form-label @error('slug') is-invalid @endError">Slug</label>
      <input type="text" class="form-control" id="slug" name="slug" value="{{ old('slug') }}" required >

      @error('slug')
      <div class="invalid-feedback">{{ $message }}</div>
      @endError
    </div>

    <div class="mb-3">
      <label for="category" class="form-label" >Category</label>
      <select class="form-select" id="category" name="category_id">

      @foreach ($categories as $category)
      @if( old('category_id') == $category->id )
        <option value="{{ $category->id }} " selected >{{ $category->name }}</option>
        @else
        <option value="{{ $category->id }}">{{ $category->name }}</option>
        @endif
      @endforeach

      </select>
    </div>

    <div class="mb-3">
      <label for="image" class="form-label">Post Image</label>
      <img  class="img-preview img-fluid mb-3 col-sm-5" >
      <input class="form-control @error('image') is-invalid @endError" type="file" id="image" name="image" onchange="previewImg()" >
      @error('image')
      <div class="invalid-feedback">{{ $message }}</div>
      @endError
    </div>

    <div class="mb-3">
      <label for="body" class="form-label" >Body</label>
      @error('body')
      <p class="text-danger">{{ $message }}</p>
      @endError
      <input id="body"  type="hidden" name="body" value="{{ old('body') }}" required >
      <trix-editor input="body"></trix-editor>
    </div>

    <button type="submit" class="btn btn-primary mb-5">Create Post</button>
  </form>
</div>


<script>
  const title = document.querySelector('#title');
  const slug = document.querySelector('#slug');

  title.addEventListener('change', function(){
    fetch('/dashboard/posts/checkSlug?title=' + title.value)
      .then(response => response.json())
      .then(data => slug.value = data.slug )
  });

  document.addEventListener('trix-file-accept', function(e){
    e.preventDefault();
  })

  function previewImg(){
    const image = document.querySelector('#image');
    const imgPreview = document.querySelector('.img-preview');

    imgPreview.style.display = 'block' ;

    const oFReader = new FileReader();
    oFReader.readAsDataURL(image.files[0]);

    oFReader.onload = function(oFREvent) {
      imgPreview.src = oFREvent.target.result;
    }

  }
</script>
@endsection
