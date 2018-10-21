install.packages("openxlsx")
library("openxlsx")

tcc <- read.xlsx("TCC_ESTATÍSTICA_SUSPEITA.xlsx")
names(tcc)
summary(tcc)


#TABELA DE FREQUENCIA NUMERO ----------------------------------------------------

freqNumero <- table(tcc$NUMERO)
p_freq_relat_numero <- 100* prop.table(freqNumero)

freqNumero <- c(freqNumero, sum(freqNumero))
p_freq_relat_numero <- c(p_freq_relat_numero, sum(p_freq_relat_numero))
names(freqNumero)[44] <- "TOTAL"

#TABELA FINAL
tabela_final_numero <- cbind(freqNumero, p_freq_relat_numero = round(p_freq_relat_numero, digits = 3))
tabela_final_numero