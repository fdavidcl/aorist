---
title: "Aorist: Sistema de información orientado a la publicidad"
subtitle: "Descripción del proyecto"
author:
  - Óscar Bermúdez Garrido
  - Luis Castro Martín
  - Francisco David Charte Luque
  - José Carlos Entrena Jiménez
  - José Ramón Trillo Vilchez
toc: true
numbersections: true
---

# Introducción
Aorist (Ad Oriented Information System) es un sistema de gestión dirigido a empresas de publicidad, principalmente orientado a la publicidad online. El sistema modela las empresas anunciantes y los medios de forma que se puedan relacionar mediante los anuncios de las primeras y los espacios publicitarios. Además, se facilita la segmentación del mercado y la asociación entre anunciantes y medios con audiencias afines.

## Áreas funcionales

* Gestión de anunciantes:
Permite dar de alta empresas que quieran promocionar sus productos, relacionarlas con tipos de audiencia y la creación de contratos con dichas empresas.

* Gestión de medios:
Permite dar de alta y gestionar los medios donde se visualizarán los anuncios, por ejemplo: sitios web, aplicaciones móviles, revistas... Cada medio puede ir relacionado con ciertos tipos de audiencia y se pueden crear contratos asociados.

* Anuncios y espacios:
Incluye la creación de distintos tipos de espacios que después se podrán ocupar mediante anuncios asociados a los anunciantes. 

* Transacciones económicas:
Permite tramitar los cobros a las empresas anunciantes, y los pagos a los medios.

* Audiencia:
Administra los distintos perfiles de visitantes que se ofertan a los anunciantes y en función de los cuáles se distribuyen los anuncios a los medios.


# Instalación

Esta es una guía para instalar Aorist en un sistema operativo con kernel Linux, creada y seguida desde Ubuntu 14.04.

## Dependencias previas

Necesitaremos paquetes para la gestión de la base de datos y un intérprete de JavaScript. Para la base de datos, instalamos *sqlite3*, mientras que como intérprete de JavaScript usaremos *nodejs*. Podemos instalarlos con los comandos:

~~~sh
sudo apt-get install sqlite3
sudo apt-get install nodejs
~~~

## Instalación de Ruby

En caso de que no tengamos Ruby instalado en nuestro sistema, es necesario realizar esta instalación. Lo haremos instalando previamente RVM (*Ruby Version Manager*), que nos permitirá usar Ruby con mayor comodidad. Para instalar RVM y Ruby ejecutaremos los siguientes comandos:

~~~sh
gpg --keyserver hkp://keys.gnupg.net --recv-keys\
  409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby
~~~

En este punto ya tendremos instalado RVM con Ruby. Seguidamente,  ejecutamos el comando `source /home/usuario/.rvm/scripts/rvm` para poder usar rvm. Cambiaremos de versión de Ruby a la 2.2.1 con el comando `rvm use 2.2.1`.

## Instalación de las gemas y migración de la base de datos

Ya tenemos instalado Ruby. Ahora tenemos que instalar las gemas necesarias. Para empezar, instalamos bundler con `gem install bundler`, lo que nos permitirá intalar el resto de gemas.

Una vez instalado, en la carpeta de la aplicación ejecutamos `bundle --without=test` para instalar todas las gemas necesarias para Aorist.

Instaladas las gemas, hemos de migrar la base de datos. Para ello, ejecutamos `rake db:migrate`. Una vez hecho esto, la aplicación está lista para usarse. Solo queda lanzar el servidor con el comando `rails server`.

# Implementación
