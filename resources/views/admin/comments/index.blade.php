@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2>
                            Комменты

                            <a href="{{ url('admin/comments/create') }}" class="btn btn-default pull-right">Создать новый</a>
                        </h2>
                    </div>

                    <div class="panel-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Пост</th>
                                    <th>Коммент</th>
                                    <th>Действие</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($comments as $comment)
                                    <tr>
                                        <td>{{ $comment->post->title }}</td>
                                        <td>{{ $comment->body }}</td>
                                        <td>
                                            <a href="{{ url("/admin/comments/{$comment->id}") }}" data-method="DELETE" data-token="{{ csrf_token() }}" data-confirm="Are you sure?" class="btn btn-xs btn-danger">Удалить</a>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="2">Не найдено комментов.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>

                        {!! $comments->links() !!}

                    </div>
                </div>
            </div>

        </div>
    </div>
@endsection
