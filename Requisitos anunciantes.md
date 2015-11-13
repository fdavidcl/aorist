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

<h3 id="RF1">RF1: Dar de alta una empresa anunciante</h3>

Actor:
Administrador

Entrada:
[RD2](#RD2)

Procesamiento:
Crear nueva empresa, con identificador([RD1](#RD1))

Salida:
Ninguna

<h3 id="RF2">RF2: Dar de baja una empresa anunciante</h3>

Actor:
Administrador

Entrada:
ID empresa

Procesamiento:
Eliminar los datos almacenados con dicha empresa

Salida:
Ninguna

<h3 id="RF3">RF3: Realizar contrato</h3>

Actor:
Administrador

Entrada:
 - ID empresa
 - ID's audiencias

Procesamiento:
Se establece un contrato que vincula una empresa a un conjunto de audiencias

Salida:
Ninguna

<h3 id="RF4">RF4: Mostrar los datos de una empresa anunciante</h3>

Actor:
Administrador

Entrada:
ID empresa

Procesamiento:
Buscar y mostrar los datos de la empresa anunciante.

Salida:
[RD1](#RD1)

## Requisitos de datos

<h3 id="RD1">RD1: Datos almacenados de empresa anunciante</h3>
 - ID empresa anunciante
 - Nombre de la empresa anunciante [cadena de caracteres]
 - Sitio web [cadena de caracteres]
 - Lista de contratos firmados [cadena de ID's contratos]

<h3 id="RD2">RD2: Datos requeridos para registrar una empresa anunciante</h3>
 - Nombre de la empresa anunciante 	[cadena de caracteres]
 - Sitio web [cadena de caracteres]

<h3 id="RD3">RD3: Datos almacenados de los contratos</h3>
 - ID contrato
 - ID empresa anunciante
 - ID's audiencias [cadena de ID's audiencias]
 - Fecha
 - Precio

## Restricciones semánticas

<h3 id="RS1">RS1: Contratos</h3>
Los contratos deben contener, al menos, una audiencia.

