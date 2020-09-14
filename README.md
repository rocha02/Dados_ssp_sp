Análise dos dados de criminalidade da Secretaria da Segurança Pública de
São Paulo (SSP/SP) - 2002 a 2020
================
Rafael Rocha

<style>
body {
text-align: justify}
</style>

### Objetivo

O presente relatório tem como objetivo apresentar uma análise preliminar
do banco de dados de índices criminais da Secretaria da Segurança
Pública do estado de São Paulo (SSP/SP). Este banco é composto pelo
número de ocorrências mensais de diversos crimes no período de 2002 a
abril de 2020, no nível de delegacia para todos os 645 municípios do
estado de São Paulo.

#### Série histórica dos principais índices criminais - 2002 a 2019

Uma primeira análise é a da série histórica dos principais índices
criminais no período de 18 anos entre 2002 e 2019. Como os dados foram
calculados por meio da agregação anual, os dados referentes aos quatro
primeiros meses de 2020 não foram utilizados nas análises a seguir.

Tendo em vista o grande número de municípios no estado de São Paulo,
nesta primeira análise optamos por agregar as 645 cidades paulistas de
acordo com sua macrorregião, ou seja, Interior, Grande São Paulo e
Capital. Foram escolhidos quatro tipos de crimes violentos, ou seja, nos
quais existe a ameaça ou uso da força: os homicídios dolosos, estupros
(totais), roubos (totais) e roubos (veículos).

![Figura 1. Série histórica dos
homicídios.](README_files/figure-gfm/unnamed-chunk-2-1.png)

Nas últimas duas décadas o estado de São Paulo apresentou uma redução
intensa dos homicídios dolosos. Como ilustração, no ano de 2002 o estado
registrou uma taxa de 33 homicídios dolosos por 100 mil habitantes,
enquanto em 2019 esta taxa chegou a seu patamar mais baixo desde o
início da série histórica pela SSP/SP - 6,5 homicídios dolosos por 100
mil.

É importante destacar que esta queda não se deu de maneira uniforme nas
três macrorregiões do estado. Enquanto a Capital e os municípios da
Grande São Paulo tiveram uma redução mais intensa, os municípios do
interior, especialmente a partir de 2008, tiveram uma evolução marcada
por certa estabilidade pontuada por elevações e reduções de menor
intensidade. Desde o ano de 2004, a capital paulista deixou de ser a
macrorregião com maior número de ocorrências de homicídio doloso,
posição que é ocupada desde então pelos municípios do Interior.

![Figura 2. Série histórica dos
estupros.](README_files/figure-gfm/unnamed-chunk-3-1.png)

Por sua vez, as ocorrências de estupro total - ou seja, a soma dos
estupros com os estupros de vulneráveis -, tiveram uma trajetória oposta
à dos homicídios dolosos no intervalo entre 2002 e 2019. As séries
históricas das macrorregiões se mantiveram relativamente estáveis até o
ano de 2008, quando houve um forte aumento das ocorrências de estupro,
sobretudo nos municípios do interior, que passaram de cerca de 1800
ocorrências nos municípios do interior em 2008 para mais de 7 mil
ocorrências de estupro no ano de 2012 neste mesmos municípios.

Alguns estudos apontam que esse forte aumento dos registros de estupros
no final dos anos 2000 se deve, ao menos em parte pela intensa
divulgação de campanhas para denunciar esse tipo de crime, associada
ao maior conhecimento da Lei Maria da Penha (de 2006), que pune de forma
mais severa agressões a mulheres, e à disseminação de delegacias
especializadas, contribuíram para que os casos abusos fossem relatados.
Ainda assim, a tendência de crescimento dos registros de estupros se
mantém no estado uma década depois destes marcos, ainda que de forma
mais lenta.

![Figura 3. Série histórica dos roubos
(total).](README_files/figure-gfm/unnamed-chunk-4-1.png)

