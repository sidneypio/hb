#!/bin/bash
# Feliz aniversario para a cintia - versao 2022
#

function linhas () {

    case $(expr $x % 5) in
        1)  for (( c=1; c<=tam; c++ ))
            do
                echo -n "/ "
            done
            ;;
        2) for (( c=1; c<=tam; c++ ))
            do
                echo -n "| " 
            done
            ;;
        3) for (( c=1; c<=tam; c++ ))
            do
                echo -n "\ " 
            done
            ;;
        4) for (( c=1; c<=tam; c++ ))
            do
                echo -n "| " 
            done
            ;;
        0) for (( c=1; c<=tam; c++ ))
            do
                echo -n "- " 
            done
            ;;
    esac    
    echo "" 
}

if ! command -v figlet &> /dev/null
then
    echo "figlet nao esta instalado e é necessário para rodar o script"
    echo "instale com apt install figlet (debian/ubuntu) ou dnf install figlet (centos/fedora/rocky)"
    exit
fi

x=1
tam=20
while [ $x -le 20 ]
do
    clear
    linhas 
    figlet "Feliz"
    figlet "Aniversario"
    figlet "Cintia !!!"
    linhas 
    x=$(( $x + 1 ))
    sleep 0.1
done
sleep 1
clear
figlet "Felicidades !"
sleep 1
figlet "Saude !"
sleep 1
figlet "Sucesso !"
