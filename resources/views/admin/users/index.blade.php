@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2>
                            Пользователи
                        </h2>
                    </div>

                    <div class="panel-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Фамилия и Имя</th>
                                    <th>Email</th>
                                    <th>Адпин?</th>
                                    <th>Кол-во постов</th>
                                    <th>Действия</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($users as $user)
                                    <tr>
                                        <td>{{ $user->name }}</td>
                                        <td>{{ $user->email }}</td>
                                        <td>{{ ($user->is_admin)?'Yes':'No' }}</td>
                                        <td>{{ $user->posts_count }}</td>
                                        <td>
                                            <a href="{{ url("/admin/users/{$user->id}") }}" data-method="DELETE" data-token="{{ csrf_token() }}" data-confirm="Are you sure?" class="btn btn-xs btn-danger">Удалить</a>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="2">Не найдено пользователей.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>

                        {!! $users->links() !!}

                    </div>
                </div>
            </div>

        </div>
    </div>
@endsection