Entre os anos de 2002 e 2019, o volume de roubos, ou seja, englobando
todas as modalidades, como de veículo, de carga, e demais, se concentrou
na capital paulista, seguida dos municípios do interior até o ano de
2018, quando o volume anual de roubos das cidades da Grande São Paulo
superou o das cidades do Interior. É possível identificar um aumento do
total de roubos de 2002 até 2009, com uma certa estabilização até 2013,
quando se inicia um aumento que vai culminar no pico de ocorrências de
roubo de 2014, maior registrado pela série histórica nas três
macrorregiões.

Após 2014, tanto nos municípios do interior como na capital se inicial
uma tendência de queda, que no entanto começou nos municípios da Grande
São Paulo somente em 2016, e que se manteve até 2019, exceto na capital
paulista, cujas ocorrências de roubos voltaram a aumentar no último ano
da série histórica.

![Figura 3. Série histórica dos roubos
(veículos).](README_files/figure-gfm/unnamed-chunk-5-1.png) A análise
especificamente da modalidade de roubo de veículos aponta que,
novamente, durante todo o período analisado, o maior volume das
ocorrências de roubo de veículos se concentrou na capital paulista,
seguido pelos municípios da Grande São Paulo, e finalmente, os
municípios do Interior. De forma geral, as três macrorregiões seguiram
tendências semelhantes, ainda que o voluma dos roubos de veiculos na
capital tenha saído sempre mais elevado: um período de queda das
ocorrências de roubos entre 2002 e 2008, seguindo de um momento de
aumento até o ano de 2014, no qual se atinge o pico dos roubos na série
histórica para as três macrorregiões, e finalmente, uma forte redução
entre os anos de 2015 e 2019.

#### Taxas dos principais índices criminais por município - 2002 a 2019

As séries históricas apresentam uma perspectiva mais geral acerca do
comportamento dos principais indicadores criminais nas macrorregiões do
estado no período entre 2002 e 2019. No entanto, a base original da
SSP/SP possui os dados desses indicadores criminais por município, e
portanto, passíveis de comparação entre eles.

No entanto, os municípios de São Paulo variam em tamanho e população,
entre 838 habitantes e 12 milhões, de forma que uma simples lista
comparativa evidentemente vai apresentar apenas os municípios com
centenas de milhares de habitantes, e logo, volume mais elevado de
crime. Dessa forma, utilizamos uma base com a população dos 645
municípios do estado nos anos de 2002 e 2019 e a mesclamos na base da
SSP/SP, em uma ação de pivotagem e posteriormente junção das bases, que
permitiu o cálculo da taxa dos indicadores criminais de cada município
por 100 mil habitantes.

Foram selecionados para a análise os crimes de homicídio doloso, estupro
(total), roubo (total).

##### 20 maiores taxas de homicídio doloso por município - 2002 a 2019

| Município                  |  Ano | População | Taxa de Homicídio Doloso |
| :------------------------- | ---: | --------: | -----------------------: |
| Santa Rita do Passa Quatro | 2003 |      2451 |                   204.00 |
| Santa Rita do Passa Quatro | 2011 |      2532 |                   197.47 |
| Santa Rita do Passa Quatro | 2012 |      2521 |                   158.67 |
| Borá                       | 2004 |       818 |                   122.25 |
| Flora Rica                 | 2010 |      1752 |                   114.16 |
| Aspásia                    | 2005 |      1800 |                   111.11 |
| Santa Mercedes             | 2012 |      2836 |                   105.78 |
| Nova Castilho              | 2003 |      1008 |                    99.21 |
| Santa Rita do Passa Quatro | 2005 |      2199 |                    90.95 |
| Iaras                      | 2003 |      3331 |                    90.06 |
| Nazaré Paulista            | 2002 |     14986 |                    86.75 |
| Iaras                      | 2005 |      3617 |                    82.94 |
| Arapeí                     | 2011 |      2484 |                    80.52 |
| Óleo                       | 2019 |      2496 |                    80.13 |
| Uru                        | 2013 |      1252 |                    79.87 |

Como é possível perceber, a tabela acima, com as maiores taxas de
homicídio doloso por 100 mil habitantes registradas no período entre
2002 e 2020 é composta somente por pequenos municípios com populações
inferiores a 3 mil habitantes. São cidades, que por serem tão pequenas,
ao registraram 1 ou 2 homicídios anuais são imediatamente catapultadas
para taxas mais elevadas que a de países mais violentos do mundo.

