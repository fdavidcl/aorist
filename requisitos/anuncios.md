---
title: "Requisitos de Anuncios"
author:
  - Francisco David Charte Luque
lang: spanish
numbersections: yes

mainfont: Droid Serif
header-includes:
  - \setcounter{rf}{10}
---

# Funcionalidad "Anuncios"

## Descripción

Incluye la creación de distintos tipos de anuncios que después se podrán ofertar a los anunciantes. La gestión de anuncios incluye recuentos de impresiones y clicks, y permite reunir estadísticas sobre el éxito de los anuncios en cada medio.

## Requisitos funcionales

\rf{Crear nuevo tipo de anuncio}
Actor:  
Empleado gestor de productos

Entrada:  
\autoref{rdtipo}

Procesamiento:  
Crear nuevo tipo de anuncio con identificador (\autoref{rdtipo})

Salida:  
Ninguna

\rf{Eliminar tipo de anuncio}
Actor:  
Empleado gestor de productos

Entrada:  
Identificador del tipo de anuncio (\autoref{rdtipo})

Procesamiento:  
Buscar y eliminar tipo de anuncio con el identificador especificado

Salida:  
Ninguna

\rf{Crear nuevo anuncio}
Actor:  
Empleado gestor de productos

Entrada:  
\autoref{rdanuncio}

Procesamiento:  
Crear nuevo anuncio con identificador (\autoref{rdanuncio})

Salida:  
Ninguna

\rf{Obtener anuncio}
Actor:  
Empleado gestor de productos

Entrada:  
Identificador del anuncio (\autoref{rdanuncio})

Procesamiento:  
Buscar y recuperar los valores de los campos de \autoref{rdanuncio}

Salida:  
Datos de tipo, contenido, URL y nombre e identificador de la empresa asociada.

\rf{Modificar anuncio}
Actor:  
Empleado gestor de productos

Entrada:  
Identificador y nuevos valores para datos modificables (tipo de anuncio, contenido y URL) de \autoref{rdanuncio}

Procesamiento:  
Actualizar los campos dados por la entrada en el anuncio especificado

Salida:  
Ninguna

\rf{Eliminar anuncio}
Actor:  
Empleado gestor de productos

Entrada:  
Identificador del anuncio (\autoref{rdanuncio})

Procesamiento:  
Buscar y eliminar el anuncio con el identificador dado en la entrada

Salida:  
Ninguna


## Requisitos de datos

\rd{Datos almacenados para Tipo de Anuncio}
\label{rdtipo}

- ID tipo de anuncio
- Acepta formato multimedia [valor booleano]
- Tamaño [pareja de enteros]
- Puede enlazar [valor booleano]

\rd{Datos almacenados para Anuncio}
\label{rdanuncio}

- ID anuncio
- Tipo de anuncio [\autoref{rdtipo}]
- Empresa asociada [RD]
- Contenido [cadena de caracteres]
- URL al que dirigir [cadena de caracteres/nulo]
