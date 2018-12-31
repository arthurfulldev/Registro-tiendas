# TiendaBNN
Requerimiento Backend BNN


## Tecnologias implementadas.
* PHP 5.3.36
* Laravel 5.3.30

## Instalacion
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