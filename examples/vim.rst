.. footer:: Vim | ###Page###

.. image:: logo.png

INICIAR EL PROGRAMA
-------------------

vim [archivo1 [archivo2...]]
    Inicia el editor abriendo el *archivo1*, ejecutando *:cnext* pasa al
    siguiente.
vimdiff archivo1 archivo2
    Evalúa diferencias entre los archivos y las muestra en pantalla.
vim -p achivo1 archivo2 archivo3
    Abre múltiples archivos en *Tabs*

AYUDA
-----

:help tema
    Muestra ayuda sobre un determinado *tema*.
:digraphs
    Muestra caracteres *UTF8*, éstos se insertan presionando CTRL+k y el
    código correspondiente, por ejemplo /0 para ∅

GUARDAR Y/O SALIR
-----------------

:w [archivo]
    Guarda los cambios del archivo actual.
:wq
    Sale guardando los cambios del archivo actual cambios.
:q
    Evita perder modificaciones al salir.
:q!
    Sale del editor sin guardar cambios. En cambio :q evita perder
    modificaciones.
:qall
    Sale del editor si todos los archivos no fueron modificados.

:qall!
    Sale del editor sin guardar todos los archivos abiertos.

LEER O EDITAR ARCHIVOS
----------------------

:e archivo
    Edita el archivo indicado. Se puede usar la tecla *tab* para
    autocompletar el nombre.
:r archivo
    Lee el contenido del archivo y lo escribe en el buffer actual.
gf
    Abre el archivo bajo el cursor (usar CTRL-o para regresar).
CTRL+]
    Da un saldo a donde se define el símbolo debajo del cursor.

    Use el comando externo **ctags** para que esto funcione
    correctamente, al menos en PHP, C y python.
CTRL+t
    Regresa al archivo anterior luego de hacer un salto

MODO INSERCIÓN
--------------

i
    Ingresa a izquierda del caracter actual.
I
    Ingresa al principio de la línea.
a
    Ingresa a derecha del caracter actual.
A
    Ingresa al final de la línea.
o
    Inserta un línea debajo de la actual.
O
    Inserta una línea arriba de la actual.

MOVIMIENTOS
-----------

h,j,k,l
    Alternativa a flechas izquierda, arriba, abajo, derecha
CTRL-d, CTRL-u
    Avanza o retrocede media pantalla.
w, W
    Avanza de a palabras, *W* hace saltos mas largos porque solo asume como separadores a los espacios en blanco.
b, B
    Similar a *w* y *W* pero en sentido inverso.
e, E
    Similar a *w* y *W* pero coloca el cursor a la derecha de la palabra.
0, $
    Principio y final de la línea actual.
gg, G
    Ir al principio o final del archivo.
:nro
    Se dirige directamente al número de línea indicado por *nro*.

BORRAR
------

D, d$
    Borra todos los caracteres hasta el final de la línea.
x, X
    Elimina el caracter bajo el cursor (similar a la tecla *suprimir*), X es
    similar pero en sentido inverso (similar a la tecla *backspace*).
dd
    Elimina la línea actual.
d{movimiento}
    Borra en base al movimiento indicado. Por ejemplo **d5w** borra 5 palabras
    hacia la derecha.

DESHACER
--------

u
    Deshacer el último cambio.
CTRL-R
    Rehacer.
U
    Deshacer todos los cambios de la línea actual.

BÚSQUEDAS
---------

Opciones para habilitar búsquedas inmediatas y subrayado de resultado::

    :set incsearch
    :set ignorecase smartcase
    :set hlsearch

/{patrón}, ?{patrón}
    Inicia la búsqueda de la expresión regular {patrón}. Con / es una
    búsqueda hacia abajo y ? hacia abajo.
n, N
    Para avanzar o retroceder en los resultados de la búsqueda.
vimgrep /{patrón}/ *
    Busca la expresión regular en todos los archivos del directorio actual.
    Otra variante es utilizar \*\* para iniciar una búsqueda recursiva o
    \*\*/\*.php para restringir la búsqueda solamente a un tipo de archivo.

..
    *

REEMPLAZAR
----------

:{rango}s/{a_buscar}/{reemplazo}/g
    Reemplaza todas las apariciones de {a_buscar} por {reemplazo} en el sector
    indicado por {rango}. Si omite {rango} se actúa solamente en la línea
    actual, si coloca % como {rango} se reemplaza en todo el archivo. También
    puede invocar el reemplazo desde el modo visual (iniciado con *v*) para
    actuar solamente en la porción definida.

