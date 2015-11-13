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
\ref{rdtipo}

Procesamiento:  
Crear nuevo tipo de anuncio con identificador (\ref{rdtipo})

Salida:  
Ninguna

\rf{Eliminar tipo de anuncio}
\rf{Crear nuevo anuncio}
\rf{Obtener datos de anuncio}
\rf{Modificar anuncio}
\rf{Eliminar anuncio}

## Requisitos de datos

\rd{Datos almacenados para Tipo de Anuncio}
\label{rdtipo}

* ID tipo de anuncio
* 
