@extends('admin.main')

@section('content')
<div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Category</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item">Pages</li>
  <li class="breadcrumb-item active" aria-current="page"> Create Category</li>
            </ol>
          </div>
	<button class="btn btn-info"><a href="">View All Categories</a></button>
	<button class="btn btn-warning"><a href="category/create">Create New Category</a></button>
    <hr>
    <form method="post" action="{{ route('category.update', $category->id )}}">
      @method('PATCH')
      @csrf
      <label>Enter New Category:</label>
      <input type="text" name="name" value="{{$category->name}}">
      <input type="submit" name="" value="Update" >
    </form>

@endsection