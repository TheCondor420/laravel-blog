@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">

            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Посты</div>

                    <div class="panel-body">
                        <h1>{{ $posts }}</h1>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Коменты</div>

                    <div class="panel-body">
                        <h1>{{ $comments }}</h1>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Теги</div>

                    <div class="panel-body">
                        <h1>{{ $tags }}</h1>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Категории</div>

                    <div class="panel-body">
                        <h1>{{ $categories }}</h1>
                    </div>
                </div>
            </div>

        </div>
    </div>
@endsection
