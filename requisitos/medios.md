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

\rf{Añadir una audiencia al medio}

Actor:  
Empleado encargado de contrataciones.

Entrada:  
Identificador de la nueva audiencia.

Procesamiento:  
Enlazar la audiencia con el medio.

Salida:  
Ninguna.

\rf{Eliminar una audiencia de un medio}

Actor:  
Empleado encargado de contrataciones.

Entrada:  
Identificador de la audiencia a eliminar.

Procesamiento:  
Eliminar el enlace de la audiencia y el medio.

Salida:  
Ninguna.


\rf{Mostrar los datos de un medio}

Actor:  
Empleado encargado de contrataciones.

Entrada:  
Identificador (o identificadores) del medio.

Procesamiento:  
Buscar y mostrar los datos de los medios requeridos.

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
   - Fecha 
   - Duración del contrato (cadena de caracteres)
   - Importe (número real)
   - Descripción (cadena de caracteres)


# Restricciones semánticas

\rs{Audiencia}
Todo medio tendrá al menos una audiencia asociada, pudiendo tener varias.

\rs{Contratos}
Los contratos deben contener, al menos, una audiencia, el identificador del contrato, una fecha, el precio y el identificador del medio.