Justamente por isso não se recomenda, que o cálculo de taxas não seja
feito em populações inferiores a 100 mil habitantes. Assim, para os
cálculos de taxas a seguir, vamos filtrar apenas aqueles com população
igual ou maior a 100 mil habitantes no referido ano.

| Município            |  Ano | Macrorregião     | População | Taxa de Homicídio Doloso |
| :------------------- | ---: | :--------------- | --------: | -----------------------: |
| Cubatão              | 2002 | Interior         |    111922 |                    70.58 |
| Praia Grande         | 2002 | Interior         |    208329 |                    68.64 |
| Itaquaquecetuba      | 2002 | Grande São Paulo |    295663 |                    65.95 |
| Itapevi              | 2002 | Grande São Paulo |    173891 |                    65.56 |
| Itapecerica da Serra | 2003 | Grande São Paulo |    143253 |                    60.73 |
| Cubatão              | 2003 | Interior         |    113599 |                    58.10 |
| Hortolândia          | 2002 | Interior         |    166549 |                    57.64 |
| Guarujá              | 2002 | Interior         |    276301 |                    56.46 |
| Hortolândia          | 2003 | Interior         |    173060 |                    55.47 |
| Cotia                | 2002 | Grande São Paulo |    157726 |                    53.89 |
| Itaquaquecetuba      | 2003 | Grande São Paulo |    306208 |                    53.88 |
| Osasco               | 2002 | Grande São Paulo |    670345 |                    53.70 |
| Guarulhos            | 2002 | Grande São Paulo |   1132651 |                    51.83 |
| Taboão da Serra      | 2002 | Grande São Paulo |    205547 |                    50.60 |
| Diadema              | 2002 | Grande São Paulo |    367958 |                    50.55 |
| Franco da Rocha      | 2003 | Grande São Paulo |    115080 |                    50.40 |
| Cotia                | 2003 | Grande São Paulo |    161782 |                    50.07 |
| Jacareí              | 2002 | Interior         |    197061 |                    49.22 |
| Campinas             | 2003 | Interior         |   1006918 |                    49.16 |
| Itapevi              | 2003 | Grande São Paulo |    179209 |                    47.99 |

A partir da análise apenas dos 79 municípios com mais de 100 mil
habitantes, é possível perceber que a lista das 20 maiores taxas de
homicídios é dividida entre municípios da Grande São Paulo e do
Interior, e se concentra nos anos 2002 e 2003, que como vimos
anteriormente, foram os anos iniciais da forte queda nos homicídios
dolosos do estado de São Paulo. No ano de 2002 os três municípios com
taxas de homicídio mais elevadas - Cubatão, Praia Grande e
Itaquaquecetuba, tinham taxas de homicídio duas vezes mais elevadas que
a do estado naquele ano, 33 homicídios dolosos por 100 mil habitantes.

##### 20 maiores taxas de estupro por município - 2002 a 2019

| Município        |  Ano | Macrorregião     | População | Taxa de estupro total |
| :--------------- | ---: | :--------------- | --------: | --------------------: |
| Caraguatatuba    | 2019 | Interior         |    121532 |                 64.18 |
| Barretos         | 2014 | Interior         |    118521 |                 64.12 |
| Barretos         | 2012 | Interior         |    113338 |                 61.76 |
| Praia Grande     | 2012 | Interior         |    272390 |                 60.57 |
| Tatuí            | 2019 | Interior         |    121766 |                 56.67 |
| Itapetininga     | 2016 | Interior         |    158561 |                 56.13 |
| Itanhaém         | 2019 | Interior         |    101816 |                 55.98 |
| Barretos         | 2013 | Interior         |    117779 |                 55.19 |
| Botucatu         | 2019 | Interior         |    146497 |                 53.93 |
| Caraguatatuba    | 2018 | Interior         |    118526 |                 53.15 |
| Caraguatatuba    | 2012 | Interior         |    104150 |                 52.81 |
| Ourinhos         | 2013 | Interior         |    108674 |                 52.45 |
| Barretos         | 2011 | Interior         |    112730 |                 52.34 |
| Tatuí            | 2012 | Interior         |    109425 |                 52.09 |
| Ourinhos         | 2012 | Interior         |    104420 |                 51.71 |
| Guarujá          | 2012 | Interior         |    294669 |                 51.58 |
| Francisco Morato | 2011 | Grande São Paulo |    156064 |                 51.26 |
| Itapetininga     | 2019 | Interior         |    163901 |                 50.64 |
| Caraguatatuba    | 2013 | Interior         |    109678 |                 50.15 |
| Itapetininga     | 2017 | Interior         |    160070 |                 49.98 |

