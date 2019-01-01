<div class="reporte">
    <h1 style="display: flex; align-items: center"> Reporte general del registro de tiendas.</h1>
</div>

<table border="1">
    <thead>
        <tr>
            <td>ID</td>
            <td>CALLE</td>
            <td>NUMERO</td>
            <td>PAIS</td>
            <td>ENTIDAD</td>
            <td>ALCALDIA</td>
            <td>CODIGO POSTAL</td>
        </tr>
    </thead>
    <tbody>
    @foreach( $stores as $store )
        <tr>
            <td>{{$store->ID}}</td>
            <td>{{$store->CALLE}}</td>
            <td>{{$store->NUMERO}}</td>
            <td>{{$store->PAIS}}</td>
            <td>{{$store->ENTIDAD}}</td>
            <td>{{$store->ALCALDIA}}</td>
            <td>{{$store->CODIGO_POSTAL}}</td>
        </tr>
    @endforeach
    </tbody>
</table>


