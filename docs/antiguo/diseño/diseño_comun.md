---
title: Diseño de la aplicación
subtitle: Sistema de información para agencia de publicidad
author:
  - Óscar Bermúdez Garrido
  - Luis Castro Martín
  - Francisco David Charte Luque
  - José Carlos Entrena Jiménez
  - José Ramón Trillo Vilchez
lang: spanish
toc: yes
numbersections: yes
geometry: a4paper,margin=1in,landscape

header-includes:
  - \usepackage{graphicx}

mainfont: Droid Serif
---

# Diagramas de flujos de datos y esquemas externos

## Armazón

### Diagrama de caja negra

\begin{center}\includegraphics[width=0.8\textwidth,keepaspectratio]{images/cajanegra.png}\end{center}

### Diagrama armazón F

\begin{center}\includegraphics[width=\textwidth,height=\dimexpr\textheight-4\baselineskip\relax,keepaspectratio]{images/armazonF.png}\end{center}

### Esquemas externos para el diagrama armazón F

\begin{center}\includegraphics[width=\textwidth,height=\dimexpr\textheight-4\baselineskip\relax,keepaspectratio]{images/externos_armazonF.png}\end{center}

### Diagrama armazón D

\begin{center}\includegraphics[width=0.3\textwidth,keepaspectratio]{images/armazonD.png}\end{center}

## Primer refinamiento

### Plano de refinamiento F de primer nivel

\begin{center}\includegraphics[width=\textwidth,height=\dimexpr\textheight-4\baselineskip\relax,keepaspectratio]{images/plano_refinamiento1.png}\end{center}

### Esquemas externos del plano de refinamiento F

\begin{center}\includegraphics[width=\textwidth,height=\dimexpr\textheight-4\baselineskip\relax,keepaspectratio]{images/externos_refinamiento1.png}\end{center}

## Segundo refinamiento

### Plano de refinamiento F de segundo nivel

\begin{center}\includegraphics[width=\textwidth,height=\dimexpr\textheight-4\baselineskip\relax,keepaspectratio]{images/plano_refinamiento2.png}\end{center}

### Esquemas externos del plano de refinamiento F

\begin{center}\includegraphics[width=\textwidth,height=\dimexpr\textheight-4\baselineskip\relax,keepaspectratio]{images/externos_refinamiento2.png}\end{center}

# Diagrama conceptual

## Unión de los esquemas externos

\begin{center}\includegraphics[width=\textwidth,height=\dimexpr\textheight-4\baselineskip\relax,keepaspectratio]{images/ER.png}\end{center}

## Diagrama resultante

\begin{center}\includegraphics[width=\textwidth,height=\dimexpr\textheight-4\baselineskip\relax,keepaspectratio]{images/ER_atributos.png}\end{center}

# Operaciones de datos

## Descripción de las operaciones

### O1: Alta de un medio

Insertar un nuevo medio a partir de su identificador, nombre, sitio web y datos fiscales.

### O2: Baja de un anunciante

Eliminar un anunciante dado su identificador.

### O3: Obtención de pagos

Buscar los pagos asociados a contratos de medio a partir del identificador del medio.

### O4: Modificación de anuncio

Actualizar el contenido y URL de un anuncio, dado su identificador.


## Esquemas de operación

\begin{center}\includegraphics[width=\textwidth,height=\dimexpr\textheight-4\baselineskip\relax,keepaspectratio]{images/operacion.png}\end{center}

## Esquemas de navegación

\begin{center}\includegraphics[width=\textwidth,height=\dimexpr\textheight-4\baselineskip\relax,keepaspectratio]{images/navegacion.png}\end{center}

# Diseño lógico

Anunciante(\underline{ID anunciante}, Nombre, Sitio web, Datos fiscales)

Medio(\underline{ID medio}, Nombre, Sitio web, Datos fiscales)

Anuncio(\underline{ID anuncio, ID anunciante}, Contenido, URL)  
*FK*: ID anunciante $\rightarrow$ Anunciante.ID anunciante

Espacio(\underline{ID espacio, ID medio}, Multimedia, Tamaño, Enlace)  
*FK*: ID medio $\rightarrow$ Anunciante.ID medio

Audiencia(\underline{ID audiencia}, Nombre, Descripción)

Contrato_anunciante(\underline{ID contrato anunciante, ID anunciante}, Fecha, Importe, Descripción, Duración)  
*FK*: ID anunciante $\rightarrow$ Anunciante.ID anunciante

Cobro(\underline{ID cobro}, ID contrato anunciante, ID anunciante, Importe, Fecha) (Fusión de tablas)  
*FK*: ID contrato anunciante $\rightarrow$ Contrato_anunciante.ID contrato anunciante
*FK*: ID anunciante $\rightarrow$ Anunciante.ID anunciante

Contrato_medio(\underline{ID contrato medio, ID medio}, Fecha, Duración, Importe, Descripción)  
*FK*: ID medio $\rightarrow$ Anunciante.ID medio

Pago(\underline{ID pago}, ID contrato medio, ID medio, Importe, Fecha) (Fusión de tablas)  
*FK*: ID contrato medio $\rightarrow$ Contrato_medio.ID contrato medio  
*FK*: ID medio $\rightarrow$ Anunciante.ID medio

Se_asigna(\underline{ID espacio, ID medio}, ID anuncio, ID anunciante)  
*FK*: ID espacio $\rightarrow$ Espacio.ID espacio  
*FK*: ID medio $\rightarrow$ Anunciante.ID medio  
*FK*: ID anuncio $\rightarrow$ Anuncio.ID anuncio  
*FK*: ID anunciante $\rightarrow$ Anunciante.ID anunciante

Interesa(\underline{ID anunciante, ID audiencia})  
*FK*: ID anunciante $\rightarrow$ Anunciante.ID anunciante  
*FK*: ID audiencia $\rightarrow$ Audiencia.ID audiencia

Visita(\underline{ID medio, ID audiencia})  
*FK*: ID medio $\rightarrow$ Medio.ID medio  
*FK*: ID audiencia $\rightarrow$ Audiencia.ID audiencia
