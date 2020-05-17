<ul class="nav navbar-nav">
    <li><a href="{{ url('admin/posts') }}">Посты</a></li>
    <li><a href="{{ url('admin/categories') }}">Категории</a></li>
    <li><a href="{{ url('admin/comments') }}">Комменты</a></li>
    <li><a href="{{ url('admin/tags') }}">Теги</a></li>

    @if (Auth::user()->is_admin)
        <li><a href="{{ url('admin/users') }}">Пользователи</a></li>
    @endif
</ul>
