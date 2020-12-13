@extends('admin.main')
@section('content')
<div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Category</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item">Pages</li>
<li class="breadcrumb-item active" aria-current="page">Category</li>
            </ol>
          </div>
  <button class="btn btn-info"><a href="category/show">View All Posts</a></button>
  <button class="btn btn-warning"><a href="category/create">Create New Post</a></button>
    @if (Session::has('cc'))
         <div class="alert alert-success">
          <button class="close" data-dismiss="alert">*</button>
          <strong>{{session('cc')}}</strong>
         </div>
         @endif
        
         @if (Session::has('dc'))
         <div class="alert alert-danger">
          <button class="close" data-dismiss="alert">*</button>
          <strong>{{session('dc')}}</strong>
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
    <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th class="th-sm">Title</th>
      <th class="th-sm">Author</th>
      <th class="th-sm">Category</th>
      <th class="th-sm">Description</th>
      <th class="th-sm">Image</th>
      <th class="th-sm">Edit</th>
      <th class="th-sm">Delete</th>
    </tr>
    </thead>
    <tbody>
    @foreach($posts->all() as $post)
       <tr>
      <td>{{$post->title}}</td>
      <td>{{$post->author}}</td>
      <td>{{$post->category_id}}</td>
      <td>{{$post->description}}</td>
      <td><img src="{{ asset("img/$post->image") }}" width="30"></td>
      <td><a href="{{ route('post.edit', $post->id)}}">Edit</td>
      <form method="post" action="{{ route('post.destroy', $post->id)}}">
      @method('DELETE')
      @csrf
      <td><input type="Submit" name="" value="Delete" ></td></form>
    </tr>
    @endforeach
    </tbody>
</table> 

@endsection