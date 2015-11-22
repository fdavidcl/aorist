---
title: "Requisitos de Anuncios y Espacios"
author:
  - Francisco David Charte Luque
lang: spanish
numbersections: yes

mainfont: Droid Serif
header-includes:
  - \setcounter{rf}{10}
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
Datos de tipo, contenido, URL y nombre e identificador de la empresa asociada.

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
- Acepta formato multimedia [valor booleano]
- Tamaño [pareja de enteros]
- Puede enlazar [valor booleano]

\rd{Datos almacenados para Anuncio}
\label{rdanuncio}

- ID anuncio
- Tipo de anuncio [\autoref{rdtipo}]
- Empresa asociada [RD 1]
- Contenido [cadena de caracteres]
- URL al que dirigir [cadena de caracteres/nulo]
- Medios donde se mostrará [lista de medios, RD 4]

\rd{Datos requeridos para crear Espacio publicitario}
\label{rdtipo2}

- ID espacio
- Acepta formato multimedia [valor booleano]
- Tamaño [pareja de enteros]
- Puede enlazar [valor booleano]

\rd{Datos requeridos para crear Anuncio}
\label{rdanuncio2}

- ID anuncio
- Tipo de anuncio [\autoref{rdtipo}]
- Empresa asociada [RD 1]
- Contenido [cadena de caracteres]
- URL al que dirigir [cadena de caracteres/nulo]

# Restricciones semánticas

\rs{Espacios y anuncios}

A un espacio publicitario sólo se puede asignar un anuncio, y un anuncio no se puede asignar a más de un espacio.

\rs{Anuncios y empresas}

Un anuncio *debe* asociarse con una (y sólo una) empresa. *Puede* haber varios anuncios asociados
a la misma empresa

\rs{Anuncios que no enlazan}

Un anuncio de un tipo que no puede enlazar *debe* tener URL nulo. Un anuncio de un tipo que puede enlazar *puede* tener URL nulo.
