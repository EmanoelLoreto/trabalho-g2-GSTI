#!/bin/bash

echo "Dia da Semana"",""Soja Monitorada"",""Umidade Solo"",""Tamanho da Planta(cm)"",""Temperatura"",""Umidade do Ar"",""Vento"",""Temp. Max"",""Temp. Min"",""Precipitação"",""Precisa irrigar?" > pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

result=$(wget -qO- http://fpuntel.000webhostapp.com/soja/previsaoTempo.php)
diasSemana=(`echo $result | cut -c 1-3` `echo $result | cut -c 13-15` `echo $result | cut -c 25-27` `echo $result | cut -c 37-39` `echo $result | cut -c 49-51` `echo $result | cut -c 61-63` `echo $result | cut -c 73-75`)

# Informações da soja
# Ex: 59,11
result=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja1.php)
soja1=(`echo $result | cut -c 1-2` `echo $result | cut -c 4-5`)

# Informações meterologicas
# Ex: 15,61,13
result=$(wget -qO- http://fpuntel.000webhostapp.com/soja/estacaoMeteorologica.php)
estacaoMeteorologica=(`echo $result | cut -c 1-2` `echo $result | cut -c 4-5` `echo $result | cut -c 7-8`)

# Informações da previsão para a semana
# Separar as previsoes da semana por matriz separado por dia
# Ex: seg,18,13,8,ter,19,11,4,qua,16,15,4,qui,19,15,4,sex,17,12,4,sab,17,10,2,dom,17,14,2
result=$(wget -qO- http://fpuntel.000webhostapp.com/soja/previsaoTempo.php)
previsaoSegSoja1=(`echo $result | cut -c 5-6` `echo $result | cut -c 8-9` `echo $result | cut -c 11`)
previsaoTerSoja1=(`echo $result | cut -c 17-18` `echo $result | cut -c 20-21` `echo $result | cut -c 23`)
previsaoQuaSoja1=(`echo $result | cut -c 29-30` `echo $result | cut -c 32-33` `echo $result | cut -c 35`)
previsaoQuiSoja1=(`echo $result | cut -c 41-42` `echo $result | cut -c 44-45` `echo $result | cut -c 47`)
previsaoSexSoja1=(`echo $result | cut -c 53-54` `echo $result | cut -c 56-57` `echo $result | cut -c 59`)
previsaoSabSoja1=(`echo $result | cut -c 65-66` `echo $result | cut -c 68-69` `echo $result | cut -c 71`)
previsaoDomSoja1=(`echo $result | cut -c 77-78` `echo $result | cut -c 80-81` `echo $result | cut -c 83`)

#Soja 1 seg
if [ ${previsaoSegSoja1[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[0]}"",""1"",""${soja1[0]}"",""${soja1[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoSegSoja1[0]}"",""${previsaoSegSoja1[1]}"",""${previsaoSegSoja1[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 1 ter
if [ ${previsaoTerSoja1[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[1]}"",""1"",""${soja1[0]}"",""${soja1[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoTerSoja1[0]}"",""${previsaoTerSoja1[1]}"",""${previsaoTerSoja1[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 1 qua
if [ ${previsaoTerSoja1[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[2]}"",""1"",""${soja1[0]}"",""${soja1[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoQuaSoja1[0]}"",""${previsaoQuaSoja1[1]}"",""${previsaoQuaSoja1[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 1 qui
if [ ${previsaoQuiSoja1[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[3]}"",""1"",""${soja1[0]}"",""${soja1[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoQuiSoja1[0]}"",""${previsaoQuiSoja1[1]}"",""${previsaoQuiSoja1[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 1 sex
if [ ${previsaoSexSoja1[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[4]}"",""1"",""${soja1[0]}"",""${soja1[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoSexSoja1[0]}"",""${previsaoSexSoja1[1]}"",""${previsaoSexSoja1[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 1 sab
if [ ${previsaoSabSoja1[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[5]}"",""1"",""${soja1[0]}"",""${soja1[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoSabSoja1[0]}"",""${previsaoSabSoja1[1]}"",""${previsaoSabSoja1[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 1 dom
if [ ${previsaoDomSoja1[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[6]}"",""1"",""${soja1[0]}"",""${soja1[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoDomSoja1[0]}"",""${previsaoDomSoja1[1]}"",""${previsaoDomSoja1[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

# Informações da soja
# Ex: 59,11
result=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja2.php)
soja2=(`echo $result | cut -c 1-2` `echo $result | cut -c 4-5`)

# Informações meterologicas
# Ex: 15,61,13
result=$(wget -qO- http://fpuntel.000webhostapp.com/soja/estacaoMeteorologica.php)
estacaoMeteorologica=(`echo $result | cut -c 1-2` `echo $result | cut -c 4-5` `echo $result | cut -c 7-8`)

# Informações da previsão para a semana
# Separar as previsoes da semana por matriz separado por dia
# Ex: seg,18,13,8,ter,19,11,4,qua,16,15,4,qui,19,15,4,sex,17,12,4,sab,17,10,2,dom,17,14,2
result=$(wget -qO- http://fpuntel.000webhostapp.com/soja/previsaoTempo.php)
previsaoSegSoja2=(`echo $result | cut -c 5-6` `echo $result | cut -c 8-9` `echo $result | cut -c 11`)
previsaoTerSoja2=(`echo $result | cut -c 17-18` `echo $result | cut -c 20-21` `echo $result | cut -c 23`)
previsaoQuaSoja2=(`echo $result | cut -c 29-30` `echo $result | cut -c 32-33` `echo $result | cut -c 35`)
previsaoQuiSoja2=(`echo $result | cut -c 41-42` `echo $result | cut -c 44-45` `echo $result | cut -c 47`)
previsaoSexSoja2=(`echo $result | cut -c 53-54` `echo $result | cut -c 56-57` `echo $result | cut -c 59`)
previsaoSabSoja2=(`echo $result | cut -c 65-66` `echo $result | cut -c 68-69` `echo $result | cut -c 71`)
previsaoDomSoja2=(`echo $result | cut -c 77-78` `echo $result | cut -c 80-81` `echo $result | cut -c 83`)

#Soja 2 seg
if [ ${previsaoSegSoja2[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[0]}"",""2"",""${soja2[0]}"",""${soja2[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoSegSoja2[0]}"",""${previsaoSegSoja2[1]}"",""${previsaoSegSoja2[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 2 ter
if [ ${previsaoTerSoja2[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[1]}"",""2"",""${soja2[0]}"",""${soja2[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoTerSoja2[0]}"",""${previsaoTerSoja2[1]}"",""${previsaoTerSoja2[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 2 qua
if [ ${previsaoTerSoja2[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[2]}"",""2"",""${soja2[0]}"",""${soja2[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoQuaSoja2[0]}"",""${previsaoQuaSoja2[1]}"",""${previsaoQuaSoja2[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 2 qui
if [ ${previsaoQuiSoja2[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[3]}"",""2"",""${soja2[0]}"",""${soja2[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoQuiSoja2[0]}"",""${previsaoQuiSoja2[1]}"",""${previsaoQuiSoja2[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 2 sex
if [ ${previsaoSexSoja2[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[4]}"",""2"",""${soja2[0]}"",""${soja2[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoSexSoja2[0]}"",""${previsaoSexSoja2[1]}"",""${previsaoSexSoja2[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 2 sab
if [ ${previsaoSabSoja2[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[5]}"",""2"",""${soja2[0]}"",""${soja2[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoSabSoja2[0]}"",""${previsaoSabSoja2[1]}"",""${previsaoSabSoja2[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 2 dom
if [ ${previsaoDomSoja2[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[6]}"",""2"",""${soja2[0]}"",""${soja2[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoDomSoja2[0]}"",""${previsaoDomSoja2[1]}"",""${previsaoDomSoja2[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

# Informações da soja
# Ex: 59,11
result=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja3.php)
soja3=(`echo $result | cut -c 1-2` `echo $result | cut -c 4-5`)

# Informações meterologicas
# Ex: 15,61,13
result=$(wget -qO- http://fpuntel.000webhostapp.com/soja/estacaoMeteorologica.php)
estacaoMeteorologica=(`echo $result | cut -c 1-2` `echo $result | cut -c 4-5` `echo $result | cut -c 7-8`)

# Informações da previsão para a semana
# Separar as previsoes da semana por matriz separado por dia
# Ex: seg,18,13,8,ter,19,11,4,qua,16,15,4,qui,19,15,4,sex,17,12,4,sab,17,10,2,dom,17,14,2
result=$(wget -qO- http://fpuntel.000webhostapp.com/soja/previsaoTempo.php)
previsaoSegSoja3=(`echo $result | cut -c 5-6` `echo $result | cut -c 8-9` `echo $result | cut -c 11`)
previsaoTerSoja3=(`echo $result | cut -c 17-18` `echo $result | cut -c 20-21` `echo $result | cut -c 23`)
previsaoQuaSoja3=(`echo $result | cut -c 29-30` `echo $result | cut -c 32-33` `echo $result | cut -c 35`)
previsaoQuiSoja3=(`echo $result | cut -c 41-42` `echo $result | cut -c 44-45` `echo $result | cut -c 47`)
previsaoSexSoja3=(`echo $result | cut -c 53-54` `echo $result | cut -c 56-57` `echo $result | cut -c 59`)
previsaoSabSoja3=(`echo $result | cut -c 65-66` `echo $result | cut -c 68-69` `echo $result | cut -c 71`)
previsaoDomSoja3=(`echo $result | cut -c 77-78` `echo $result | cut -c 80-81` `echo $result | cut -c 83`)

#Soja 3 seg
if [ ${previsaoSegSoja3[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[0]}"",""3"",""${soja3[0]}"",""${soja3[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoSegSoja3[0]}"",""${previsaoSegSoja3[1]}"",""${previsaoSegSoja3[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 3 ter
if [ ${previsaoTerSoja3[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[1]}"",""3"",""${soja3[0]}"",""${soja3[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoTerSoja3[0]}"",""${previsaoTerSoja3[1]}"",""${previsaoTerSoja3[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 3 qua
if [ ${previsaoTerSoja3[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[2]}"",""3"",""${soja3[0]}"",""${soja3[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoQuaSoja3[0]}"",""${previsaoQuaSoja3[1]}"",""${previsaoQuaSoja3[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 3 qui
if [ ${previsaoQuiSoja3[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[3]}"",""3"",""${soja3[0]}"",""${soja3[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoQuiSoja3[0]}"",""${previsaoQuiSoja3[1]}"",""${previsaoQuiSoja3[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 3 sex
if [ ${previsaoSexSoja3[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[4]}"",""3"",""${soja3[0]}"",""${soja3[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoSexSoja3[0]}"",""${previsaoSexSoja3[1]}"",""${previsaoSexSoja3[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 3 sab
if [ ${previsaoSabSoja3[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[5]}"",""3"",""${soja3[0]}"",""${soja3[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoSabSoja3[0]}"",""${previsaoSabSoja3[1]}"",""${previsaoSabSoja3[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

#Soja 3 dom
if [ ${previsaoDomSoja3[2]} -ge 5 ]; then irrigar=`echo Sim`; else irrigar=`echo Não`; fi
echo "${diasSemana[6]}"",""3"",""${soja3[0]}"",""${soja3[1]}"",""${estacaoMeteorologica[0]}"",""${estacaoMeteorologica[1]}"",""${estacaoMeteorologica[2]}"",""${previsaoDomSoja3[0]}"",""${previsaoDomSoja3[1]}"",""${previsaoDomSoja3[2]}"",""$irrigar" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

# Somar todos e dividir pela quantidade de elementos afim de conseguir a média
tempMaxMedia=0
tempMaxMedia=`expr $tempMaxMedia + ${previsaoSegSoja1[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoTerSoja1[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoQuaSoja1[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoQuiSoja1[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoSexSoja1[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoSabSoja1[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoDomSoja1[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoSegSoja2[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoTerSoja2[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoQuaSoja2[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoQuiSoja2[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoSexSoja2[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoSabSoja2[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoDomSoja2[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoSegSoja3[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoTerSoja3[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoQuaSoja3[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoQuiSoja3[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoSexSoja3[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoSabSoja3[0]}`
tempMaxMedia=`expr $tempMaxMedia + ${previsaoDomSoja3[0]}`
tempMaxMedia=`expr $tempMaxMedia / 18`

# Somar todos e dividir pela quantidade de elementos afim de conseguir a média
tempMinMedia=0
tempMinMedia=`expr $tempMinMedia + ${previsaoSegSoja1[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoTerSoja1[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoQuaSoja1[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoQuiSoja1[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoSexSoja1[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoSabSoja1[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoDomSoja1[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoSegSoja2[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoTerSoja2[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoQuaSoja2[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoQuiSoja2[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoSexSoja2[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoSabSoja2[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoDomSoja2[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoSegSoja3[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoTerSoja3[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoQuaSoja3[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoQuiSoja3[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoSexSoja3[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoSabSoja3[1]}`
tempMinMedia=`expr $tempMinMedia + ${previsaoDomSoja3[1]}`
tempMinMedia=`expr $tempMinMedia / 18`

# Somar todos e dividir pela quantidade de elementos afim de conseguir a média
precipitacaoMedia=0
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoSegSoja1[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoTerSoja1[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoQuaSoja1[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoQuiSoja1[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoSexSoja1[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoSabSoja1[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoDomSoja1[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoSegSoja2[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoTerSoja2[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoQuaSoja2[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoQuiSoja2[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoSexSoja2[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoSabSoja2[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoDomSoja2[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoSegSoja3[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoTerSoja3[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoQuaSoja3[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoQuiSoja3[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoSexSoja3[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoSabSoja3[2]}`
precipitacaoMedia=`expr $precipitacaoMedia + ${previsaoDomSoja3[2]}`
precipitacaoMedia=`expr $precipitacaoMedia / 18`
	 
echo "Média da Temperatura Máxima: $tempMaxMedia" > soja$(date +"%d-%m-%Y-%H:%M").txt
echo "Média da Temperatura Mínima: $tempMinMedia" >> soja$(date +"%d-%m-%Y-%H:%M").txt
echo "Média da Precipitação: $precipitacaoMedia" >> soja$(date +"%d-%m-%Y-%H:%M").txt

echo "" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv

echo "Média da Temperatura Máxima"",""Média da Temperatura Mínima"",""Média da Precipitação" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv
echo "$tempMaxMedia"",""$tempMinMedia"",""$precipitacaoMedia" >> pontosSoja$(date +"%d-%m-%Y-%H:%M").csv
