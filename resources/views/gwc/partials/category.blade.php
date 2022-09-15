@foreach($children as $category)
    <option value="{{ $category->id }}" @if($category->singlepage) disabled @endif>
        @for ($i = 0; $i <= $level; $i++)
            -
        @endfor
        {{ $category->title }}
    </option>
    @if(count($category->childrenRecursive) > 0)
        @include('gwc.partials.category',['children' => $category->childrenRecursive, 'level'=>($level+1)])
    @endif
@endforeach
