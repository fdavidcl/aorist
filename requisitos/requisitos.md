---
title: Especificación de requisitos
subtitle: Sistema de información para agencia de publicidad
author:
  - Óscar Bermúdez Garrido
  - Luis Castro Martín
  - Francisco David Charte Luque
  - José Carlos Entrena Jiménez
  - José Ramón Trillo Vilchez
lang: spanish
toc: yes
numbersections: yes

mainfont: Droid Serif
---

\pagebreak

<!--
# Introducción

## Propósito de este documento

En este documento se describen los requisitos funcionales y de datos y las restricciones semánticas del sistema de información dirigido a agencias de publicidad descrito en la sección \ref{desc}.

## Convenciones y notación

Utilizaremos la notación propuesta en la asignatura:

- RF: Requisito funcional
- RD: Requisito de datos
- RS: Restricción semántica

## Ámbito de aplicación



## Documentos relacionados y referencias

- Requisitos de Gestión de Anunciantes
- Requisitos de Gestión de Medios
- Requisitos de Anuncios
- Requisitos de Transacciones Económicas
- Requisitos de Audiencia

# Descripción general
\label{desc}

## Sistema de información

El sistema de información irá dirigido a una empresa de publicidad, principalmente enfocada a la publicidad online. Esta empresa serviría de enlace entre entidades (empresas o particulares) que quieran anunciar sus productos y medios que ofertan emplazamientos publicitarios. De esta forma, la empresa se encargaría de ofertar distintos tipos de anuncios, situados en medios dirigidos a distintos segmentos de mercado, a las empresas anunciantes, y por otro lado de gestionar y añadir nuevos medios donde mostrar dichos anuncios.

El sistema abarca las siguientes áreas funcionales:

- Gestión de anunciantes
- Gestión de medios
- Anuncios
- Transacciones económicas
- Audiencia

## Usuarios del sistema

Tendremos como usuarios del sistema a distintos tipos de empleados de la empresa de publicidad, que accederán a las áreas funcionales convenientes según su rol:

- Los encargados de contabilidad utilizarán las funcionalidades de transacciones
- Los trabajadores que se encarguen de contrataciones con empresas gestionarán las áreas de anunciantes y medios
- Los empleados que gestionen los productos de la agencia publicitaria administrarán las áreas de anuncios y audiencia

## Entorno de operación

El sistema se alojará en un servidor web en la red interna de la empresa. El servidor utilizará Ruby on Rails para ejecutar la aplicación.

## Restricciones y suposiciones

Las empresas anunciantes y los medios no pueden acceder directamente a este sistema.
-->

# Funcionalidades del sistema

## Funcionalidad "Gestión de anunciantes"

### Descripción
La gestión de anunciantes permite registras nuevas empresas anunciantes que quieren promocionar sus productos mediante anuncios. Cada anuncio está dirigido a uno o varios sectores del mercado.


### Requisitos funcionales

\rf{Dar de alta una empresa anunciante}
\label{rf1}

Actor:
Administrador

Entrada: RD2 (\ref{rd2})

Procesamiento:
Crear nueva empresa, con identificador (RD1 (\ref{rd1}))

Salida:
Ninguna

\rf{Dar de baja una empresa anunciante}
\label{rf2}

Actor:
Administrador

Entrada:
ID empresa

Procesamiento:
Eliminar los datos almacenados con dicha empresa

Salida:
Ninguna

\rf{Realizar contrato}

Actor:
Administrador

Entrada:
 - ID empresa
 - ID's audiencias

Procesamiento:
Se establece un contrato que vincula una empresa a un conjunto de audiencias

Salida:
Ninguna

\rf{Mostrar los datos de una empresa anunciante}

Actor:
Administrador

Entrada:
ID empresa

Procesamiento:
Buscar y mostrar los datos de la empresa anunciante.

Salida: RD1 (\ref{rd1})


## Funcionalidad "Gestión de medios"
## Funcionalidad "Anuncios"

### Descripción

Incluye la creación de distintos tipos de anuncios que después se podrán ofertar a los anunciantes. La gestión de anuncios incluye recuentos de impresiones y clicks, y permite reunir estadísticas sobre el éxito de los anuncios en cada medio.

### Requisitos funcionales

\rf{Dar de alta nuevo tipo de anuncio}
\rf{Eliminar tipo de anuncio}
\rf{Dar de alta nuevo anuncio}
\rf{Obtener datos de anuncio}
\rf{Modificar anuncio}
\rf{Eliminar anuncio}

## Funcionalidad "Transacciones económicas"
## Funcionalidad "Audiencia"

# Requisitos de datos

\rd{}

# Restricciones semánticas
