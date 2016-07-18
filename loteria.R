carregar_jogos <- function(){
    
    emp <- "empate"
    j1 <- c("FLAMENGO", emp, "FLUMINENSE")
    j2 <- c("CORINTHIANS", emp, "PALMEIRAS")
    j3 <- c("INTERNACIONAL", emp, "SÃO PAULO")
    j4 <- c("ASA", emp, "AMERICA")
    j5 <- c("SAMPAIO CORRÊA", emp, "NAUTICO")
    j6 <- c("CRICIÚMA", emp, "ATLÉTICO/GO")
    j7 <- c("BOTAFOGO", emp, "VITORIA")
    j8 <- c("CORITIBA", emp, "AVAI")
    j9 <- c("BOTAFOGO/PB", emp, "CONFIANÇA/SE")
    j10 <- c("JOINVILLE", emp, "ATLÉTICO/PR")
    j11 <- c("FIGUEIRENSE/SC", emp, "CRUZEIRO")
    j12 <- c("SANTOS", emp, "SPORT")
    j13 <- c("GOIAS", emp, "GREMIO")
    j14 <- c("ATLÉTICO/MG", emp, "VASCO")
    
    jogos <- list(j1, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14)
    
    jogos
    
}


carregar_probs <- function(){
    
    p1 <- c(0.435, 0.251, 0.314)
    p2 <- c(0.455, 0.297, 0.248)
    p3 <- c(0.356, 0.264, 0.381)
    p4 <- c(0.431, 0.245, 0.324)
    p5 <- c(0.483, 0.239, 0.278)
    p6 <- c(0.473, 0.293, 0.234)
    p7 <- c(0.586, 0.230, 0.184)
    p8 <- c(0.633, 0.224, 0.144)
    p9 <- c(0.395, 0.343, 0.262)
    p10 <- c(0.398, 0.356, 0.246)
    p11 <- c(0.320, 0.275, 0.405)
    p12 <- c(0.567, 0.248, 0.185)
    p13 <- c(0.471, 0.304, 0.225)
    p14 <- c(0.681, 0.209, 0.110)
    
    probs <- list(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
    probs
    
}


gerar_jogos <- function(probs, jogos){
    
    resultado <- c()
    
    for(i in 1:length(jogos)){
        
        r <- sample(c("1", "X", "2"), 1, prob=probs[[i]])
        print(concat("jogo ", i, ": ", r))
        
        
    }    
    
}


concat <- function(..., sep='') {
    paste(..., sep=sep, collapse=sep)
}

jogos <- carregar_jogos()
probs <- carregar_probs()
gerar_jogos(probs, jogos)


