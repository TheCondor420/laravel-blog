@forelse ($post->comments as $comment)
    <div class="panel panel-default">
        <div class="panel-heading">
            {{ $comment->user->name }} говорит...

            <span class="pull-right">{{ $comment->created_at->diffForHumans() }}</span>
        </div>

        <div class="panel-body">
            <p>{{ $comment->body }}</p>
        </div>
    </div>
@empty
    <div class="panel panel-default">
        <div class="panel-heading">Не найдено!!</div>

        <div class="panel-body">
            <p>Сори! Нет комментов для этого поста.</p>
        </div>
    </div>
@endforelse
