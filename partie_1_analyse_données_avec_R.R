#PARTIE 1
#ANÁLISES DE DADOS DE UM TCC USANDO R A PARTIR DE UM ARQUIVO EXCEL
#IMPORTANDO ARQUIVO
install.packages("openxlsx")
library("openxlsx")
tcc <- read.xlsx("TCC_ESTATÍSTICA_SUSPEITA.xlsx")

#COLETANDO VALORES COMO MÉDIA, MODA E MEDIANA SEPARADOS POR COLUNAS
names(tcc)
summary(tcc)

#GERANDO UMA TABELA COM A FREQUENCIA DE CADA TIPO DENTRO DA COLUNA NUMERO
freqNumero <- table(tcc$NUMERO)
p_freq_relat_numero <- 100* prop.table(freqNumero)

freqNumero <- c(freqNumero, sum(freqNumero))
p_freq_relat_numero <- c(p_freq_relat_numero, sum(p_freq_relat_numero))
names(freqNumero)[44] <- "TOTAL"

#IMPRIMINDO TABELA FINAL
tabela_final_numero <- cbind(freqNumero, p_freq_relat_numero = round(p_freq_relat_numero, digits = 3))
tabela_final_numero
