---
title: "Requisitos de Gestión de Medios"
author: "José Carlos Entrena Jiménez"
numbersections: true
language: spanish
---

# Funcionalidad "Gestión de Medios"

## Descripción 

La gestión de medios permite registras nuevos medios en los que podemos publicar anuncios. Asociado a cada medio tendremos uno o varios temas de interés, los cuales nos servirán para enviarles anuncios que se adecuen a la temática de cada medio. Debemos poder añadir nuevos medios y añadir o eliminar temáticas. 

## Requisitos funcionales 

### RF1: Dar de alta un nuevo medio

Actor: 
Administrador. 

Entrada: 
RD1. 

Procesamiento: 
Crear un nuevo medio. 

Salida: 
Ninguna. 

### RF2: Dar de baja un medio

Actor: 
Administrador. 

Entrada: 
Identificador del medio a dar de baja. 

Procesamiento: 
Eliminamos los datos del medio, aunque conservamos lo relacionado con contabilidad. 

Salida: 
Ninguna. 

### RF3: Añadir una temática al medio
 
Actor: 
Administrador. 

Entrada: 
Nueva temática.

Procesamiento: 
Añadir la temática a los datos del medio. 

Salida: 
Ninguna. 

### RF4: Eliminar una temática de un medio

Actor: 
Administrador. 

Entrada: 
Temática. 

Procesamiento: 
Si hay más de una temática en el medio, se muestran y se da a elegir una a eliminar. 

Salida: 
Ninguna,


### RF5: Mostrar los datos de un medio

Actor:
Administrador.

Entrada: 
Identificador (o identificadores) del medio. 

Procesamiento: 
Buscar y mostrar los datos de los medios requeridos. 

Salida: 
Datos de los medios. 


## Requisitos de datos

### RD1: Datos almacenados de Medio 
   - Identificador
   - Nombre (cadena de caracteres)
   - Sitio web (cadena de caracteres)
   - Temática (lista de cadenas de caracteres)
   - Datos fiscales (lista de cadenas de caracteres)

### RD2: Datos necesarios para almacenar un Medio 
   - Nombre
   - Sitio web 
   - Temática
   - Datos fiscales


## Restricciones semánticas

### RS1: Temática
Todo medio tendrá al menos una temática asociada, pudiendo tener varias. 



