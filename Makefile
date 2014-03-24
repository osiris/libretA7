readme:
	./rst2pdf.sh README.rst && ./booklet.sh README.pdf | bash

rst:
	./rst2pdf.sh

examples:
	cd examples
	/bin/bash ../rst2pdf.sh
	/bin/bash ../pdf2booklet.sh
