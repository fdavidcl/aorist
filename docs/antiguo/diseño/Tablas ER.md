# Entidades

Cobro(\underline{ID cobro}, ID contrato anunciante, ID anunciante, Importe, Fecha) (Fusión de tablas)

Contrato con anunciante(\underline{ID contrato anunciante, ID anunciante}, Fecha, Importe, Descripción, Duración)

Anunciante(\underline{ID anunciante}, Nombre, Sitio web, Datos fiscales)

Audiencia(\underline{ID Audiencia}, Nombre, Descripción)

Anuncio(\underline{ID anuncio, ID anunciante}, Contenido, URL)

Espacio(\underline{ID espacio, ID medio}, Multimedia, Tamaño, Enlace)

Medio(\underline{ID medio}, Nombre, Sitio web, Datos fiscales)

Contrato con medio(\underline{ID contrato medio, ID medio}, Fecha,
Duración, Importe, Descripción)

Pago(\underline{ID pago}, ID contrato medio, ID medio, Importe, Fecha) (Fusión de tablas)

# Relaciones

Se asigna(\underline{ID espacio, ID medio}, ID anuncio, ID anunciante)

Interesa(\underline{ID anunciante, ID audiencia})

Visita(\underline{ID medio, ID audiencia})
