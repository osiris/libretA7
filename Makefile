vim: rst
	/bin/bash ./booklet.sh vim.pdf | /bin/bash

emacs: rst
	/bin/bash ./booklet.sh emacs.pdf | /bin/bash

bash: rst
	/bin/bash ./booklet.sh bash.pdf | /bin/bash

readme: rst
	/bin/bash ./booklet.sh README.pdf | /bin/bash

rst:
	/bin/bash ./rst2pdf.sh

upload:
	scp *A7.pdf vodka:~/pub/libretA7

