@extends('layouts.template')


@section('navbar')
    @parent
@endsection

@section('content')
    <div class="row p-5">
    @foreach($posts as $post) 
        <div class="col-lg-4 col-sm-2 pb-5">
            <div class="card" style="width: 18rem;">
                <img src="https://projects.thecdm.ca/c14/imgs/<?= $post->post_image ?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">{{$post->post_title}}</h5>
                    <p class="card-text">{{$post->post_date}}</p>
                    <a href="https://quirky-neumann-7293f4.netlify.app/posts/<?=$post->post_id?>" class="btn btn-primary">View Post</a>
                </div>
            </div>
        </div>
    @endforeach
    </div>
@endsection



