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

\rf{Dar de alta un nuevo medio}

Actor:  
Administrador. 

Entrada:  
autoref{rdmedio1}

Procesamiento:  
Crear un nuevo medio. 

Salida:  
Ninguna. 

\rf{Dar de baja un medio}

Actor:  
Administrador. 

Entrada:  
Identificador del medio a dar de baja. 

Procesamiento:  
Eliminamos los datos del medio, aunque conservamos lo relacionado con contabilidad. 

Salida:  
Ninguna. 

\rf{Añadir una temática al medio}
 
Actor:  
Administrador. 

Entrada:  
Nueva temática.

Procesamiento:  
Añadir la temática a los datos del medio. 

Salida:  
Ninguna. 

\rf{Eliminar una temática de un medio}

Actor:  
Administrador. 

Entrada:  
Temática. 

Procesamiento:  
Si hay más de una temática en el medio, se muestran y se da a elegir una a eliminar. 

Salida:  
Ninguna. 


\rf{Mostrar los datos de un medio}

Actor:  
Administrador.

Entrada:  
Identificador (o identificadores) del medio. 

Procesamiento:  
Buscar y mostrar los datos de los medios requeridos. 

Salida:  
Datos de los medios. 

\rf{Realizar contrato con un medio}

Actor:  
Administrador. 

Entrada:  
\autoref{rdmedio3}
   
Procesamiento:  
Crear el contrato en el sistema.

Salida:  
Ninguna. 
   

## Requisitos de datos

\rd{Datos almacenados de Medio}
\label{rdmedio1}

   - Identificador
   - Nombre (cadena de caracteres)
   - Sitio web (cadena de caracteres)
   - Temática (lista de cadenas de caracteres)
   - Datos fiscales (lista de cadenas de caracteres)

\rd{Datos necesarios para almacenar un Medio}
\label{rdmedio2}

   - Nombre
   - Sitio web 
   - Temática
   - Datos fiscales
   
\rd{Datos necesarios para crear un contrato con un medio}
\label{rdmedio3}

   - Identificador del medio
   - Fecha (cadena de caracteres)
   - Duración del contrato (cadena de caracteres)
   - Importe (número real)
   - Descripción (cadena de caracteres)


## Restricciones semánticas

\rs{Temática}
Todo medio tendrá al menos una temática asociada, pudiendo tener varias. 

