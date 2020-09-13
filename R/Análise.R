library(usethis)
library(tidyverse)
library(dplyr)
library(ggplot2)

## Importação da base SSP/SP com dados criminais 2002-2019
ssp <- readr::read_rds("data/ssp.rds")

ssp <- janitor::clean_names(ssp)

str(ssp)

## Importação da base complementar com população dos municípios paulistas 2002-2019

pop_mun <- readxl::read_xlsx("data/populacao_municipios.xlsx")

str(pop_mun)

## Arrumação



## Criar coluna macrorregiao

unique(ssp$regiao_nome)

ssp <- ssp %>%
  mutate(macroregiao = case_when(regiao_nome == "Capital" ~ 'Capital',
                                regiao_nome == "Grande São Paulo" ~ "Grande São Paulo",
                                TRUE ~ 'Interior'))
unique(ssp$macroregiao)

## Criar base com soma anual dos principais indicadores criminais por municipio

mun_ano_crime <- ssp %>%
  group_by(municipio_nome, ano, macroregiao) %>%
  summarise(across(
    .cols = c(estupro_total, estupro_vulneravel, hom_doloso, vit_hom_doloso, roubo_banco, roubo_carga,
              roubo_outros, roubo_total, roubo_veiculo),
    .fns = sum, na.rm = TRUE
  ))

## Criar gráfico da série histórica por macrorregião 2002-2019 para os indicadores selecionados

mun_ano_crime %>%
  filter(macroregiao) %>%
  ggplot() +
  geom_line(aes(x = ano, y = hom_doloso)) +
  labs(
    x = "Ano",
    y = "Ocorrências",
    title = municipio_entrada) +
  theme_minimal()

## Pivotar base de população anual dos municípios

pop_mun <- pop_mun %>%
  pivot_longer(
    cols = starts_with("20"),
    names_to = "periodo",
    values_to = "ano"
  ) %>%
  select(municipio_nome, ano, periodo)

names(pop_mun)[names(pop_mun) == 'ano'] <- 'populacao'
names(pop_mun)[names(pop_mun) == 'periodo'] <- 'ano'

## Fazer merge da base indicadores criminais por municipio com base das populações anuais

pop_mun$ano <- update_columns(pop_mun, "ano", as.double)

mun_ano_crime_pop <- left_join(mun_ano_crime, pop_mun)

saveRDS(mun_ano_crime_pop, "mun_ano_crime_pop.rds")

## Criar taxa desses crimes por 100 mil habitantes

mun_ano_crime_tax <- mun_ano_crime_pop %>%
  mutate (across(
    c(estupro_total, estupro_vulneravel, hom_doloso, vit_hom_doloso, roubo_banco, roubo_carga,
        roubo_outros, roubo_total, roubo_veiculo),
   ~ .x * 100000 / populacao
  ))

mun_ano_crime_tax %>%
  arrange(desc(hom_doloso)) %>%
  View()

## Selecionar apenas municípios com mais de 100 mil habitantes em 2019

## Selecionar apenas municípios com mais de 50 mil habitantes em 2019

## Criar mapa de ocorrências



pop_mun <- pop_mun %>%
  pivot_longer(
    cols = starts_with("20"),
    names_to = "periodo",
    values_to = "ano"
  ) %>%
  select(municipio_nome, ano)

rm(gerar_grafico_serie())



ssp %>%
  group_by(municipio_nome, ano) %>%
  summarise_at(vars(hom_doloso),
               list(name = sum)) %>% View()


numero <- function(tab, nome_coluna) {

  tab %>%
    group_by(across(nome_coluna)) %>%
    summarise(
      valor_venda_medio = mean(venda_valor, na.rm = TRUE)
    )

}

gerar_grafico_serie <- function(municipio_entrada,crime) {

    ssp %>%
    filter(municipio_nome == municipio_entrada) %>%
    ggplot() +
    geom_line(aes(x = ano, y = crime)) +
    labs(
      x = "Ano",
      y = "Ocorrências",
      title = municipio_entrada) +
    theme_minimal()

}

gerar_grafico_serie(Adamantina, estupro)

## Calcular o total anual de cada município



## Mesclar base anual com o banco de população dos municípios

## Calcular a taxa de cada um dos crimes, e selecionar cidades com 100 e 50 mil habitantes
