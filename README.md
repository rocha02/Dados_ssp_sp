Análise dos dados de criminalidade da Secretaria da Segurança Pública de
São Paulo (SSP/SP) - 2002 a 2020
================
Rafael Rocha

<!-- README.md is generated from README.Rmd. Please edit that file -->

# Série histórica dos principais índices criminais - 2002 a 2019

![Figura 1. Série histórica dos
homicídios.](README_files/figure-gfm/unnamed-chunk-2-1.png)

The goal of Dados\_ssp\_sp is to …

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

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

Maiores taxas de homicídios registradas entre 2002 e 2020

Como é possível perceber, a tabela acima, com as maiores taxas de
homicídio doloso por 100 mil habitantes registradas no período entre
2002 e 2020 é composta somente por pequenos municípios com populações
inferiores a 3 mil habitantes. São cidades, que por serem tão pequenas,
ao registraram 1 ou 2 homicídios anuais são imediatamente catapultadas
para taxas mais elevadas que a de países mais violentos do mundo.

Justamente por isso não se recomenda, que o cálculo de taxas não seja
feito em populações inferiores a 100 mil habitantes. Assim, para os
cálcuulos de taxas a seguir, vamos filtrar apenas aqueles com população
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

Maiores taxas de homicídios registradas entre 2002 e 2020
