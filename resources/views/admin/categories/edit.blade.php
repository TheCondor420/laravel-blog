@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2>
                            Изменить категорию

                            <a href="{{ url('admin/categories') }}" class="btn btn-default pull-right">Назад</a>
                        </h2>
                    </div>

                    <div class="panel-body">
                        {!! Form::model($category, ['method' => 'PUT', 'url' => "/admin/categories/{$category->id}", 'class' => 'form-horizontal', 'role' => 'form']) !!}

                            @include('admin.categories._form')

                            <div class="form-group">
                                <div class="col-md-8 col-md-offset-2">
                                    <button type="submit" class="btn btn-primary">
                                        Изменить
                                    </button>
                                </div>
                            </div>

                        {!! Form::close() !!}
                    </div>
                </div>
            </div>

        </div>
    </div>
@endsection
