<h4 align="center">
  🏴‍☠️ Script em construção... 🏴‍☠️
</h4>

<h1 align="center">
  <img alt="Logo do repositório incluindo o nome da disciplina, logo da AMF e o semestre
  2021/1 " src="Background.png" width="650px">
</h1>

# Trabalho final de GSTI

## Repositório contendo trabalho final de Gerenciamento de Serviços de TI

<!--ts-->
* [Sobre](#enunciado)
* Como usar
  * [Instalação](#instalação)
* [Tecnologias](#tecnologias)
* [Autor](#autor)
<!--te-->

### Features
- [x] README.md
- [x] Trabalho final

### Instalação
Para execução deste script você deverá instalar no git bash no Windows ou utilizar o
terminal no Linux.
Depois de baixar o arquivo principal, é preciso:
```bash
# Clone o repostitorio e acesse o diretório.
$ git clone https://github.com/EmanoelLoreto/trabalho-g2-GSTI.git
$ bash ./trabalho-g2-GSTI/trabalho-gerenciamento.sh
```

### Tecnologias
As seguintes ferramentas foram usadas na construção do projeto:
- [Git for windows](https://git-scm.com/downloads/)
- [Wget for git bash](https://eternallybored.org/misc/wget/)
- [EXPR para expressões](https://guialinux.uniriotec.br/expr/)
- Terminal Ubuntu

### Autor

**Emanoel Loreto** - *https://github.com/EmanoelLoreto*


# Enunciado

Uma aplicação IoT com diversos sensores para coleta de dados foi
implementada em uma lavoura de soja, onde são coletadas as seguintes
informações:
- Umidade do solo;
- Tamanho da planta (em cm);
A propriedade também possui uma estação meteorológica que coleta as
seguintes informações:
- Temperatura;
- Umidade do ar;
- Vento;
Além das informações da propriedade, o sistema também utiliza dados de
satélite meteorológicos através de uma API para melhor tomada de decisão, os
dados de satélite fornecem as seguintes informações:
- Dia da semana;
- Temperatura máxima;
- Temperatura mínima;
- Precipitação;
Todos os dados da previsão do tempo são obtidos através de uma API e
estão organizados da seguinte forma:
diaSemana; temperaturaMaxima; temperaturaMinima; Precipitação.

Por exemplo:
seg,35,20,4,ter,32,24....

Atualmente são monitorados 3 locais de soja, a propriedade conta com uma
estação meteorológica e a utiliza dados da previsão do tempo, os links com os
dados estão disponíveis em:
- http://fpuntel.000webhostapp.com/soja/soja1.php
- http://fpuntel.000webhostapp.com/soja/soja2.php
- http://fpuntel.000webhostapp.com/soja/soja3.php
- http://fpuntel.000webhostapp.com/soja/estacaoMeteorologica.php
- http://fpuntel.000webhostapp.com/soja/previsaoTempo.php

Considere que o script sempre é executado aos domingos e deve fazer uma
previsão para a semana inteira. Por conta da gama de informações coletadas é

necessário criar um script que compile todos esses dados e os transforme em uma
planilha.
O arquivo final deve ser organizado da seguinte forma na planilha:

O campo precisa irrigar? será preenchido pelo script construído, onde se a
precipitação do dia for maior ou igual a 5 é necessário irrigar, menor que 5 não é
necessário. Um exemplo da planilha pode ser visto neste link: https://bit.ly/3f5D8Nf.
Dica: se você colocar uma vírgula entre cada dado você separa-os sem
células na planilha, por exemplo:
echo "Aula" "," "de" "," "GSTI" > test.csv
Ficará assim:

O arquivo final com os dados da soja pode ser organizado de duas maneiras
e você deve escolher entre elas:

- Uma planilha única com as informações de segunda até domingo para
cada um dos 3 pontos analisados. Neste caso o nome do arquivo
deverá ser: pontosSoja$date.csv. Uma dica, armazene o valor de
date em uma variável, pois sempre a data será alterada.
- Uma planilha para cada um dos pontos de soja analisado. Neste caso
o nome do arquivo deverá ser: soja1$date.csv, soja2$date.csv e
soja3$date.csv. Todos com a mesma data. Uma dica, armazene o
valor de date em uma variável, pois sempre a data será alterada.
Também deve-se criar um arquivo soja$date.txt com as seguintes
informações:

- Temperatura Máxima Média para a semana.
- Temperatura Mínima Média para a semana.
- Precipitação Média da semana.
Sempre que executar o script novos arquivos devem ser criados e os
arquivos antigos devem ser mantidos como um log do tempo na propriedade. Caso
deseje colocar mais parâmetros é possível hospedar mais arquivos no domínio.
