#! /bin/bash
find . -maxdepth 1 -name '*.ipynb' -print0 | while read -r -d '' file; do python3 jupyter_translate.py en pt-br $file ${file%%.ipynb}_br.ipynb; done

