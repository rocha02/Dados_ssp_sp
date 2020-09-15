library(usethis)
library(tidyverse)
library(dplyr)
library(ggplot2)
library(knitr)
library(sf)
library(geobr)

usethis::use_readme_rmd()

## Importação da base SSP/SP com dados criminais 2002-2019
ssp <- readr::read_rds("data/ssp.rds")

ssp <- janitor::clean_names(ssp)

str(ssp)

## Importação da base complementar com população dos municípios paulistas 2002-2019

pop_mun <- readxl::read_xlsx("data/populacao_municipios.xlsx")

str(pop_mun)

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

macrorregiao <- mun_ano_crime %>%
  group_by(macroregiao, ano) %>%
  summarise(across(
    .cols = c(estupro_total, estupro_vulneravel, hom_doloso, vit_hom_doloso, roubo_banco, roubo_carga,
              roubo_outros, roubo_total, roubo_veiculo),
    .fns = sum, na.rm = TRUE
  ))

macrorregiao <- macrorregiao %>%
  filter(ano < 2020)

macrorregiao  %>%
  ggplot(aes(x = ano, y = hom_doloso, group = macroregiao, color = macroregiao)) +
  geom_line()+
  geom_point(aes(x = ano, y = hom_doloso, group = macroregiao, color = macroregiao)) +
  scale_x_continuous(breaks = seq(2002, 2019)) +
  labs(
    x = "Ano",
    y = "Homicídios Dolosos",
    color = "Macrorregião",
    title = "Série histórica das ocorrências de homicídio doloso em São Paulo",
    subtitle = "Por macrorregiões - 2002 a 2019"
  ) +
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
saveRDS(mun_ano_crime_tax, "mun_ano_crime_tax.rds")
saveRDS(macrorregiao, "macrorregiao.rds")

## Criar taxa desses crimes por 100 mil habitantes

mun_ano_crime_tax <- mun_ano_crime_pop %>%
  mutate (across(
    c(estupro_total, estupro_vulneravel, hom_doloso, vit_hom_doloso, roubo_banco, roubo_carga,
        roubo_outros, roubo_total, roubo_veiculo),
   ~ .x * 100000 / populacao,
  ))

mun_ano_crime_tax %>%
  arrange(desc(hom_doloso)) %>%
  View()

## Criar mapa de ocorrências

tab_municipios <- geobr::read_municipality()

tab_municipios %>%
  filter(abbrev_state == "SP") %>%
  ggplot()+
  geom_sf()

tab_hom_mun <- mun_ano_crime %>%
  right_join(tab_estados, by = c("estado" = "abbrev_state")) %>%
  filter(abbrev_state == "SP")

tab_hom_mun %>%
  ggplot() +
  geom_sf(aes(geometry = geom, fill = hom_doloso))



