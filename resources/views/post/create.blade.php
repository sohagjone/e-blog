@extends('admin.main')
@section('content')
<div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Post</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item">Pages</li>
<li class="breadcrumb-item active" aria-current="page">Post</li>
            </ol>
          </div>
  <button class="btn btn-info"><a href="post/show">View All Posts</a></button>
  <button class="btn btn-warning"><a href="post/create">Create New Post</a>
  </button>
  <hr>
   @if (Session::has('cc'))
         <div class="alert alert-success">
          <button class="close" data-dismiss="alert">*</button>
          <strong>{{session('cc')}}</strong>
         </div>
         @endif
   @if (Session::has('coc'))
           <div class="alert alert-danger">
            <button class="close" data-dismiss="alert">*</button>
            <strong>{{session('coc')}}</strong>
            <ul>
              @foreach ($errors->all() as $error)
              <li>
                {{$error}}
              </li>
              @endforeach
            </ul>
           </div>
           @endif
  <div class="container">
<form method="post" enctype="multipart/form-data" action="{{route('post.store')}}">
   @csrf
  <fieldset>
    <legend>Create Post</legend>
    <div class="form-group">
      <label for="exampleInputEmail1">Enter Title</label>
      <input type="text" class="form-control" name="title" aria-describedby="emailHelp" placeholder="Enter Title">
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Author</label>
    <input type="text" class="form-control" name="author" placeholder="Author">
    </div>
    <div class="form-group">
      <label for="exampleSelect1">select</label>
      <select class="form-control" name="category_id">
        @foreach ($categories as $category)
    <option value="{{$category->id}}">{{$category->name}}</option>
        @endforeach
      </select>
    </div>
    <div class="form-group">
      <label for="exampleTextarea">Enter Description</label>
    <textarea class="form-control" name="description" rows="3"></textarea>
    </div>
    <div class="form-group">
      <label for="exampleInputFile">File input</label>
      <input type="file" name="image" class="form-control-file"  aria-describedby="fileHelp">
      <small  class="form-text text-muted">Enter Image</small>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </fieldset>
</form>
  </div>
      

@endsection