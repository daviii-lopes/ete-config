#!/bin/bash

clear

echo ""
echo "███████╗████████╗███████╗    ███╗   ███╗███████╗██╗"     
echo "██╔════╝╚══██╔══╝██╔════╝    ████╗ ████║██╔════╝██║"     
echo "█████╗     ██║   █████╗      ██╔████╔██║█████╗  ██║"     
echo "██╔══╝     ██║   ██╔══╝      ██║╚██╔╝██║██╔══╝  ██║"     
echo "███████╗   ██║   ███████╗    ██║ ╚═╝ ██║██║     ███████╗"
echo "╚══════╝   ╚═╝   ╚══════╝    ╚═╝     ╚═╝╚═╝     ╚══════╝"
echo ""
echo "--------------------------------------------------------"
echo "Este é um script de instalação criado para ajudar a todos os alunos do curso de TDS da ETE Ministro Fernado Lyra!"
echo "--------------------------------------------------------"
echo "Preencha os campos para começar:"

echo ">>> Digite um nome de usuário: "
read user_name
echo ">>> Digite um e-mail:"
read email

clear

echo "Gerando chave ssh..."
ssh-keygen -t ed25519 -C "$email"

echo "Finalizado!"

clear

echo "Agora a instalação deve acontecer sozinha, enquanto isso, vá tomar uma água, um chá ou vá brincar lá fora, isso pode demorar um pouco..."
echo "Aperte Enter para começar!"
read

clear

echo "Atualizando o sistema..."
sudo apt update -y
sudo apt upgrade -y
echo "Finalizado!"
clear

echo "Instalando o git..."
sudo apt install git -y

clear

echo "Configurando o git..."
git config --global user.email "$email"
git config --global user.name "$user_name"
echo "Finalizado!"

clear

echo "Criando as pastas necessárias..."
echo "Entrando na home..."
cd ~
echo 'Criando a pasta "Escola"'
mkdir Escola
cd Escola
echo 'Criando a pasta "Matérias"'
mkdir Matérias
mkdir "Base Comum" Curso
cd "Base Comum"
mkdir Português Matemática Filosofia Inglês Geografia História Sociologia Física "Educação física" Biologia 
cd ..
cd Curso 
mkdir EGSI SDA ESD1 DAMO ESW PI3
echo "Finalizado!"

clear

echo "Instalando linguagens e programas..."
sudo apt install python nodejs php mysql-server mysql-client libreoffice gimp code -y
sudo apt install npm yarn pip -y

echo "Adicionando o MySQL Workbench à área de trabalho..."

echo "[Desktop Entry]
Version=1.0
Name=MySQL Workbench
Comment=Open MySQL Workbench
Exec=mysql-workbench
Icon=mysql-workbench
Terminal=false
Type=Application
Categories=Development;" > ~/Desktop/mysql-workbench.desktop

chmod +x ~/Desktop/mysql-workbench.desktop

echo "Adicionando o GIMP e o LibreOffice à área de trabalho..."

echo "[Desktop Entry]
Name=GIMP
Comment=Create images and edit photographs
Exec=gimp-2.10 %U
Icon=gimp
Terminal=false
Type=Application
Categories=Graphics;2DGraphics;RasterGraphics;GTK;" > ~/Desktop/gimp.desktop

echo "[Desktop Entry]
Name=LibreOffice Writer
Comment=Write documents
Exec=libreoffice --writer %U
Icon=libreoffice-writer
Terminal=false
Type=Application
Categories=Office;WordProcessor;X-Red-Hat-Base;" > ~/Desktop/libreoffice-writer.desktop

chmod +x ~/Desktop/gimp.desktop
chmod +x ~/Desktop/libreoffice-writer.desktop

echo "Adicionando o vs code a Área de trabalho"

echo '[Desktop Entry]
Name=Visual Studio Code
Comment=Code Editing. Redefined.
Exec=/usr/share/code/code --no-sandbox %F
Icon=code
Terminal=false
Type=Application
Categories=Development;' > ~/Desktop/Visual\ Studio\ Code.desktop
chmod +x ~/Desktop/Visual\ Studio\ Code.desktop

echo "Finalizado!"

clear

echo "A configuração está feita, você já pode fechar essa janela! (você também pode tentar reiniciar o computador para ter certeza de que tudo vai estar certo :D)"


