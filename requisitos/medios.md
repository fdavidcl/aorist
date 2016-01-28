---
title: "Requisitos de Gestión de Medios"
author: "José Carlos Entrena Jiménez"
numbersections: true
language: spanish

mainfont: Droid Serif
header-includes:
  - \setcounter{rf}{4}
  - \setcounter{rd}{3}
  - \setcounter{rs}{1}
---

# Requisitos funcionales

\rf{Dar de alta un nuevo medio}

Actor:  
Empleado encargado de contrataciones.

Entrada:  
\autoref{rdmedio1}

Procesamiento:  
Crear un nuevo medio.

Salida:  
Ninguna.

\rf{Dar de baja un medio}

Actor:  
Empleado encargado de contrataciones

Entrada:  
Identificador del medio a dar de baja.

Procesamiento:  
Eliminamos los datos del medio, aunque conservamos lo relacionado con contabilidad.

Salida:  
Ninguna.

\rf{Mostrar los datos de un medio}

Actor:  
Empleado encargado de contrataciones.

Entrada:  
Identificador del medio.

Procesamiento:  
Buscar y mostrar los datos de los medios requeridos y sus audiencias y contratos asociados (\autoref{rdmedio3}).

Salida:  
Datos de los medios.

\rf{Realizar contrato con un medio}

Actor:  
Empleado encargado de contrataciones.

Entrada:  
\autoref{rdmedio3}

Procesamiento:  
Crear el contrato en el sistema.

Salida:  
Ninguna.


# Requisitos de datos

\rd{Datos almacenados de Medio}
\label{rdmedio1}

   - Identificador
   - Nombre (cadena de caracteres)
   - Sitio web (cadena de caracteres)
   - Datos fiscales (lista de cadenas de caracteres)

\rd{Datos necesarios para almacenar un Medio}
\label{rdmedio2}

   - Nombre
   - Sitio web
   - Datos fiscales

\rd{Datos almacenados de un contrato con un medio}
\label{rdmedio3}

   - ID contrato
   - ID medio
   - Fecha inicio
   - Fecha finalización
   - Importe (número real)
   - Descripción (cadena de caracteres)


# Restricciones semánticas

\rs{Contratos}
Los contratos deben contener, al menos, el identificador del contrato, una fecha, el importe y el identificador del medio.

\rs{Contratos}
La fecha de finalización de un contrato será posterior a la fecha de inicio.
