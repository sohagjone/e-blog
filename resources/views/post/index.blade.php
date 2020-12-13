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
	<button class="btn btn-warning"><a href="post/create">Create New Post</a></button>
      

@endsection