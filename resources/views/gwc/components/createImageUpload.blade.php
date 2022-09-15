<div class="col-md-12">
    <label>{{ $label }}</label>
    @if(isset($required)) <span style="color: red">*</span> @endif
    <div class="custom-file @if($errors->has($name)) is-invalid @endif">
        <input type="file"
               class=" @if($errors->has($name)) is-invalid @endif"
               id="{{$name}}"
               name="{{$name}}"
               @if(isset($required)) required @endif
        >
        <label class="custom-file-label" for="{{$name}}">
            Choose File
        </label>
    </div>
    @if($errors->has($name))
        <div class="invalid-feedback">{{ $errors->first($name) }}</div>
    @endif
</div>