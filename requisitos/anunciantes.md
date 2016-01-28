---
title: "Requisitos de Gestión de Anunciantes"
author: "Óscar Bermúdez Garrido"
numbersections: true
language: spanish

mainfont: Droid Serif
header-includes:
  - \setcounter{rf}{0}
  - \setcounter{rd}{0}
  - \setcounter{rs}{0}
---

# Requisitos funcionales

\rf{Dar de alta una empresa anunciante}

Actor:  
Empleado encargado de contrataciones

Entrada:  
\autoref{rdanun2}

Procesamiento:  
Crear nueva empresa, con identificador RD1

Salida:  
Ninguna

\rf{Dar de baja una empresa anunciante}

Actor:  
Empleado encargado de contrataciones

Entrada:  
ID empresa

Procesamiento:  
Eliminar los datos almacenados con dicha empresa

Salida:  
Ninguna

\rf{Realizar contrato}

Actor:  
Empleado encargado de contrataciones

Entrada:  

 - ID empresa
 - ID's audiencias

Procesamiento:  
Se establece un contrato que vincula una empresa a un conjunto de audiencias

Salida:  
Ninguna

\rf{Mostrar los datos de una empresa anunciante}

Actor:  
Empleado encargado de contrataciones

Entrada:  
ID empresa

Procesamiento:  
Buscar y mostrar los datos de la empresa anunciante y sus audiencias y contratos asociados (\autoref{rdanun3}).

Salida:  
\autoref{rdanun1}

# Requisitos de datos

\rd{Datos almacenados de empresa anunciante}
\label{rdanun1}

 - ID empresa anunciante
 - Nombre de la empresa anunciante (cadena de caracteres)
 - Sitio web (cadena de caracteres)
 - Lista de contratos firmados (cadena de ID's contratos)

\rd{Datos requeridos para registrar una empresa anunciante}
\label{rdanun2}

 - Nombre de la empresa anunciante 	(cadena de caracteres)
 - Sitio web (cadena de caracteres)

\rd{Datos almacenados de un contrato con un anunciante}
\label{rdanun3}

 - ID contrato
 - ID empresa anunciante
 - Fecha inicio
 - Fecha finalización
 - Importe (numero real)
 - Descripción (cadena de caracteres)

# Restricciones semánticas

\rs{Contratos}
Los contratos deben contener, al menos, el identificador del contrato, una fecha, el importe y el identificador del anunciante.

\rs{Contratos}
La fecha de finalización de un contrato será posterior a la fecha de inicio.
