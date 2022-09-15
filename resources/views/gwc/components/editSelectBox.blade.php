<label>{{$label}}</label>
<select @if(isset($multiple)&&$multiple==true) multiple @endif name="{{isset($multiple) && $multiple==true?$name . '[]':$name}}" class="form-control" @if(isset($required)) required @endif>
    @foreach($resources as $resource)
        @if(isset($none)==true)
                <option value="">None</option>
        @endif
        <option value="{{ $resource->id }}" @if($resource->id == $foreign_key) selected @endif >
            {{ $resource->title }}
        </option>
    @endforeach
</select>