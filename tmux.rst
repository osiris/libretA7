screen
======

Instalar
--------

::

  apt-get install screen

Atajos de teclado
-----------------

+-------+------------------------+
| C-a " | listar ventanas        |
+-------+------------------------+
| C-a A | renombrar ventana      |
+-------+------------------------+
| C-a s | split horizontal       |
+-------+------------------------+
| C-a | | split vertical         |
+-------+------------------------+
| C-a c | nueva ventana          |
+-------+------------------------+
| C-a 0 | ir a ventana 0         |
+-------+------------------------+
| C-a Q | quitar splits          |
+-------+------------------------+
| C-a ] | iniciar copia          |
+-------+------------------------+
| C-a n | próxima ventana        |
+-------+------------------------+
| C-a p | ventana anterior       |
+-------+------------------------+
| C-a d | detach ventana         |
+-------+------------------------+

tmux
====

Instalar
--------

::

  apt-get install tmux

Iniciar nueva sesion
--------------------

::

  tmux new-session -d -s gcoop

Crear nueva ventana en una sesion
---------------------------------

::

  tmux new-window -t gcoop:1

Attach a sesion
---------------

::

  tmux a -t gcoop

Atajos de teclado
-----------------

+-------+------------------------+
| C-b c | nueva ventana          |
+-------+------------------------+
| C-b % | Split vertical         |
+-------+------------------------+
| C-b " | Split horizontal       |
+-------+------------------------+
| C-b s | Listar sesiones        |
+-------+------------------------+
| C-b q | Mostrar número paneles |
+-------+------------------------+
| C-b t | Mostrar reloj          |
+-------+------------------------+
| C-b n | Ventana siguiente      |
+-------+------------------------+
| C-b p | Ventana anterior       |
+-------+------------------------+
| C-b o | Cambiar de panel       |
+-------+------------------------+
| C-b ? | mostrar ayuda          |
+-------+------------------------+
| C-b f | buscar                 |
+-------+------------------------+
| C-b d | detach ventana         |
+-------+------------------------+
