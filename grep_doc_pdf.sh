###################################################
#Scrip para procurar termos dentro de arquivos PDF#
###################################################
#!/bin/bash
#author: Raulex Ramos

if [ $# -ne 1 ]; then
  echo "usage $0 VALUE" 1>&2
  exit 1
fi

echo 'PESQUISA TERMO EM ARQUIVOS PDF' 1>&2

find . -name '*.pdf' -exec /bin/bash -c 'pdftotext "{}" - | grep --with-filename --label="{}" --color "$0"' $1 \;
