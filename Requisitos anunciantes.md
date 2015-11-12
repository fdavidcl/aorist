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

### RF1: Dar de alta una empresa anunciante

Actor:
Administrador

Entrada:
RD-2

Procesamiento:
Crear nueva empresa, con identificador(RD-1)

Salida:
Ninguna

### RF2: Dar de baja una empresa anunciante

Actor:
Administrador

Entrada:
ID empresa

Procesamiento:
Eliminar los datos almacenados con dicha empresa

Salida:
Ninguna

### RF3: Realizar contrato

Actor:
Administrador

Entrada:
 - ID empresa
 - ID's audiencias

Procesamiento:
Se establece un contrato que vincula una empresa a un conjunto de audiencias

Salida:
Ninguna

### RF4: Mostrar los datos de una empresa anunciante

Actor:
Administrador

Entrada:
ID empresa

Procesamiento:
Buscar y mostrar los datos de la empresa anunciante.

Salida:
RD1

## Requisitos de datos

### RD1: Datos almacenados de empresa anunciante
 - ID empresa anunciante
 - Nombre de la empresa anunciante [cadena de caracteres]
 - Sitio web [cadena de caracteres]
 - Lista de contratos firmados [cadena de ID's contratos]

### RD2: Datos requeridos para registrar una empresa anunciante
 - Nombre de la empresa anunciante 	[cadena de caracteres]
 - Sitio web [cadena de caracteres]

### RD3: Datos almacenados de los contratos
 - ID contrato
 - ID empresa anunciante
 - ID's audiencias [cadena de ID's audiencias]

## Restricciones semánticas

### RS1: Contratos
Los contratos deben contener, al menos, una audiencia.

