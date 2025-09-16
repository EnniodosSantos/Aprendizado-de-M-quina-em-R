#Veja esse exemplo a seguir, onde um pesquisador investiga o efeito de diferentes quantidades de fertilizante na produção de grama em solo calcário. 
#Dez áreas de 1 metro quadrado foram escolhidas ao acaso, e diferentes quantidades do fertilizante foram aplicados em cada área. 
#Dois meses depois, as seguintes produções de grama foram obtidas. 
#Há alguma restrição para o uso de regressão linear nesse cenário específico? Como você faria a análise.

Para verificar se os dados são apropriados para serem modelados em uma regressão linear devemos verificar se a amostra tem certas caracteristicas
- Normalidade
- Linearidade
- Correlação

Para isso vou utilizar um script em R

# Definindo diretório
setwd("/home/nabu/Documentos/01.Projetos/Aprendizado de Maquina/Regressão Linear Simples")

#Lendo os dados
dados <- read.table("fertilizante_producao.txt", header = TRUE)
str(dados)

#Avaliação das variáveis numérica
normality(dados)
plot_normality(dados)

library(rcompanion)
plotNormalHistogram(dados)

#Correlação das variáveis numéricas
correlate(dados)
