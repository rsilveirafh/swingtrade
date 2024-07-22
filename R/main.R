# Estudos Day Trade
# julho de 2024
# Ricardo da Silveira Filho


# 0) Setup ----------------------------------------------------------------

# passar para BR

library(CandleStickPattern) # desenhar candles
library(quantmod) # baixar dados financeiros
library(tidyquant) # manipular dados financeiros
library(tidyverse) # manipulação de dados gerais


# 1) Dados ----------------------------------------------------------------

## Exemplo 1

# baixando os dados de uma ação do yahoo finances
x <- getSymbols(Symbols = "ITUB4.SA", src = "yahoo", auto.assign = FALSE)

# plotando somente os fechamentos
autoplot(x$ITUB4.SA.Close)

# autoassign = TRUE, cria a variavel com o nome da acao
getSymbols(Symbols = "ITUB4.SA",
		   src = "yahoo",
		   auto.assign = TRUE,
		   from = "2020-01-02",
		   to = "2024-07-19")

candleChart(ITUB4.SA, theme = "white")


## Exemplo 2

# usando regex para procurar ações
getSymbols("^BVSP")

# mais especificações
chartSeries(BVSP,
			type = "candlesticks",
			subset = "202001/",
			name = "IBOVESPA",
			theme = "white")


# espec diferentes
chartSeries(BVSP,
			type = "candlesticks",
			subset = "202101/",
			major.ticks = "months",
			name = "IBOVESPA",
			TA = NULL, # volume
			theme = "black")

# 2) Análises -------------------------------------------------------------


