# Instalación de Aorist.

Esta es una guía para instalar Aorist en un sistema operativo con kernel Linux, creada y seguida desde Ubuntu 14.04. 

## Instalaciones previas. 

Necesitaremos paquetes para la gestión de la base de datos y un intérprete de JavaScript. Para la base de datos, instalamos sqlite3, mientras que como intérprete de JavaScript usaremos nodejs. Podemos instalarlos con los comandos: 

- sudo apt-get install sqlite3
- sudo apt-get install nodejs

## Instalación de Ruby. 

En caso de que no tengamos Ruby instalado en nuestro sistema, es necesario realizar esta instalación. Lo haremos instalando previamente RVM (Ruby Version Manager), que nos permitirá usar Ruby con mayor comodidad. Para instalar RVM y Ruby ejecutaremos los siguientes comandos: 

- *gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3* 

- \\curl -sSL https://get.rvm.io | bash -s stable --ruby

En este punto ya tendremos instalado RVM con Ruby. Seguidamente,  ejecutamos el comando *source /home/usuario/.rvm/scripts/rvm* para poder usar rvm. Cambiaremos de versión de Ruby a la 2.2.1 con el comando *rvm use 2.2.1*.

## Instalación de las gemas y migración de la base de datos. 

Ya tenemos instalado Ruby. Ahora tenemos que instalar las gemas necesarias. Para empezar, instalamos bundler con *gem install bundler*, lo que nos permitirá intalar el resto de gemas.

Una vez instalado, en la carpeta de la aplicación ejecutamos *bundle* para instalar todas las gemas necesarias para Aorist. 

Instaladas las gemas, hemos de migrar la base de datos. Para ello, ejecutamos *rake db:migrate*. Una vez hecho esto, la aplicación está lista para usarse. Solo queda lanzar el servidor con el comando *rails server*. 




