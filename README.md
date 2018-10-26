# practicing_R

# PARTIE 1 - RÉSULTATS
![Summary](https://i.imgur.com/ZOWfqtI.png)

* Table: 
```
> #TABELA DE FREQUENCIA NUMERO ----------------------------------------------------
> 
> freqNumero <- table(tcc$NUMERO)
> p_freq_relat_numero <- 100* prop.table(freqNumero)
> 
> freqNumero <- c(freqNumero, sum(freqNumero))
> p_freq_relat_numero <- c(p_freq_relat_numero, sum(p_freq_relat_numero))
> names(freqNumero)[44] <- "TOTAL"
> 
> #TABELA FINAL
> tabela_final_numero <- cbind(freqNumero, p_freq_relat_numero = round(p_freq_relat_numero, digits = 3))
> tabela_final_numero
      freqNumero p_freq_relat_numero
1              1               2.326
2              1               2.326
3              1               2.326
4              1               2.326
5              1               2.326
6              1               2.326
7              1               2.326
8              1               2.326
9              1               2.326
10             1               2.326
11             1               2.326
12             1               2.326
13             1               2.326
14             1               2.326
15             1               2.326
16             1               2.326
17             1               2.326
18             1               2.326
19             1               2.326
20             1               2.326
21             1               2.326
22             1               2.326
23             1               2.326
24             1               2.326
25             1               2.326
26             1               2.326
27             1               2.326
28             1               2.326
29             1               2.326
30             1               2.326
31             1               2.326
32             1               2.326
33             1               2.326
34             1               2.326
35             1               2.326
36             1               2.326
37             1               2.326
38             1               2.326
39             1               2.326
40             1               2.326
41             1               2.326
42             1               2.326
43             1               2.326
TOTAL         43             100.000

```
