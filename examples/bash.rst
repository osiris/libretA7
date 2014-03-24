bash
====

permisos
--------

::

    r = read        4
    w = write       2
    x = execute     1

770 rwxrwx--
    usuario y grupo todo, el resto nada.
550 r-xr-x--
    solo dueño y grupo leer y ejecutar.
644 rw--r--r
    solo dueño tiene escritura, todos pueden leer.

comandos básicos
----------------

man
    leer el manual, es el mas importante!
echo
    eco, imprime texto en pantalla
ls
    listar archivos y directorios
pwd
    mostrar directorio actual
cd
    cambiar directorio
cp
    copiar
rm
    borrar
mv
    mover
mkdir
    crear directorio
cat
    muestra contenido de un archivo
more
    pagina la salida de un archivo
sort
    ordena
wc
    cuenta cantidad líneas y palabaras
grep
    filtra un texto
sed
    editor de texto en línea
awk
    procesa texto
find
    busca archivos
chmod
    cambia permisos
chown
    cambia el propietario de un archivo
alias
    define un alias para un comando
ps
    muestra procesos en ejecucion

stdinput
--------

En lugar de tipear podemos enviar un archivo
como la entrada estandard de un comando::

    mail osiux@osiux.com.ar < archivo.txt

stdoutput
---------

Podemos almacenar en un archivo el resultado de
la ejecución de un comando::

    # sobreescribe
    ls *.png >lista.txt
    # agrega
    ls *.txt >>lista.txt

pipe
----

Convertir la salida standard de un comando en la
entrada standard de otro comando permite
conectar procesos::

     ls | sort

expresiones regulares
---------------------

[a-z]
    rango de la *a* a la *z*
[A-Z]
    rango de la *A* a la *Z*
[0-9]
    rango de 0 a 9
[^..]
    negación
``^``
    principio de línea
``$``
    fin de línea
``.``
    cualquier caracter
``?``
    cero o una aparición
``*``
    ninguna o muchas repeticiones
``+``
    una o mas repeticiones

crontab
-------

Mediante el uso del *crontab* es posible definir
la ejecución de tareas de manera específica::

  # Usar numeral para escribir comentarios
  # +------------- minutos (0 - 59)
  # |  +---------- horas (0 - 23)
  # |  |  +------- día del mes (1 - 31)
  # |  |  |  +---- mes (1 - 12)
  # |  |  |  |  +- día de la semana (0 - 7)
  # |  |  |  |  |
  # *  *  *  *  *  comando a ejecutar
  */5  *  *  *  *  /root/cada-5-minutos.sh
    0 23  *  *  *  /root/backup-diario.sh
    0  0  1  *  *  /root/backup-mensual.sh
    0 23 31 12  *  /root/backup-anual.sh
    0 12  *  *  0  echo "asadito"
    0 12 29  *  *  echo "ñoquis"

Para editar, ejecutar::

     # crontab -e

Para listar, ejecutar::

     # crontab -l

