@extends('layouts.app')

@section('content')
    <h3 class="page-title">Recursos</h3>
  @if(Auth::user()->role_id == 1)
    <p>
        <a href="{{ route('recursos.create') }}" class="btn btn-success">Registrar</a>
    </p>
  @endif
    <div class="panel panel-default">
        <div class="panel-heading">
            Lista
        </div>

        <div class="panel-body">
            <table class="table table-bordered table-striped {{ count($recursos) > 0 ? 'datatable' : '' }} dt-select">
                <thead>
                    <tr>
                        <th style="text-align:center;"><input type="checkbox" id="select-all" /></th>
                        <th>Descripcion</th>
                        <th>Enlace</th>
                        @if(Auth::user()->role_id == 1)
                        <th>&nbsp;</th>
                        @endif
                    </tr>
                </thead>
                
                <tbody>
                    @if (count($recursos) > 0)
                        @foreach ($recursos as $recurso)
                            <tr data-entry-id="{{ $recurso->id }}">
                                <td></td>
                                <td>{{ $recurso->descripcion }}</td>
                                <td><a  target="_blank" href="{{ $recurso->enlace }}">{{ $recurso->enlace }}</a></td>
                                
                                
                       @if(Auth::user()->role_id == 1)        
                                  <td><a href="{{ route('recursos.edit',[$recurso->id]) }}" class="btn btn-xs btn-info">Editar</a>{!! Form::open(array(
                'style' => 'display: inline-block;',
                'method' => 'DELETE',
                'onsubmit' => "return confirm('".trans("Estas seguro?")."');",
                'route' => ['recursos.destroy', $recurso->id])) !!}
    {!! Form::submit('Eliminar', array('class' => 'btn btn-xs btn-danger')) !!}
    {!! Form::close() !!}</td>
      @endif
                            </tr>
                        @endforeach
                    @else
                        <tr>
                            <td colspan="11">No entries in table</td>
                        </tr>
                    @endif
                </tbody>
            </table>
        </div>
    </div>
@stop

  @if(Auth::user()->role_id == 1)
@section('javascript')
    <script>
        window.route_mass_crud_entries_destroy = '{{ route('recursos.mass_destroy') }}';
    </script>
@endsection
@endif