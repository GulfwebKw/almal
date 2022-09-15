@foreach($children as $cate)
    <option  @if(isset($singlepage)&&$cate->singlepage && $cate->id !=$category_id) disabled @endif
    @if( isset($notSelectable) && in_array($cate->id, $notSelectable->toArray())) disabled @endif value="{{ $cate->id }}" @if($cate->id==$category_id) selected @endif>
        @for ($i = 0; $i <= $level; $i++)
            -
        @endfor
        {{ $cate->title }}
    </option>
    @if(count($cate->childrenRecursive) > 0)
        @include('gwc.partials.Editcategory',['children' => $cate->childrenRecursive, 'parent_id'=>$parent_id, 'notSelectable'=>isset($notSelectable)?$notSelectable:null,'level'=>($level+1), 'category_id'=>$category_id])
    @endif
@endforeach
