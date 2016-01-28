---
title: "Requisitos de Anuncios y Espacios"
author:
  - Francisco David Charte Luque
lang: spanish
numbersections: yes

mainfont: Droid Serif
header-includes:
  - \setcounter{rf}{8}
  - \setcounter{rd}{6}
  - \setcounter{rs}{2}
---

# Requisitos funcionales

\rf{Crear nuevo espacio publicitario}
Actor:  
Empleado gestor de productos

Entrada:  
\autoref{rdtipo2}

Procesamiento:  
Crear nuevo espacio con identificador (\autoref{rdtipo})

Salida:  
Ninguna

\rf{Eliminar espacio publicitario}
Actor:  
Empleado gestor de productos

Entrada:  
Identificador del espacio (\autoref{rdtipo})

Procesamiento:  
Buscar y eliminar espacio con el identificador especificado

Salida:  
Ninguna

\rf{Crear nuevo anuncio}
Actor:  
Empleado gestor de productos

Entrada:  
\autoref{rdanuncio2}

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
Datos de contenido, URL y nombre e identificador de la empresa asociada.

\rf{Modificar anuncio}
Actor:  
Empleado gestor de productos

Entrada:  
Identificador y nuevos valores para datos modificables (tipo de anuncio, contenido y URL) de \autoref{rdanuncio}

Procesamiento:  
Actualizar los campos dados por la entrada en el anuncio especificado

Salida:  
Ninguna

\rf{Asignar anuncio a espacio publicitario}
Actor:  
Empleado gestor de productos

Entrada:  
Identificador de \autoref{rdanuncio} y del espacio al que asignar (\autoref{rdtipo})

Procesamiento:  
Relaciona el anuncio y el espacio dados

Salida:  
Ninguna

\rf{Mostrar anuncios puestos en marcha}
Actor:  
Empleado gestor de productos

Entrada:  
Ninguna

Procesamiento:  
Busca anuncios y espacios que estén relacionados

Salida:  
Datos de los anuncios (\autoref{rdanuncio}) y espacios (\autoref{rdtipo}) relacionados

\rf{Eliminar anuncio}
Actor:  
Empleado gestor de productos

Entrada:  
Identificador del anuncio (\autoref{rdanuncio})

Procesamiento:  
Buscar y eliminar el anuncio con el identificador dado en la entrada

Salida:  
Ninguna


# Requisitos de datos

\rd{Datos almacenados para Espacio publicitario}
\label{rdtipo}

- ID espacio
- Medio asociado [RD 4]
- Acepta formato multimedia [valor booleano]
- Tamaño [pareja de enteros]
- Puede enlazar [valor booleano]

\rd{Datos almacenados para Anuncio}
\label{rdanuncio}

- ID anuncio
- Empresa asociada [RD 1]
- Contenido [cadena de caracteres]
- URL al que dirigir [cadena de caracteres/nulo]

\rd{Datos requeridos para crear Espacio publicitario}
\label{rdtipo2}

- ID espacio
- Acepta formato multimedia [valor booleano]
- Tamaño [pareja de enteros]
- Puede enlazar [valor booleano]

\rd{Datos requeridos para crear Anuncio}
\label{rdanuncio2}

- ID anuncio
- Empresa asociada [RD 1]
- Contenido [cadena de caracteres]
- URL al que dirigir [cadena de caracteres/nulo]

# Restricciones semánticas

\rs{Espacios y anuncios}

A un espacio publicitario sólo se puede asignar un anuncio, pero un anuncio se puede asignar a más de un espacio.

\rs{Anuncios y anunciantes}

Un anuncio *debe* asociarse con una (y sólo una) anunciante. *Puede* haber varios anuncios asociados
al mismo anunciante.

\rs{Anuncios y espacios incompatibles}

No se pueden asignar anuncios a espacios incompatibles (anuncios con URL/contenido multimedia a espacios que no lo permitan).
