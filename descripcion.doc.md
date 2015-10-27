---
title: "Sistema de información para agencia de publicidad"
subtitle: "Descripción del proyecto"
author:
  - Óscar Bermúdez Garrido
  - Luis Castro Martín
  - Francisco David Charte Luque
  - José Carlos Entrena Jiménez
  - José Ramón Trillo Vilchez
numbersections: true
---

# Descripción del sistema

El sistema de información que se va a construir irá dirigido a una empresa de publicidad, principalmente enfocada a la publicidad online. Esta empresa serviría de enlace entre entidades (empresas o particulares) que quieran anunciar sus productos y medios que ofertan emplazamientos publicitarios.

# Áreas funcionales

## Gestión de anunciantes

Permite dar de alta empresas que quieran promocionar sus productos, y la creación de contratos con dichas empresas. Los contratos se asociarían a uno o varios tipos de anuncios dirigidos a ciertos segmentos de mercado.

## Gestión de medios

Permite dar de alta y gestionar los medios donde se visualizarán los anuncios, por ejemplo: anuncios estáticos o animados en sitios web, en aplicaciones móviles, en revistas... Cada medio puede ir relacionado con ciertos tipos de audiencia.

## Anuncios

Incluye la creación de distintos tipos de anuncios que después se podrán ofertar a los anunciantes. La gestión de anuncios incluye recuentos de impresiones y clicks, y permite reunir estadísticas sobre el éxito de los anuncios en cada medio.

## Transacciones económicas

Permite tramitar los cobros a las empresas anunciantes, y los pagos a los medios.

## Audiencia

Administra los distintos perfiles de visitantes que se ofertan a los anunciantes y en función de los cuáles se distribuyen los anuncios a los medios.

# Tecnologías usadas

Se utilizará el *framework* Rails sobre Ruby para construir una interfaz web para la capa de presentación, y se utilizará de intermediario entre ésta y la base de datos.
