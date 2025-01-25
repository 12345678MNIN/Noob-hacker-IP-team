#!/bin/bash

# Função para testar conexão com um endereço
testar_conexao() {
    echo "Testando conexão com $1..."
    ping -c 4 $1
}

# Função para verificar portas abertas em um IP
verificar_portas() {
    echo "Verificando portas abertas no IP $1..."
    nmap -p- $1
}

# Função para rastrear o caminho até um IP ou domínio
rastrear_caminho() {
    echo "Rastreando caminho até $1..."
    traceroute $1
}

# Menu de opções
echo "Escolha uma opção:"
echo "1) Testar conexão"
echo "2) Verificar portas abertas"
echo "3) Rastrear caminho"
read -p "Digite o número da opção: " opcao

# Executa a função correspondente à escolha
case $opcao in
    1)
        read -p "Digite o endereço ou IP: " destino
        testar_conexao $destino
        ;;
    2)
        read -p "Digite o endereço ou IP: " destino
        verificar_portas $destino
        ;;
    3)
        read -p "Digite o endereço ou IP: " destino
        rastrear_caminho $destino
        ;;
    *)
        echo "Opção inválida. Saindo."
        ;;
esac
