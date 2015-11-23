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

\rf{Hacer cobro a anunciantes}

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

\rf{Obtener pagos ordenados por importe}

Actor:  
Empleado de contabilidad

Entrada:  
Ninguna.

Procedimiento:  
Obtiene los pagos y ordena de mayor a menor por importe.

Salida:  
El pago y el valor que tiene asociado.

\rf{Obtener cobros ordenados por importe}

Actor:  
Empleado de contabilidad

Entrada:  
Ninguna.

Procedimiento:  
Obtiene los cobros y ordena de mayor a menor por importe.

Salida:  
El cobro y el valor que tiene asociado.

\rf{Gasto por anunciantes}

Actor:  
Empleado de contabilidad

Entrada:  
ID de anunciante (RD 1).

Procedimiento:  
Se buscan dentro de la tabla de cobros contratos asociados al id del anunciante y se suman los importes.

Salida:  
Valor total del dinero gastado por el anunciante.

\rf{Gasto en cada medio}

Actor:  
Empleado de contabilidad

Entrada:  
ID de medio (RD 4).

Procedimiento:  
Se buscan dentro de la tabla de pagos contratos asociados al id del medio y se suman los importes.

Salida:  
Valor total que ha ganado el medio.

# Requisitos de datos

\rd{Datos requeridos para pago a medio}
\label{rdtrans1}

- ID contrato (RD 6)
- importe [valor real]

\rd{Datos requeridos para cobro a anunciante}
\label{rdtrans2}

- ID contrato (RD 3)
- importe [valor real]

\rd{Datos almacenados de pago}
\label{rdtrans3}

- ID contrato (RD 6)
- fecha transacción [fecha]
- importe [valor real]

\rd{Datos almacenados de cobro}
\label{rdtrans4}

- ID contrato (RD 3)
- fecha transacción [fecha]
- importe [valor real]

# Restricciones semánticas
