@extends('layouts.app')

@section('content')
    <div class="container">

        @include('frontend._search')

        <div class="row">

            <div class="col-md-12">
                @forelse ($posts as $post)
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            {{ $post->title }} - <small>по {{ $post->user->name }}</small>

                            <span class="pull-right">
                                {{ $post->created_at->toDayDateTimeString() }}
                            </span>
                        </div>

                        <div class="panel-body">
                            <p>{{ str_limit($post->body, 200) }}</p>
                            <p>
                                Теги:
                                @forelse ($post->tags as $tag)
                                    <span class="label label-default">{{ $tag->name }}</span>
                                @empty
                                    <span class="label label-danger">Не найдено тегов.</span>
                                @endforelse
                            </p>
                            <p>
                                <span class="btn btn-sm btn-success">{{ $post->category->name }}</span>
                                <span class="btn btn-sm btn-info">Комменты <span class="badge">{{ $post->comments_count }}</span></span>

                                <a href="{{ url("/posts/{$post->id}") }}" class="btn btn-sm btn-primary">Прочесть...</a>
                            </p>
                        </div>
                    </div>
                @empty
                    <div class="panel panel-default">
                        <div class="panel-heading">Не найдено!!</div>

                        <div class="panel-body">
                            <p>Сори! Не найдено постов.</p>
                        </div>
                    </div>
                @endforelse

                <div align="center">
                    {!! $posts->appends(['search' => request()->get('search')])->links() !!}
                </div>

            </div>

        </dev>
    </dev>
@endsection
