-- Jogo da velha como conhecido no Brasil./ Tic-tac-toe as known in the English.
function cria_tabuleiro() 
    return {{" ", " ", " "}, {" ", " ", " "}, {" ", " ", " "}}
end

function pula_linha(_)
    for __ = 0, _ do print() end 
end
    
function abertura_jogo()
    pula_linha(7)
    print("\t=-=-=-=-=-=-=-=-=-=-=-=-=")
    print("\t=      TIC-TAC-TOE      =")
    print("\t=-=-=-=-=-=-=-=-=-=-=-=-=")
end 

function check_SO()
    home = os.getenv("HOME")
    if home == nil then return "^", ">", "-" end 
    return "^", ">", "-"
end

function recebe_nomes()
    print("\n")
    players = {}
    for _ = 1, 2 do
        np = _ 
        msg = " Digite o nome do player"..np..": "
        io.write(msg:format(_))
        table.insert(players, io.read())
    end
    return players
end

tabuleiro = cria_tabuleiro()
abertura_jogo()
recebe_nomes()
