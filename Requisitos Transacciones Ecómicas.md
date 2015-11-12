---
title: "Requisitos de Transacciones económicas"
author: "José Ramón Trillo Vílchez"
numbersections: true
language: spanish
---

#Funcionalidad "Transacciones económicas"
##Descripción:
Las transacciones económicas permiten llevar todos los temas relacionados con la contabilidad dentro de la empresa, desde el gasto generado por la compra de espacios publicitarios hasta la cantidad de dinero que nos ha dado un anunciante. También nos permite ver cuales son nuestros mejores clientes y cuales son los espacios publicitarios donde nos hemos gastado mas dinero.

##Requisitos funcionales

###RF1: 
Compra de espacios publicitarios a medios

Actor: Administrador

Entrada: RD-1

Procesamiento:
Buscamos el id del medio en el contrato y buscamos el contrato usando su identificador, vemos que coincide con el del medio, restamos la cantidad a nuestra cuenta, guardamos la transacción en una tabla guardando su fecha, nombre del medio, el id anunciante, id del contrato y el valor 

Salida:
TRUE si la operacion ha sido exito false si hay algún error

###RF2: Vender espacios publicitarios a anunciantes

Actor: 
Administrador

Entrada:
RD-2

Procesamiento:
Buscamos el id del anunciante en el contrato y buscamos el contrato usando su identificador, vemos que coincide con el del anunciante, sumamos la cantidad a nuestra cuenta, guardamos la transacción en una tabla guardando su fecha, nombre del anunciante, el id anunciante, id del contrato y el valor 

Salida:
TRUE si la operacion ha sido exito false si hay algún error

###RF3: ver contabilidad

Actor:
Administrador

Entrada: 
fecha (en caso de querer que imprima todo ponemos la fecha 0/0/0000)

Procesamiento:
a partir de fecha busca todos los contratos que se han hecho a partir de esa fecha.

Salida:
Lista de nombres tanto de medios como de anunciantes y el valor de los contratos que se han hecho en esas fechas y posteriores

###RF4: Operaciones mas exitosas

Actor:
Administrador

Entrada: 
Ninguna

Procedimiento:
busca dentro de la tabla de los contratos los valores más altos y después busca el nombre del anunciante asociado

Salida: 
el nombre del anunciante y el valor que tiene asociado

###RF5: Pagos más importantes

Actor:
Administrador

Entrada:
Ninguna

Procedimiento:
busca dentro de la tabla de contratos los valores más bajos y después busca el nombre del medio asociado

Salida:
el nombre del medio y el valor que tiene asociado

###RF6: Gasto por anunciantes

Actor:
Administrador

Entrada: 
ID de anunciante

Procedimiento:
Se busca dentro de la tabla de contratos el id del anunciante y sumamos todos los valores asociados a ese id

Salida:
valor total del dinero gastado por cada anunciante

###RF7: Gasto en cada medio

Actor:
Administrador

Entrada:
ID de medio 

Procedimiento:
Se busca dentro de la tabla de contratos el id del medio y sumamos todos los valores asociados a ese id

Salida:
valor total que ha ganado el medio

##Requisitos de datos

###RD1:Datos requeridos cuando compras un espacio publicitario a un medio

- ID medio [lo tomamos del ID del medio]
- ID Contratos

###RD2: Datos requeridos vendes el espacio publicitario a un anunciante

- ID anunciante [lo tomamos del ID del anunciante]
- ID Contratos

## Restricciones semánticas

###RS1: Contratos

Los contratos deben contener, al menos, una audiencia, el id del contrato, una fecha, el precio y el id del medio/anunciante.
