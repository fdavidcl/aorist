---
title: "Requisitos de Transacciones Económicas"
author: "José Ramón Trillo Vílchez"
numbersections: true
language: spanish

mainfont: Droid Serif
header-includes:
  - \setcounter{rf}{16}
  - \setcounter{rd}{10}
  - \setcounter{rs}{7}
---

#Requisitos funcionales

\rf{Hacer un pago a medio}

Actor:  
Empleado de contabilidad

Entrada:  
\autoref{rdtrans1}

Procesamiento:  
Creamos el pago asociado a un contrato con un medio ya existente

Salida:  
Ninguna.

\rf{Hacer un cobro a anunciante}

Actor:  
Empleado de contabilidad

Entrada:  
\autoref{rdtrans2}

Procesamiento:  
Creamos el cobro asociado a un contrato con un anunciante ya existente

Salida:  
Ninguna.

\rf{Obtener balance}

Actor:  
Empleado de contabilidad

Entrada:  
Ninguna

Procesamiento:  
Realizamos la suma de todos los cobros y le restamos la suma de todos los pagos

Salida:  
Lista de transacciones y balance total

\rf{Obtener transacciones ordenadas por importe}

Actor:  
Empleado de contabilidad

Entrada:  
Ninguna

Procedimiento:  
Obtiene los pagos y los cobros y los ordena de mayor a menor por importe

Salida:  
Lista de pagos y cobros y el valor que tienen asociado


\rf{Gasto por anunciante y medio}

Actor:  
Empleado de contabilidad

Entrada:  
Ninguna

Procedimiento:  
Se buscan dentro de la tabla de cobros contratos asociados al id del anunciante y se suman los importes. De igual forma operamos para los pagos asociados a cada medio.

Salida:  
Cobros realizados a cada anunciante y suma del dinero gastado por cada uno de ellos. Pagos realizados a cada medio y suma del dinero invertido en cada uno de ellos.


\rf{Gasto por contrato}

Actor:  
Empleado de contabilidad

Entrada:  
Ninguna

Procedimiento:  
Agrupamos los pagos y los cobros ordenados por cada contrato y los mostramos por pantalla.

Salida:  
Cobros y pagos agrupados por contrato.

# Requisitos de datos

\rd{Datos requeridos para pago a medio}
\label{rdtrans1}

- ID contrato (RD 6)
- Importe (valor real)
- Fecha del pago

\rd{Datos requeridos para cobro a anunciante}
\label{rdtrans2}

- ID contrato (RD 3)
- Importe (valor real)
- Fecha del cobro

\rd{Datos almacenados de pago}
\label{rdtrans3}

- ID contrato
- Importe
- Fecha del pago

\rd{Datos almacenados de cobro}
\label{rdtrans4}

- ID contrato 
- Importe
- Fecha del cobro

# Restricciones semánticas

\rs{Pagos}
La suma de todos los pagos relacionados con un contrato no superará en ningún momento el importe total especificado en el contrato.

\rs{Fecha}
Al crear un pago o un cobro, la fecha de la transacción no será nunca posterior a la fecha actual.  
