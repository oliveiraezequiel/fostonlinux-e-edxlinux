#!/bin/bash

# Atualiza a lista de pacotes
sudo apt-get update

# Instala pacotes necessários
sudo apt-get install -y <lista_de_pacotes>

# Função para instalar pacotes .deb
install_deb() {
    for file in *.deb; do
        sudo dpkg -i "$file"
        sudo apt-get install -f -y
    done
}

# Chama a função de instalação de pacotes .deb
install_deb

echo "Instalação e atualização concluídas!"
echo " a equipe edxlinux e fostonlinux agradecem"
