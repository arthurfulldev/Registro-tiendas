# TiendaBNN ~ Requerimiento Backend BNN

## Objetivo.
Cubrir con el requerimiento solicitado donde se lista:
* Llenar 5 tablas
* Api restfull ( `GET`, `POST`, `PUT`, `DELETE`, `SHOW`, `EDIT`, `INDEX` ).
* Aplicativo tienda.
* Altas, baja, modificaciones reporte general.

Se alcanzó el objetivo. En la sección evidencias se muestra la respuesta de cada una de las acciones http rest.

## Tecnologias implementadas.
* PHP 5.3.36
* Laravel 5.3.30

## Instalacion de la api
* clonar de github
```
    git clone https://github.com/arthurfulldev/TiendaBNN.git
```
* actualizar vendor 
```
    composer install
```
## Query Mysql all bd
```
SELECT
    s.id,
    s.name   'TIENDA',
    s.logo   'LOGO',
    a.street 'CALLE',
    a.number 'NUMERO',
    c.name   'PAIS',
    st.name  'ESTADO',
    t.name   'ALCALDIA',
    t.zip    'CODIGO POSTAL'
FROM stores s
	INNER JOIN addresses a ON a.id = s.address_id
    INNER JOIN countries c ON c.id = a.country_id
    INNER JOIN states st ON st.id = a.state_id
    INNER JOIN thownships t ON t.id = a.thownship_id;
```
### schema

La base consta de 5 tablas a rellenar: stores, addresses, contries, states, thownships, las otras tres son creadas por laravel para la autentificacion. **Nota:** no se implemento autentificación para el aplicativo.

![schema](https://raw.githubusercontent.com/arthurfulldev/TiendaBNN/master/evidencias/schema.png "Schema de la base completo")
*__fig. 1: data base shcema.__*

### Antes de iniciar correr las migraciones y el seed
Comando para crear las migraciones y agregar el registro inicial a la base de datos
```
    php artisan migrate --seed
```

## Rest api routes
![logo](https://raw.githubusercontent.com/arthurfulldev/TiendaBNN/master/evidencias/restroutes.png "rutas restfull")
*__fig. 2: Lista de rutas del aplicativo.__*

## Pruebas Evidencias.

### json mock postman
```
{
	"logo" : "LOGO PUT",
	"nombre_tienda" : "TIENDA NAME PUT",
	"calle": "CALLE PUT",
	"numero": "NUMERO PUT",
	"pais": "PAIS PUT",
	"entidad": "ENTIDAD PUT",
	"alcaldia": "ALCALDIA PUT",
	"cp": "99999"
}
```

### Generacion de reporte
Se agrego una ruta especial para reportes: `api/report` al dirigirse a esta ruta la api retorna un archivo PDF con el listado de todas las tiendas registradas.


### evidencias
#### GET
![get](https://raw.githubusercontent.com/arthurfulldev/TiendaBNN/master/evidencias/GET.png "rutas restfull")
*__fig. 3: evidencia 3.__*

#### POST
![post](https://raw.githubusercontent.com/arthurfulldev/TiendaBNN/master/evidencias/POST.png "rutas restfull")
*__fig. 4: evidencia 4.__*

#### PUT
![put](https://raw.githubusercontent.com/arthurfulldev/TiendaBNN/master/evidencias/PUT.png "rutas restfull")
*__fig. 5: evidencia 5.__*

#### DELETE
![delete](https://raw.githubusercontent.com/arthurfulldev/TiendaBNN/master/evidencias/DELETE.png "rutas restfull")
*__fig. 6: evidencia 6.__*

#### SHOW
![show](https://raw.githubusercontent.com/arthurfulldev/TiendaBNN/master/evidencias/SHOw.png "rutas restfull")
*__fig. 7: evidencia 7.__*

---

#### BD
![show](https://raw.githubusercontent.com/arthurfulldev/TiendaBNN/master/evidencias/BD.png "evidencia registros bd")
*__fig. 8: evidencia 8.__*

---

#### Reporte
![Peticion PDF](https://raw.githubusercontent.com/arthurfulldev/TiendaBNN/master/evidencias/peticion_reporte.png.png "evidencia registros bd")
*__fig. 8: evidencia 8.__*

![Reporte PDF](https://raw.githubusercontent.com/arthurfulldev/TiendaBNN/master/evidencias/el_pdf.png.png "evidencia registros bd")
*__fig. 8: evidencia 8.__*