Enquanto as 20 maiores taxas de homicídio doloso registradas por
muunicípios se concentram nos anos de 2002 e 2003 , no casos das taxas
de estuupros por 100 mil habitantes essa concentração não é tão forte,
já que são listadas taxas registradas entre 2011 e 2019. Também é
imporante destacar que, com a exceção do município de Francisco Morato
no ano de 2011, todas as 20 maiores taxas de estupro por 100 mil
habitantes no período foram registradas no interior do estado, de forma
condizente com os dados da série histórica apresentada anteriormente. O
município de Caraguatatuba se destaca não somente com a maior taxa de
estupro registrada na série histórica em 2019, mas por aparecer 4 vezes
na lista, assim como Barretos.

##### 20 maiores taxas de roubo total por município - 2002 a 2019

| Município    |  Ano | Macrorregião     | População | Taxa de roubo total |
| :----------- | ---: | :--------------- | --------: | ------------------: |
| Diadema      | 2016 | Grande São Paulo |    415180 |             1781.40 |
| Diadema      | 2015 | Grande São Paulo |    412428 |             1638.59 |
| Diadema      | 2017 | Grande São Paulo |    417869 |             1605.53 |
| Diadema      | 2014 | Grande São Paulo |    409613 |             1545.85 |
| Diadema      | 2018 | Grande São Paulo |    420575 |             1477.98 |
| Praia Grande | 2017 | Interior         |    310024 |             1472.14 |
| Praia Grande | 2009 | Interior         |    249551 |             1424.56 |
| Diadema      | 2019 | Grande São Paulo |    423884 |             1414.07 |
| Osasco       | 2017 | Grande São Paulo |    697886 |             1396.22 |
| Praia Grande | 2007 | Interior         |    244959 |             1393.70 |
| São Paulo    | 2014 | Capital          |  11895893 |             1346.77 |
| Guarujá      | 2013 | Interior         |    306683 |             1341.78 |
| Praia Grande | 2011 | Interior         |    267307 |             1335.17 |
| Praia Grande | 2014 | Interior         |    293695 |             1333.70 |
| São Paulo    | 2016 | Capital          |  12038175 |             1325.43 |
| Osasco       | 2016 | Grande São Paulo |    696382 |             1325.28 |
| Praia Grande | 2010 | Interior         |    260769 |             1319.94 |
| São Paulo    | 2015 | Capital          |  11967825 |             1292.95 |
| Praia Grande | 2015 | Interior         |    299261 |             1277.48 |
| Praia Grande | 2006 | Interior         |    245386 |             1269.43 |

A lista com as 20 maiores taxas de roubos (total) por 100 mil habitantes
é a menos diversa dentre as apresentadas até então: 5 municípios ocupam
as 20 posições, sendo que apenas Diadema e Praia Grande são responsáveis
por 14 das 20 maiores taxas de roubo registradas no período. Das 20
posições, 8 são ocupadas por municípios da região metropolitana de São
Paulo, 9 por municípios do interior, e as outras 3 pela cidade de São
Paulo. Além de ocupar o topo da tabela, o município de Diadema nos
últimos 6 anos teve a pior taxa de roubos do Estado.

### Conclusão

O presente relatório tem como objetivo apresentar uma análise preliminar
do banco de dados de índices criminais da Secretaria da Segurança
Pública do estado de São Paulo (SSP/SP). Este banco é composto pelo
número de ocorrências mensais de diversos crimes no p
