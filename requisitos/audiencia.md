---
title: "Requisitos de Audiencia"
author: "Luis Castro Martín"
numbersections: true
language: spanish

mainfont: Droid Serif
header-includes:
  - \setcounter{rf}{22}
  - \setcounter{rd}{12}
  - \setcounter{rs}{5}
---

# Requisitos funcionales

\rf{Insertar un nuevo tipo de audiencia}

Actor:  
Empleado gestor de productos

Entrada:  
\autoref{rdaudi}

Procesamiento:  
Crear una nueva entrada de tipo de audiencia.

Salida:  
Ninguna.

\rf{Asociar un medio frecuentado por una audiencia}

Actor:  
Empleado gestor de productos

Entrada:  
Identificador del medio a asociar con la audiencia, identificador de la audiencia.

Procesamiento:  
Añadir el identificador de este medio a la lista de medios asociados de la audiencia.

Salida:  
Ninguna.

\rf{Asociar una audiencia preferida por un anunciante}

Actor:  
Empleado gestor de productos

Entrada:  
Identificador del anunciante a asociar con la audiencia, identificador de la audiencia.

Procesamiento:  
Añadir el identificador de este anunciante a la lista de medios asociados de la audiencia.

Salida:  
Ninguna.

\rf{Desasociar un medio frecuentado por una audiencia}

Actor:  
Empleado gestor de productos

Entrada:  
Identificador del medio asociado con la audiencia, identificador de la audiencia.  

Procesamiento:  
Eliminar el identificador de este medio de la lista de medios asociados de la audiencia.

Salida:  
Ninguna.

\rf{Desasociar una audiencia preferida por un anunciante}

Actor:  
Empleado gestor de productos

Entrada:  
Identificador del anunciante asociado con la audiencia, identificador de la audiencia.  

Procesamiento:  
Eliminar el identificador de este anunciante de la lista de medios asociados de la audiencia.

Salida:  
Ninguna.

\rf{Mostrar información sobre las audiencias disponibles}

Actor:  
Empleado gestor de productos

Entrada:  
Ninguna.

Procesamiento:  
Recolectar la información pertinente sobre los medios y anunciantes de cada una y generar un resumen de audiencias.

Salida:  
Datos de las audiencias.

# Requisitos de datos

\rd{Datos almacenados de Audiencia}
\label{rdaudi}

   - Descripción
   - Medios que frecuenta
   - Anunciantes interesados

# Restricciones semánticas

\rs{Medios y anunciantes}
Los medios y los anunciantes asociados deben pertenecer a la base de datos del sistema.
