---
title: "Requisitos de Anuncios"
author:
  - Francisco David Charte Luque
lang: spanish
numbersections: yes

mainfont: Droid Serif
header-includes:
  - \setcounter{rf}{8}
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

\rf{Obtener datos de anuncio}
Actor:  
Empleado gestor de productos

Entrada:  
Identificador 

Procesamiento:  
Crear nuevo tipo de anuncio con identificador (\autoref{rdtipo})

Salida:  
Ninguna

\rf{Modificar anuncio}
Actor:  
Empleado gestor de productos

Entrada:  
\autoref{rdtipo}

Procesamiento:  
Crear nuevo tipo de anuncio con identificador (\autoref{rdtipo})

Salida:  
Ninguna

\rf{Eliminar anuncio}
Actor:  
Empleado gestor de productos

Entrada:  
\autoref{rdtipo}

Procesamiento:  
Crear nuevo tipo de anuncio con identificador (\autoref{rdtipo})

Salida:  
Ninguna


## Requisitos de datos

\rd{Datos almacenados para Tipo de Anuncio}
\label{rdtipo}

- ID tipo de anuncio
-

\rd{Datos almacenados para Anuncio}
\label{rdanuncio}

- ID anuncio
- Tipo de anuncio [\autoref{rdtipo}]
- Empresa asociada [RD]
- Contenido [cadena de caracteres]
- URL al que dirigir [cadena de caracteres/nulo]