COPIAR Y PEGAR
--------------

y{movimiento}
    Copia (yank) desde la posición actual hasta el punto destino del
    movimiento. Por ejemplo `y3w` copia 3 palabras o `y$` copia hasta hasta
    el final de línea.
yy
    Copia la línea completa.
p, P
    Pega el texto debajo o arriba de la línea actual.

OTROS MODOS DE SELECCIÓN
------------------------

v
    Define una zona de selección en la que actuarán los comandos posteriores.
CTRL-v
    Similar al anterior pero en bloque.
SHIFT-v
    Útil para seleccionar líneas de texto completas.
gv
    Recupera la última selección.

AUTOCOMPLETADO
--------------

CTRL-x CTRL-p, CTRL-x CTRL-n
    Sugiere palabras similares a la actual buscando hacia arriba o abajo.
    Funciona en cualquier tipo de archivo.
CTRL-x CTRL-f
    Autocompleta nombres de archivos.
CTRL-x CTRL-o
    Sugiere términos en base a la sintaxis del archivo actual. Por ejemplo si
    edita un archivo .html sugiere elementos de HTML y reconoce el contexto.
    En archivos .py inspecciona objetos de python, o en archivos .css sugiere
    elementos, propiedades y valores.
    En otros lenguajes como C hay que usar el comando externo **ctags** para
    que funcione. Igual es groso...

CTRL-x CTRL-k
    Autocompleta consultando un diccionario personalizado. Usar algo como
    *:set dictionary=palabras.txt* para definir el diccionario.

VENTANAS
--------

:split
    Divide la ventana horizontalmente.
:vsplit
    Similar al anterior pero verticalmente.
:Explore
    Abre un navegador de archivos.
CTRL-w{movimiento}
    Alterna entre ventanas en base al movimiento.

INTEGRACIÓN CON BASH
--------------------

:!comando
    Ejecuta el comando y muestra la salida en pantalla.
:r !comando
    Ejecuta el comando, toma la salida de pantalla y la inserta en el archivo.
    Por ejemplo *:r !cal* inserta el calendario del mes actual.
:shell
    Inicia un proceso bash, utilice *exit* para regresar.
:!php -l %
    Verifica sintaxis PHP del archivo actual.
:!rst2pdf % >/tmp/%.pdf && evince /tmp/%.pdf
    Convierte a PDF el archivo actual y lo visualiza

ATAJOS Y MACROS
---------------

:map <F5> :r !date<CR>
    Asigna una operación a la pulsación de una tecla. En este caso cuando
    se pulse la tecla *F5* se ha va escribir la hora actual en el documento.
    El comando *imap* es similar pero funciona en modo insersión.
:abbr ,e osiris@gcoop.coop
    Genera una abreviatura que se expande automáticamente. En ese ejemplo al
    escribir *,e* VIM escribirá una dirección de correo completa.
qa
    Guarda en un registro (*"a"* en este caso) todas las operaciones que
    realice. Tiene que pulsar la tecla *q* para terminar la grabación.
@a
    Repite las operaciones que ha guardado en el registro *a*. Puede usar
    un número antes de @ para repetir la acción muchas veces.

CORRECTOR ORTOGRÁFICO
---------------------

:set spell spelllang=es
    Habilita el corrector en español.
=z
    Muestra todas las sugerencias de corrección sobre una palabra incorrecta.
zg
    Agrega en el diccionario la palabra que se encuentre debajo del cursor.
]s, [s
    Avanza o retrocede saltando en las palabras incorrectas.

IDENTACIÓN
----------

=
    Aplica identación al texto seleccionado.
gqap
    Idem

IMPRIMIR
--------

harcopy
    Genera un archivo .PS listo para enviar a la impresora.

CONFIGURACION
-------------

~/.vimrc
    Agregar las configuraciones básicas::

	syntax on
	set ruler
	set wordwrap=72
	set background=dark
	set tabstop=4
	syntax on
	syntax on
	syntax on
	set ruler
	set wordwrap=72
	set background=dark
	set tabstop=4
	set ruler
	set wordwrap=72
	set background=dark
	set tabstop=4
	set ruler
	set wordwrap=72
	set background=dark
	set tabstop=4

