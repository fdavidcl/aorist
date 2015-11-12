---
title: "Sistema de información para agencia de publicidad"
subtitle: "Requisitos de gestión de anunciantes"
author: Óscar Bermúdez Garrido
numbersections: true
---

# Requisitos funcionales

## RF-1: Dar de alta una empresa anunciante
**Actor:**  
Administrador  
**Entrada:**  
RD-2  
**Procesamiento:**  
Crear nueva empresa, con identificador(RD-1)  
**Salida:**  
Ninguna  
## RF-2: Dar de baja una empresa anunciante
**Actor:**  
Administrador  
**Entrada:**  
ID empresa
**Procesamiento:**  
Eliminar los datos almacenados con dicha empresa  
**Salida:**  
Ninguna
## RF-3: Realizar contrato
**Actor:**  
Administrador  
**Entrada:**  
ID empresa
ID's audiencias
**Procesamiento:**  
  
**Salida:**  
Ninguna

# Requisitos de datos

## RD-1: Datos almacenados de empresa anunciante
* ID empresa anunciante
* Nombre de la empresa anunciante [cadena de caracteres]
## RD-2: Datos requeridos para registrar una empresa anunciante
* Nombre de la empresa anunciante 	[cadena de caracteres]
## RD-3: Datos almacenados de los contratos
* ID empresa anunciante
* ID's audiencias [cadena de ID's]

# Restricciones semánticas

### RS-1: Contratos
Los contratos deben contener, al menos, una audiencia.

