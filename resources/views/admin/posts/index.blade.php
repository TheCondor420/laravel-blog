@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2>
                            Посты

                            <a href="{{ url('admin/posts/create') }}" class="btn btn-default pull-right">Создать пост</a>
                        </h2>
                    </div>

                    <div class="panel-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Название</th>
                                    <th>Содержание</th>
                                    <th>Автор</th>
                                    <th>Категория</th>
                                    <th>Теги</th>
                                    <th>Опубликован?</th>
                                    <th>Действие</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($posts as $post)
                                    <tr>
                                        <td>{{ $post->title }}</td>
                                        <td>{{ str_limit($post->body, 60) }}</td>
                                        <td>{{ $post->user->name }}</td>
                                        <td>{{ $post->category->name }}</td>
                                        <td>{{ $post->tags->implode('name', ', ') }}</td>
                                        <td>{{ $post->published }}</td>
                                        <td>
                                            @if (Auth::user()->is_admin)
                                                @php
                                                    if($post->published == 'Yes') {
                                                        $label = 'Изъять';
                                                    } else {
                                                        $label = 'Опубликовать';
                                                    }
                                                @endphp
                                                <a href="{{ url("/admin/posts/{$post->id}/publish") }}" data-method="PUT" data-token="{{ csrf_token() }}" data-confirm="Are you sure?" class="btn btn-xs btn-warning">{{ $label }}</a>
                                            @endif
                                            <a href="{{ url("/admin/posts/{$post->id}") }}" class="btn btn-xs btn-success">Показать</a>
                                            <a href="{{ url("/admin/posts/{$post->id}/edit") }}" class="btn btn-xs btn-info">Изменить</a>
                                            <a href="{{ url("/admin/posts/{$post->id}") }}" data-method="DELETE" data-token="{{ csrf_token() }}" data-confirm="Are you sure?" class="btn btn-xs btn-danger">Удалить</a>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="5">Не найдено постов.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>

                        {!! $posts->links() !!}

                    </div>
                </div>
            </div>

        </div>
    </div>
@endsection
