---
title: "Requisitos de Gestión de Anunciantes"
author: "Óscar Bermúdez Garrido"
numbersections: true
language: spanish

mainfont: Droid Serif
header-includes:
  - \setcounter{rf}{0}
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
Buscar y mostrar los datos de la empresa anunciante.

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

\rd{Datos almacenados de los contratos}
\label{rdanun3}

 - ID contrato
 - ID empresa anunciante
 - ID's audiencias (cadena de ID's audiencias)
 - Fecha
 - Precio

# Restricciones semánticas

\rs{Contratos}
Los contratos deben contener, al menos, una audiencia, el identificador del contrato, una fecha, el precio y el identificador del medio o anunciante.
