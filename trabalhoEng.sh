#!/bin/bash



clear
Menu(){
   echo "------------------------------------------"
   echo "    Linux Comandos Basicos          "
   echo "------------------------------------------"
   echo
   echo "[  1  ] Informando a localização atual"
   echo "[  2  ] Mostrar qual o tipo de arquivo"
   echo "[  3  ] Criar um diretorio"
   echo "[  4  ] Apagar um diretório não vazio "
   echo "[  5  ] Efetuar cálculo, maior/menor"	
   echo "[  6  ] Exibir as primeiras 10 linhas de um arquivo"
   echo "[  7  ] Exibir as últimas 10 linhas de um arquivo"
   echo "[  8  ] Listar e exibir binários"
   echo "[  9  ] Mostrar o caminho de  um diretório"
   echo "[  10 ] Exibir árvore do diretório"
   echo "[  11 ] Copiar um arquivo para outro diretório"
   echo "[  12 ] Mover arquivo de lugar"
   echo "[  13  ] Sair"
   echo
   echo -n "Qual a opcao desejada ? "
   read opcao
   case $opcao in
      1) Localizar ;;
      2) ArquivoTipo ;;
      3) CriarDir ;;
      4) ApagarDiretorio ;;
      5) Calcular ;;
      6) ExibirPrimeirasLinhas ;;
      7) ExibirUltimasLinhas ;;
      8) Listar ;;
      9) MostrarDiretorio ;;
     10) ExibirArvore ;;
     11) CopiarArquivo ;;
     12) MoverArquivo ;;
     13) exit ;;
      *) "Opcao desconhecida." ; echo ; Principal ;;
   esac
}
Localizar(){
clear  #comando linux para limpar
#echo "Deseja saber localização atual?"
#read localizacao
pwd #comando linux informando localização atual
echo "Pressione enter para voltar ao menu"
read vazio

clear
  Menu
}

ArquivoTipo() {
clear
ls -lah #comando linux para listar de forma humana
echo "Deseja mostrar qual o tipo de arquivo"
read tipo
file $tipo #comando linux para indicar qual o tipo de arquivo
echo "Pressione enter para voltar ao menu"
read vazio
clear
   Menu
}

#Criando diretório e listando
CriarDir() {
clear #comando linux para limpar
echo "Nome do diretorio"
read nome
mkdir $nome  # comando linux criar diretório
#echo "Deseja listar diretorio?"
#read criarDir
ls -al | grep "^d" #comando linux para listar diretório
echo "Pressione enter para voltar ao menu"
read vazio
clear  #comando linux para limpar
  Menu
}

#Apagando diretório

ApagarDiretorio() {
clear  #comando linux para limpar
ls -l
echo "Deseja apagar qual diretório não vazio?"
read apagar
rm -rf $apagar #comando linux para apagar diretório não vazio
ls -l #comando linux para listar
echo "Pressione enter para voltar ao menu"
read vazio
clear  #comando linux para limpar
   Menu
}


#Efetuando calculo maior/menor
Calcular() {
clear  #comando linux para limpar
echo "Efetuar calculo maior, menor?"

echo "Digite um numero: "
read n1

echo "Digite outro numero: "
read n2

if [ $n1 -lt $n2 ] 
then
	echo "Segundo número é maior"
elif [ $n1 -gt $n2 ] 
then
	echo "Primeiro número é maior"
elif [ $n1 -eq $n2 ] 
then
	echo "Os números são iguais"
fi
echo "Pressione enter para voltar ao menu"
read vazio
clear
   Menu
}

ExibirPrimeirasLinhas() {

clear  #comando linux para limpar
#nano abc.txt --> criando um arquivo abc.txt
echo "Criando arquivo de texto?"
read criar

touch abc.txt #comando linux para criar um arquivo .txt
chmod 777 abc.txt #Permissao total
nano abc.txt #Editar arquivo
echo "Quantas linhas voce quer ler?"
read linhas
head -$linhas abc.txt
read vazio
clear 
   Menu
}

ExibirUltimasLinhas() {

clear  #comando linux para limpar
#nano abc.txt --> criando um arquivo abc.txt
echo "Editar arquivo de texto..."
sleep 2

touch abc.txt #comando linux para criar um arquivo .txt
chmod 777 abc.txt #Permissao total
nano abc.txt #Editar arquivo
#echo "Exibindo as ultimas linhas"
echo "Quantas ultimas linhas voce quer ler?"
read linhas
tail -$linhas abc.txt #comando linux que informa as últimas linhas
read vazio
clear 
   Menu
}

Listar() {
clear
echo "Deseja listar o caminho de qual arquivo?"
read arquivo
which $arquivo #comando do linux que mostra o caminho
echo "Pressione enter para voltar ao menu"
read vazio
clear
   Menu
}

MostrarDiretorio() {
clear
whereis u -M / usr / man / man1 -S / usr / src -f * #Listar os diretórios onde os perl arquivos de origem
echo "Pressione enter para voltar ao menu"
read vazio
clear
   Menu
}


ExibirArvore() {
clear
apt-get install tree
tree #comando do linux que mostra a árvore binária
echo "Pressione enter para voltar ao menu"
read vazio
clear

   Menu
}


CopiarArquivo() {
clear
ls -l  #comando linux que lista arquivos
echo "Qual o arquivo a ser copiado?"
read file_cp
cp -R $file_cp /home/aluno/Documentos #comando linux que copia arquivo para documentos
ls -l /home/aluno/Documentos
echo "Pressione enter para voltar ao menu"
read vazio
clear

   Menu
}


MoverArquivo() {
clear
ls -l  #comando linux que lista arquivos
echo "Qual o arquivo a ser mover?"
read file_cp
mv $file_cp /home/aluno/Documentos #comando linux que mover arquivo para documentos
ls -l /home/aluno/Documentos
echo "Pressione enter para voltar ao menu"
read vazio
clear
   Menu
}
Menu

