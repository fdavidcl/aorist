---
title: "Requisitos de Audiencia"
author: "Luis Castro Martín"
numbersections: true
language: spanish
---

# Funcionalidad "Audiencia"

## Descripción 

Los perfiles de audiencia consisten en distintos tipos de posibles compradores a los que que pueden ir dirigidos los anuncios y sobre los que pueden especializarse los medios.

## Requisitos funcionales 

### RF1: Insertar un nuevo tipo de audiencia

Actor: 
Administrador. 

Entrada: 
RD1. 

Procesamiento: 
Crear una nueva entrada de tipo de audiencia. 

Salida: 
Ninguna. 

### RF2: Asociar un medio frecuentado por una audiencia

Actor: 
Administrador. 

Entrada: 
Identificador del medio a asociar con la audiencia, identificador de la audiencia.  

Procesamiento: 
Añadir el identificador de este medio a la lista de medios asociados de la audiencia. 

Salida: 
Ninguna. 

### RF3: Asociar una audiencia preferida por un anunciante
 
Actor: 
Administrador. 

Entrada: 
Identificador del anunciante a asociar con la audiencia, identificador de la audiencia.  

Procesamiento: 
Añadir el identificador de este anunciante a la lista de medios asociados de la audiencia. 

Salida: 
Ninguna. 

### RF4: Desasociar un medio frecuentado por una audiencia

Actor: 
Administrador. 

Entrada: 
Identificador del medio asociado con la audiencia, identificador de la audiencia.  

Procesamiento: 
Eliminar el identificador de este medio de la lista de medios asociados de la audiencia. 

Salida: 
Ninguna. 

### RF5: Desasociar una audiencia preferida por un anunciante
 
Actor: 
Administrador. 

Entrada: 
Identificador del anunciante asociado con la audiencia, identificador de la audiencia.  

Procesamiento: 
Eliminar el identificador de este anunciante de la lista de medios asociados de la audiencia. 

Salida: 
Ninguna.

### RF6: Mostrar información sobre las audiencias disponibles
 
Actor: 
Administrador. 

Entrada: 
Ninguna.  

Procesamiento: 
Recolectar la información pertinente sobre los medios y anunciantes de cada una y generar un resumen de audiencias. 

Salida: 
Datos de las audiencias.

## Requisitos de datos

### RD1: Audiencia 
   - Descripción
   - Medios que frecuenta
   - Anunciantes interesados

## Restricciones semánticas

### RS1: Asociaciones

Los medios y los anunciantes asociados deben pertenecer a la base de datos del sistema. 
