# Entidades

Cobro(\underline{ID cobro}, ID anunciante, Importe, Fecha)
Contrato con anunciante(\underline{ID contrato anunciante, ID anunciante}, ID's audiencias, Fecha, Importe, Descripción)
Anunciante(\underline{ID anunciante}, Nombre, Sitio web, Datos fiscales)
Audiencia(\underline{ID Audiencia}, Nombre, Descripción, ID's medios, ID's anunciantes)
Anuncio(\underline{ID anuncio, ID anunciante}, Contenido, URL)
Espacio(\underline{ID espacio, ID medio}, Multimedia, Tamaño, Enlace)
Medio(\underline{ID medio}, Nombre, Sitio web, Datos fiscales)
Contrato con medio(\underline{ID contrato medio, ID medio}, Fecha, Duración, Importe, Descripción)
Pago(\underline{ID pago}, ID medio, Importe, Fecha)

# Relaciones

asociado cobro(\underline{ID cobro}, ID contrato anunciante, ID anunciante)
se asigna(\underline{ID espacio, ID medio}, ID anuncio, ID anunciante)
interesa(\underline{ID anunciante, ID audiencia})
visitada(\underline{ID medio, ID audiencia})
asociado pago(\underline{ID pago}, ID contrato medio, ID medio)

