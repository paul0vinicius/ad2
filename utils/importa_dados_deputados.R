get_dados_deputados <- function(){
  read.csv("../database/eleicoes2014.csv", encoding = "latin1", stringsAsFactors = FALSE) %>%
    mutate(# Replace dos campos com NA pela mediana para evitar a perda de dados.
           recursos_de_outros_candidatos.comites = replace(recursos_de_outros_candidatos.comites, is.na(recursos_de_outros_candidatos.comites), 0),
           recursos_de_partidos = replace(recursos_de_partidos, is.na(recursos_de_partidos), 0),
           recursos_de_pessoas_físicas = replace(recursos_de_pessoas_físicas, is.na(recursos_de_pessoas_físicas), 0),
           recursos_de_pessoas_juridicas = replace(recursos_de_pessoas_juridicas, is.na(recursos_de_pessoas_juridicas), 0),
           recursos_proprios = replace(recursos_proprios, is.na(recursos_proprios), 0)
    )
}

get_kaggle_data <- function(){
  read.csv("../database/train.csv", stringsAsFactors = FALSE)
}

get_kaggle_data_test <- function(){
  read.csv("../database/test.csv", stringsAsFactors = FALSE)
}