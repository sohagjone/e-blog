@extends('postview.main')
@section('content')

@foreach($posts->all() as $post)

  <div class="post-preview">
            <h2 class="post-title">
             {{$post->title}}
            </h2>
            <h4 class="post-subtitle">
              {{substr("$post->description", 0, 100)}}
            </h4>
            <button class="btn btn-warning"><a href="{{ route('post.edit', $post->id)}}">Read More</a></button>
          </a>
          <p class="post-meta">Posted by
            {{$post->author}}
            {{$post->created_at}}</p>
        </div>
  @endforeach
@endsection