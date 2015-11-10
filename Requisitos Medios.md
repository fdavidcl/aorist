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


### RF2: Añadir una temática al medio
 
Actor: 
Administrador. 

Entrada: 
Nueva temática.

Procesamiento: 
Añadir la temática a los datos del medio. 

Salida: 
Ninguna. 


## Requisitos de datos

### RD1: Datos almacenados de Medio 
   - Identificador
   - Nombre
   - Sitio web 
   - Temática 
   - Datos fiscales
   - ...

### RD2: Datos necesarios para almacenar un Medio 
   - Nombre
   - Sitio web 
   - Datos fiscales
   - ... 


## Restricciones semánticas

### RS1: Temática
Todo medio tendrá al menos una temática asociada, pudiendo tener varias. 



