#!/usr/bin/env bash

# Script para resetar o ambiente Docker do Open5GS
# Apaga containers e/ou imagens associadas ao projeto

while true; do
    echo "======================================"
    echo "      MENU DE RESET - OPEN5GS        "
    echo "======================================"
    echo "1) Apagar containers"
    echo "2) Apagar imagens"
    echo "0) Sair"
    echo "--------------------------------------"
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1)
            echo "Removendo containers do projeto..."
            docker compose down
            echo "Containers removidos com sucesso!"
            ;;
        2)
            echo "Removendo imagens associadas ao projeto..."
            # --rmi all remove todas as imagens usadas pelo docker-compose.yml
            docker compose down --rmi all
            echo "Imagens removidas com sucesso!"
            ;;
        0)
            echo "Encerrando script."
            exit 0
            ;;
        *)
            echo "Opção inválida! Tente novamente."
            ;;
    esac
    echo ""
done
