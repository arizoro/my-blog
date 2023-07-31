@extends('layouts.main')

@section('container')
    <h3>Nama : {{ $nama }}</h3>
    <h5>Alamat : {{ $alamat }}</h5>
    <img src="img/ari.jpg" class="img-thumnail rounded-circle mt-3" width="300" height="300" alt="{{ $nama }}">

@endsection