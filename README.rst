.. footer:: libretA7 | ###Page###

libretA7
========

Bash Scripts for create a *Booklet*,
*PocketMod*, *HipsterPDA* in paper size *ISO A7*
using ``rst2pdf`` and other tools like ``pdfjam``

Una serie de scripts para convertir A7 en A4 en
formato Booklet usando ``rst2pdf`` y otras
utilidades como ``pdfjam``

DEPENDENCES | DEPENDENCIAS
--------------------------

- rst2pdf
- pdfjam

INSTALL DEPENDENCES | INSTALAR DEPENDENCIAS
-------------------------------------------

::

  apt-get install rst2pdf pdfjam

USAGE | USO
-----------

rst2pdf -s booklet.style vim.rst
  convert ``vim.rst`` to PDF *A7*
  convierte ``vim.rst`` en PDF *A7*

./rst2pdf
  convert al ``*.rst`` files to PDF *A7*

./booklet.sh vim.pdf | bash
  create a double *A4* landscape with imposition
  for printing a booklet *A7*

make readme
  create a booklet from README (this file!)

make all
  automagic ;-)
  automagia ;-)

IMPOSITION | IMPOSISION
-----------------------

16 A7 pages = 2 A4 pages
~~~~~~~~~~~~~~~~~~~~~~~~

::

  front
  +---------+---------+
  | 16 : 01 | 14 : 03 |
  +---------+---------+
  | 12 : 05 | 10 : 07 |
  +---------+---------+

  back
  +---------+---------+
  | 04 : 13 | 02 : 15 |
  +---------+---------+
  | 06 : 11 | 08 : 09 |
  +---------+---------+

TODO | POR HACER
----------------

- Allow 32/64 pages.
- Add blank pages when source PDF has less 16 pages.

- Permitir 32/64 páginas.
- Agregar páginas en blanco cuando el origen
  tiene menos de 16 páginas.

EXAMPLES SOURCE
---------------

- examples/vim.rst
- examples/bash.rst
- examples/emacs.rst
- examples/tmux.rst

EXAMPLES PDF
------------

- http://pub.osiux.com/libretA7/vim-booklet.pdf

STYLE | ESTILO
--------------

- booklet.style


::


  {"pageSetup": {
      "width": "74mm",
      "height": "105mm",
      "margin-top": "6mm",
      "margin-bottom": "6mm",
      "margin-left": "6mm",
      "margin-right": "6mm",
      "margin-gutter": "0cm",
      "spacing-header": "0cm",
      "spacing-footer": "0cm",
      "firstTemplate": "whitePage"

PAPER SIZE | TAMAÑO DEL PAPEL 
-----------------------------

::

   15mm 15mm 15mm 15mm 15mm 15mm 15mm
  +<-->+<-->+<-->+<-->+<-->+<-->+<-->+

       1    2    3    4    5    6
  +----+----+----+----+----+----+----+
  |  ^ |    |    |    |    |    |    |
  |  |                               |
  |                                  |
  | 148.5mm                          |
  |                                  |
  |  |                               |
  |<-+---------- 105mm ------------->|
  |  |                               |
  |  v                               |
  +----------------------------------+

  +----+    +----+    +----+    +----+
  |    +----+    +----+    +----+    |
  |    +----+    +----+    +----+    |
  |                                  |
  |                                  |
  |                                  |
  |                                  |
  |                                  |
  |                                  |
  |                                  |
  +----------------------------------+

  +----+    +----+    +----+    +----+
  |    +----+    +----+    +----+    |
  |                                  |
  |                                  |
  |                                  |
  |                                  |
  |                                  |
  |                                  |
  |                                  |
  |                                  |
  +----------------------------------+


LICENSE | LICENCIA
------------------

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.

COPYRIGHT | DERECHOS DE AUTOR
-----------------------------

This script comes with ABSOLUTELY NO WARRANTY, use at own risk
Copyright (C) 2014 Osiris Alejandro Gomez <osiris@gcoop.coop>

