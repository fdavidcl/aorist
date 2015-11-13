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

Desarrollados en el documento asociado: *Requisitos de Gestión de Anunciantes*.

\rf{Dar de alta una empresa anunciante}
\rf{Dar de baja una empresa anunciante}
\rf{Realizar contrato}
\rf{Mostrar los datos de una empresa anunciante}

## Funcionalidad "Gestión de medios"

### Descripción
La gestión de medios permite registrar nuevos medios en los que podemos publicar anuncios. Asociado a cada medio tendremos uno o varios temas de interés, los cuales nos servirán para enviarles anuncios que se adecuen a la temática de cada medio. Debemos poder añadir nuevos medios y añadir o eliminar temáticas.

### Requisitos funcionales

Desarrollados en el documento asociado: *Requisitos de Gestión de Medios*.

\rf{Dar de alta un nuevo medio}
\rf{Dar de baja un medio}
\rf{Añadir una temática al medio}
\rf{Eliminar una temática de un medio}
\rf{Mostrar los datos de un medio}
\rf{Realizar contrato con un medio}

## Funcionalidad "Anuncios"

### Descripción

Incluye la creación de distintos tipos de anuncios que después se podrán ofertar a los anunciantes. La gestión de anuncios incluye recuentos de impresiones y clicks, y permite reunir estadísticas sobre el éxito de los anuncios en cada medio.

### Requisitos funcionales

Desarrollados en el documento asociado: *Requisitos de Anuncios*.

\rf{Dar de alta nuevo tipo de anuncio}
\rf{Eliminar tipo de anuncio}
\rf{Dar de alta nuevo anuncio}
\rf{Obtener anuncio}
\rf{Modificar anuncio}
\rf{Añadir anuncio a medio}
\rf{Eliminar anuncio}

## Funcionalidad "Transacciones económicas"


###Descripción
Las transacciones económicas permiten llevar todas las acciones relacionadas con la contabilidad dentro de la empresa, desde el gasto generado por la compra de espacios publicitarios a medios hasta la cantidad de dinero que nos ha dado un anunciante por contratar nuestros servicios. También nos permite ver cuáles son nuestros mejores clientes y cuáles son los espacios publicitarios donde nos hemos gastado más dinero.

###Requisitos funcionales

Desarrollados en el documento asociado: *Requisitos de Transacciones Económicas*.

\rf{Compra de espacios publicitarios a medios}
\rf{Vender espacios publicitarios a anunciantes}
\rf{Ver contabilidad}
\rf{Operaciones más exitosas}
\rf{Pagos más importantes}
\rf{Gasto por anunciantes}
\rf{Gasto en cada medio}

## Funcionalidad "Audiencia"

### Descripción

Los perfiles de audiencia consisten en distintos tipos de posibles compradores a los que que pueden ir dirigidos los anuncios y sobre los que pueden especializarse los medios.

### Requisitos funcionales

Desarrollados en el documento asociado: *Requisitos de Audiencia*.

\rf{Insertar un nuevo tipo de audiencia}
\rf{Asociar un medio frecuentado por una audiencia}
\rf{Asociar una audiencia preferida por un anunciante}
\rf{Desasociar un medio frecuentado por una audiencia}
\rf{Desasociar una audiencia preferida por un anunciante}
\rf{Mostrar información sobre las audiencias disponibles}

# Requisitos de datos

Desarrollados en *Requisitos de Gestión de Anunciantes*:

\rd{Datos almacenados de empresa anunciante}
\label{rdanun1}
\rd{Datos requeridos para registrar una empresa anunciante}
\label{rdanun2}
\rd{Datos almacenados de los contratos}
\label{rdanun3}

Desarrollados en *Requisitos de Gestión de Medios*:

\rd{Datos almacenados de Medio}
\label{rdmedio1}
\rd{Datos necesarios para almacenar un Medio}
\label{rdmedio2}
\rd{Datos necesarios para crear un contrato con un medio}
\label{rdmedio3}

Desarrollados en *Requisitos de Anuncios*:

\rd{Datos almacenados para Tipo de Anuncio}
\label{rdtipo}
\rd{Datos almacenados para Anuncio}
\label{rdanuncio}
\rd{Datos requeridos para crear Tipo de Anuncio}
\label{rdtipo2}
\rd{Datos requeridos para crear Anuncio}
\label{rdanuncio2}

Desarrollados en *Requisitos de Transacciones Económicas*:

\rd{Datos requeridos para comprar un espacio publicitario a un medio}
\label{rdtrans1}
\rd{Datos requeridos para vender el espacio publicitario a un anunciante}
\label{rdtrans2}

Desarrollados en *Requisitos de Audiencia*:

\rd{Datos almacenados de Audiencia}
\label{rdaudi}

# Restricciones semánticas

Desarrolladas en *Requisitos de Gestión de Anunciantes*:

\rs{Contratos}

Desarrolladas en *Requisitos de Gestión de Medios*:

\rs{Temática}

Desarrolladas en *Requisitos de Anuncios*:

\rs{Tipos y anuncios}
\rs{Anuncios y empresas}
\rs{Anuncios y medios}
\rs{Anuncios que no enlazan}

Desarrollados en *Requisitos de Audiencia*:

\rs{Medios y anunciantes}
