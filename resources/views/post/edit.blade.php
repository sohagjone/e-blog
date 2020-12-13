@extends('admin.main')
@section('content')
<div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Post</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item">Pages</li>
<li class="breadcrumb-item active" aria-current="page">Edit Post</li>
            </ol>
          </div>
  <button class="btn btn-info"><a href="post/show">View All Posts</a></button>
  <button class="btn btn-warning"><a href="post/create">Create New Post</a>
  </button>
  <hr>
  <div class="container">
<form method="post" action="{{route('post.update', $post->id)}}" enctype="multipart/form-data">
   @method('PATCH')
    @csrf
  <fieldset>
    <legend>Edit Post</legend>
    <div class="form-group">
      <label for="exampleInputEmail1">Edit Title</label>
      <input type="text" class="form-control" name="title" aria-describedby="emailHelp" value="{{$post->title}}">
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Edit Author</label>
    <input type="text" class="form-control" name="author" value="{{$post->author}}">
    </div>
    <div class="form-group">
      <label for="exampleSelect1">select</label>
      <select class="form-control" name="category_id">
       @foreach ($categories as $category)
    <option value="{{$post->category_id}}">{{$category->name}}</option>
        @endforeach
      </select>
    </div>
    <div class="form-group">
      <label for="exampleTextarea">Enter Description</label>
    <textarea class="form-control" name="description"  rows="3" 
    placeholder="{{ $post->description }}"></textarea>
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