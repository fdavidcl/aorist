---
title: "Requisitos de Transacciones Económicas"
author: "José Ramón Trillo Vílchez"
numbersections: true
language: spanish
---

#Funcionalidad "Transacciones económicas"

##Descripción:
Las transacciones económicas permiten llevar todas las acciones relacionadas con la contabilidad dentro de la empresa, desde el gasto generado por la compra de espacios publicitarios a medios hasta la cantidad de dinero que nos ha dado un anunciante por contratar nuestros servicios. También nos permite ver cuáles son nuestros mejores clientes y cuáles son los espacios publicitarios donde nos hemos gastado más dinero.

##Requisitos funcionales

\rf{Compra de espacios publicitarios a medios}

Actor:
Administrador

Entrada:
RD1

Procesamiento:
Buscamos el id del medio en el contrato, buscamos el contrato usando su identificador, vemos que coincide con el del medio, restamos la cantidad a nuestra cuenta y guardamos la transacción en una tabla guardando su fecha, nombre del medio, el id anunciante, id del contrato y el valor.

Salida:
Ninguna.

\rf{Vender espacios publicitarios a anunciantes}

Actor:
Administrador

Entrada:
RD2

Procesamiento:
Buscamos el id del anunciante en el contrato, buscamos el contrato usando su identificador, vemos que coincide con el del anunciante, sumamos la cantidad a nuestra cuenta y guardamos la transacción en una tabla guardando su fecha, nombre del anunciante, el id anunciante, id del contrato y el valor.

Salida:
Ninguna.

\rf{Ver contabilidad}

Actor:
Administrador

Entrada:
Fecha (en caso de querer que imprima todo ponemos la fecha 0/0/0000).

Procesamiento:
A partir de fecha busca todos los contratos que se han hecho a partir de esta.

Salida:
Lista de nombres, tanto de medios como de anunciantes, y el valor de los contratos que se han hecho en esas fechas y posteriores.

\rf{Operaciones más exitosas}

Actor:
Administrador

Entrada:
Ninguna

Procedimiento:
Busca dentro de la tabla de los contratos los valores más altos y después, busca el nombre del anunciante asociado.

Salida:
El nombre del anunciante y el valor que tiene asociado.

\rf{Pagos más importantes}

Actor:
Administrador

Entrada:
Ninguna

Procedimiento:
Busca dentro de la tabla de contratos los valores más bajos y después, busca el nombre del medio asociado.

Salida:
El nombre del medio y el valor que tiene asociado.

\rf{Gasto por anunciantes}

Actor:
Administrador

Entrada:
ID de anunciante

Procedimiento:
Se busca dentro de la tabla de contratos el id del anunciante y sumamos todos los valores asociados a ese id.

Salida:
Valor total del dinero gastado por el anunciante.

\rf{Gasto en cada medio}

Actor:
Administrador

Entrada:
ID de medio

Procedimiento:
Se busca dentro de la tabla de contratos el id del medio y sumamos todos los valores asociados a ese id.

Salida:
Valor total que ha ganado el medio.

##Requisitos de datos

\rd{Datos requeridos cuando compras un espacio publicitario a un medio}

- ID medio 
- ID Contratos

\rd{Datos requeridos cuando vendes el espacio publicitario a un anunciante}

- ID anunciante 
- ID Contratos

## Restricciones semánticas

\rs{Contratos}

Los contratos deben contener, al menos, una audiencia, el identificador del contrato, una fecha, el precio y el identificador del medio o anunciante.