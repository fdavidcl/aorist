---
title: "Requisitos de Gestión de Anunciantes"
author: "Óscar Bermúdez Garrido"
numbersections: true
language: spanish
---

# Funcionalidad "Gestión de Anunciantes"

## Descripción
La gestión de anunciantes permite registras nuevas empresas anunciantes que quieren promocionar sus productos mediante anuncios. Cada anuncio está dirigido a uno o varios sectores del mercado. 


## Requisitos funcionales

\rf{Dar de alta una empresa anunciante}

Actor:  
Administrador

Entrada:  
RD2

Procesamiento:  
Crear nueva empresa, con identificador RD1

Salida:  
Ninguna

\rf{Dar de baja una empresa anunciante}

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

Salida:  
RD1

## Requisitos de datos

\rd{Datos almacenados de empresa anunciante}

 - ID empresa anunciante
 - Nombre de la empresa anunciante (cadena de caracteres)
 - Sitio web (cadena de caracteres)
 - Lista de contratos firmados (cadena de ID's contratos)

\rd{Datos requeridos para registrar una empresa anunciante}
 
 - Nombre de la empresa anunciante 	(cadena de caracteres)
 - Sitio web (cadena de caracteres)

\rd{Datos almacenados de los contratos}
 
 - ID contrato
 - ID empresa anunciante
 - ID's audiencias (cadena de ID's audiencias)
 - Fecha
 - Precio

## Restricciones semánticas

\rs{Contratos}
Los contratos deben contener, al menos, una audiencia.

