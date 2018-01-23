@extends('layouts.app')

@section('content')
    <h3 class="page-title">Recursos</h3>
    
    {!! Form::model($recurso, ['method' => 'PUT', 'route' => ['recursos.update', $recurso->id]]) !!}

    <div class="panel panel-default">
        <div class="panel-heading">
            Editar
        </div>
   <div class="panel-body">
            
           
            
             <div class="row">
                <div class="col-xs-12 form-group">
                    {!! Form::label('descripcion', 'Descripcion*', ['class' => 'control-label']) !!}
                    {!! Form::text('descripcion', old('descripcion'), ['class' => 'form-control', 'placeholder' => '']) !!}
                    <p class="help-block"></p>
                    @if($errors->has('descripcion'))
                        <p class="help-block">
                            {{ $errors->first('descripcion') }}
                        </p>
                    @endif
                </div>
            </div>
             <div class="row">
                <div class="col-xs-12 form-group">
                    {!! Form::label('enlace', 'Enlace*', ['class' => 'control-label']) !!}
                    {!! Form::text('enlace', old('enlace'), ['class' => 'form-control', 'placeholder' => '']) !!}
                    <p class="help-block"></p>
                    @if($errors->has('enlace'))
                        <p class="help-block">
                            {{ $errors->first('enlace') }}
                        </p>
                    @endif
                </div>
            </div>
           
            
            
            </div>
    </div>

    {!! Form::submit('Aceptar', ['class' => 'btn btn-danger']) !!}
    {!! Form::close() !!}
@stop

