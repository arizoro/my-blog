@extends('layouts.main')

@section('container')
    
<div class="row justify-content-center ">
    <div class="col-lg-5">
        <main class="form-signin w-100 m-auto mt-5 ">
        <form action="/register" method="post">
            @csrf
        <h1 class="h3 mb-3 fw-normal text-center">Register</h1>
            <div class="form-floating">
                <input type="text" class="form-control @error('name') is-invalid @endError" id="name" name="name" required value="{{ old('name') }}">
                <label for="name">Name</label>
                @error('name')
                <div  class="invalid-feedback">
                    {{ $message }}
                </div>
                @endError
            </div>
            <div class="form-floating">
                <input type="text" class="form-control @error('username') is-invalid @endError" id="username" name="username" required value="{{ old('username') }}">
                <label for="username">Username</label>
                @error('username')
                <div  class="invalid-feedback">
                    {{ $message }}
                </div>
                @endError
            </div>
            <div class="form-floating">
                <input type="email" class="form-control @error('email') is-invalid @endError" id="email" name="email" required value="{{ old('email') }}">
                <label for="email">Email address</label>
                @error('email')
                <div  class="invalid-feedback">
                    {{ $message }}
                </div>
                @endError
            </div>
            <div class="form-floating">
                <input type="password" class="form-control @error('password') is-invalid @endError" id="password"  name="password" required >
                <label for="password">Password</label>
                @error('password')
                <div  class="invalid-feedback">
                    {{ $message }}
                </div>
                @endError
            </div>
                <div class="">
                    <button class="btn btn-primary w-100" type="submit">Register</button>
                </div>
        </form>
            <small class="d-block text-center mt-2">Back to <a href="/login">Sign in</a></small>
        </main>
    </div>
</div>
@endsection