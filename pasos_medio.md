## Creación del modelo, controlador y vista para Medio

Estos son los pasos que he seguido (también los podréis mirar en el historial de commits)

### Creación del modelo

Ejecutamos lo siguiente en la terminal:

~~~sh
$ rails generate model Medio nombre:string web:string fiscales:string
$ rake db:migrate
$ git add .
$ git commit -m "Añade modelo para Medio"
~~~

Validamos parámetros si es necesario, añadiendo llamadas a `validate` en el archivo `app/models/medio.rb`:

~~~ruby
class Medio < ActiveRecord::Base
  validates :nombre, :presence => true, :length => {:minimum => 1}
end
~~~

### Creación del controlador

En `config/routes.rb`, añado la siguiente línea (antes del `end`):

~~~ruby
resources :medios
~~~

A continuación, en la terminal ejecuto:

~~~sh
$ rake routes
$ rails generate controller medios
$ git add .
$ git commit -m "Añade controlador vacío para Medio"
~~~

**Consejo**: Probad a ejecutar `rails server` y tratar de acceder a las rutas convenientes (en este caso, por ejemplo, a `/medios`) para ver qué os va faltando por hacer.

En el archivo `app/controllers/medios_controller.rb` que se acaba de crear, añado los métodos necesarios para que coincidan con las *acciones* que queremos realizar sobre los medios. Por ejemplo, la acción `index` lista los medios de la base de datos, simplemente añado un método `index`:

~~~ruby
class MediosController < ApplicationController
  def index
    @medios = Medio.all
  end
end
~~~

¿Qué hace esto exactamente? Llama al método `all` de la clase `Medio`, que es el modelo para los medios. Esto recupera de la base de datos todos los medios que se hayan creado. Además, asigna el resultado a una **variable de instancia** `@medios`, para que la vista pueda tomar esos datos y representarlos.

**Nota**: Es imprescindible que todo lo que se vaya a representar en la vista esté en una variable de instancia.

Añado métodos `new` y `create` para poder crear un medio:

~~~ruby
class MediosController < ApplicationController
  private
  def medio_params
    params.require(:medio).permit(:nombre, :web, :fiscales)
  end

  public
  def new
    @medio = Medio.new
  end

  def create
    @medio = Medio.new medio_params

    if @medio.save
      redirect_to @medio
    else
      render :new
    end
  end

  def index
    @medios = Medio.all
  end
end
~~~

Muchas cosas han pasado aquí. Por un lado, el método `new` no hace nada especial, le basta con existir para que en la web podamos acceder a la vista de creación de nuevo medio. Llamamos a `Medio.new` y lo asignamos a `@medio` para que

Por otro lado, en `create` estamos creando un nuevo `Medio`, pasándole los parámetros obtenidos al filtrar los datos que nos lleguen desde la web (esto lo hace `medio_params`, especificando los parámetros permitidos). Lo asignamos a una variable de instancia y guardamos esos cambios en la base de datos con el método `save`. Por último, redirige a la página correspondiente a dicho medio, que a su vez necesita de la acción `show` para ser visualizada. La añadimos:

~~~ruby
def show
  @medio = Medio.find params[:id]
end
~~~

### Creación de las vistas

Hemos declarado un montón de acciones sobre el controlador de medios, y ahora tenemos que crear las vistas. Para ello añadimos los archivos `index.haml`, `new.haml` y `show.haml` al directorio `app/views/medios`:

~~~haml
/ index.haml
%h1 Todos los medios

= link_to "Nuevo medio", new_medio_path

- @medios.each do |medio|
  %h3
    = link_to medio.nombre, medio
~~~

~~~haml
/ new.haml
%h1 Crear un nuevo medio

= form_for :medio, :url => medios_path do |f|
  %p
    = f.label :nombre
    = f.text_field :nombre

  %p
    = f.label :web
    = f.text_field :web

  %p
    = f.label :fiscales
    = f.text_field :fiscales

  %p
    = f.submit
~~~

~~~haml
/ show.haml
%h1= @medio.nombre

%p
  = @medio.web

%p
  = @medio.fiscales

%p
  = link_to "Atrás", medios_path
~~~
