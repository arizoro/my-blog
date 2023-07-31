@extends('dashboard.layouts.main')

@section('container')

<h1 class="my-3">Post Category</h1>

<a href="/dashboard/categories/create" class="btn btn-primary mb-3">Add Category<i class="bi bi-box-arrow-right ms-2"></i></a>

@if(session()->has('success'))
<div class="alert alert-success alert-dismissible fade show col-lg-8" role="alert">
  {{ session('success') }}
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
@endif

<div class="table-responsive small col-lg-6">
  <table class="table table-striped table-lg">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Category Name</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    @foreach ($categories as $category) 
    <tbody>
      <tr>
        <td>{{ $loop->iteration }}</td>
        <td>{{ $category->name }}</td>
        <td>
          <a href="/dashboard/categories/{{ $category->slug }}/edit" class="badge bg-warning" ><h7 class="bi bi-pen"></h7></a>

          <form action="/dashboard/categories/{{ $category->slug }}" method="post" class="d-inline" >
            @method('delete')
            @csrf
            <button type="submit" class="badge bg-danger border-0" onclick="return confirm('Are you sure ??')" ><h7 class="bi bi-file-earmark-x"></h7></button>
          </form>
        </td>
      </tr>
    </tbody>
    @endforeach
  </table>
</div>

@endsection