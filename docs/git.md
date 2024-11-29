# git

## CRLF vs LF

```bash
* text=auto eol=lf
*.{cmd,[cC][mM][dD]} text eol=crlf
*.{bat,[bB][aA][tT]} text eol=crlf

## ejecutar en terminal

# convierte los archivos de CRLF a LF al realizar un input 
git config --global core.autocrlf input

# convertir los archivos de LF a CRLF al realizar un input
git config --global core.autocrlf true

```
