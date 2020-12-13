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
	<button class="btn btn-info"><a href="category/show">View All Categories</a></button>
	<button class="btn btn-warning"><a href="category/create">Create New Category</a></button>
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
      <th class="th-sm">Name</th>
      <th class="th-sm">ID</th>
      <th class="th-sm">Created Time</th>
      <th class="th-sm">Updated Time</th>
      <th class="th-sm">Edit</th>
      <th class="th-sm">Delete</th>
    </tr>
    </thead>
  	<tbody>
  	@foreach($categories->all() as $category)
       <tr>
      <td>{{$category->name}}</td>
      <td>{{$category->id}}</td>
      <td>{{$category->created_at}}</td>
      <td>{{$category->updated_at}}</td>
      <td><a href="{{ route('category.edit', $category->id)}}">Edit</td><form method="post" action="{{ route('category.destroy', $category->id)}}">
      @method('DELETE')
      @csrf
      <td><input type="Submit" name="" value="Delete" ></td></form>
    </tr>
    @endforeach
    </tbody>
</table> 

@endsection