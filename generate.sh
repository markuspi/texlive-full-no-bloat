#!/bin/sh

apt-cache depends texlive-full | grep Depends: | cut -d " " -f 4 | grep -vP 'texlive-lang|latex-cjk|-doc$' | tr '\n' ',' | sed 's/,$/\n/'

