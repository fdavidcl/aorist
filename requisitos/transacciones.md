---
title: "Requisitos de Transacciones Económicas"
author: "José Ramón Trillo Vílchez"
numbersections: true
language: spanish

mainfont: Droid Serif
header-includes:
  - \setcounter{rf}{16}
  - \setcounter{rd}{10}
  - \setcounter{rs}{6}
---

#Requisitos funcionales

\rf{Hacer un pago a medio}

Actor:  
Empleado de contabilidad

Entrada:  
\autoref{rdtrans1}

Procesamiento:  
Buscamos el contrato (RD 6) usando su identificador, restamos la cantidad a nuestro balance y guardamos la transacción en una tabla guardando su fecha, nombre del medio, el id anunciante, id del contrato y el valor.

Salida:  
Ninguna.

\rf{Hacer un cobro a anunciante}

Actor:  
Empleado de contabilidad

Entrada:  
\autoref{rdtrans2}

Procesamiento:  
Buscamos el id del anunciante en el contrato, buscamos el contrato usando su identificador, vemos que coincide con el del anunciante, sumamos la cantidad a nuestra cuenta y guardamos la transacción en una tabla guardando su fecha, nombre del anunciante, el id anunciante, id del contrato y el valor.

Salida:  
Ninguna.

\rf{Obtener balance}

Actor:  
Empleado de contabilidad

Entrada:  
Fecha

Procesamiento:  
A partir de fecha busca cobros \autoref{rdtrans4} y pagos \autoref{rdtrans3}, obtiene los contratos asociados y realiza la suma.

Salida:  
Lista de transacciones con su importe y contrato asociado y balance total.

\rf{Obtener transacciones ordenadas por importe}

Actor:  
Empleado de contabilidad

Entrada:  
Ninguna.

Procedimiento:  
Obtiene los pagos y los cobros y los ordena de mayor a menor por importe.

Salida:  
Lista de pagos y cobros y el valor que tienen asociado.


\rf{Gasto por anunciante y medio}

Actor:  
Empleado de contabilidad

Entrada:  
ID de anunciante (RD 1) e ID de medio (RD 4).

Procedimiento:  
Se buscan dentro de la tabla de cobros contratos asociados al id del anunciante y se suman los importes. De igual forma operamos para los pagos asociados a cada medio.

Salida:  
Cobros realizados a cada anunciante y suma del dinero gastado para cada uno de ellos. Pagos realizados a cada anunciante y suma del dinero invertido en cada uno de ellos.


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
- Importe [valor real]
- Fecha del pago

\rd{Datos requeridos para cobro a anunciante}
\label{rdtrans2}

- ID contrato (RD 3)
- Importe [valor real]
- Fecha del cobro

\rd{Datos almacenados de pago}
\label{rdtrans3}

- ID contrato (RD 6)
- Importe [valor real]
- Fecha del pago

\rd{Datos almacenados de cobro}
\label{rdtrans4}

- ID contrato (RD 3)
- Importe [valor real]
- Fecha del cobro

# Restricciones semánticas

\rs{Pagos}
La suma de todos los pagos relacionados con un contrato no superará en ningún momento el importe total especificado en el contrato.
