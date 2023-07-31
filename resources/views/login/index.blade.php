@extends('layouts.main')

@section('container')
    
<div class="row justify-content-center ">
    <div class="col-lg-4">

        @if(session()->has('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif

        @if(session()->has('errorLogin'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            {{ session('errorLogin') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif

<main class="form-signin w-100 m-auto mt-5 ">
        <form action="/login" method="post">
            @csrf
        <h1 class="h3 mb-3 fw-normal text-center">Login</h1>
            <div class="form-floating">
                <input type="email" class="form-control @error('email') is-invalid @endError " id="email" placeholder="name@example.com" name="email" required autofocus value="{{ old('email') }}" >
                <label for="email">Email address</label>
                @error('email')
                <div  class="invalid-feedback">
                    {{ $message }}
                </div>
                @endError
            </div>
            <div class="form-floating">
                <input type="password" class="form-control @error('password') is-invalid @endError " id="password" placeholder="Password" name="password" required>
                <label for="password">Password</label>
                @error('password')
                <div  class="invalid-feedback">
                    {{ $message }}
                </div>
                @endError
            </div>
                <div class="">
                    <button class="btn btn-primary w-100" type="submit">Sign in</button>
                </div>
        </form>
        <small class="d-block text-center mt-2">Not register?<a href="/register">Sign up Now.!</a></small>
  </main>
        </div>
      </div>
@endsection