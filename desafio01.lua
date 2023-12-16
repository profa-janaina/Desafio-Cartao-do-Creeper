-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local monsterName = 'CREEPER'
local description = " Uma criatura hostil, fatal e com temperamento explosivo"
local item = "Pólvora"
local sound = "Tsssss"
local emoji = "🧨"
local periodTime = "Noturno"
local letalGun = "Flecha"
local game = "Minecraft"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 2
local lifeAttribute = 5
local speedAttribute = 7
local intelligenceAttribute = 2

-- Funções
local function getProgressBar(attribute)
    local fullChar = "🔲"
    local emptyChar = "⬛"
    local result = ""

    for i = 1, 10, 1 do
        if i<= attribute then
           result = result .. fullChar 
        else
            result = result .. emptyChar 
        end
    end
    return result
end

local function drawCreeper()
    local asciiCode = [[       
|          
|                           ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛
|                           ⬛🟩🟩🟩🟩🟩🟩🟩🟩⬛
|                           ⬛🟩🟩🟩🟩🟩🟩🟩🟩⬛
|                           ⬛🟩⬛⬛🟩🟩⬛⬛🟩⬛
|                           ⬛🟩⬛⬛🟩🟩⬛⬛🟩⬛
|                           ⬛🟩🟩🟩⬛⬛🟩🟩🟩⬛
|                           ⬛🟩🟩⬛⬛⬛⬛🟩🟩⬛
|                           ⬛🟩🟩⬛⬛⬛⬛🟩🟩⬛
|                           ⬛🟩🟩⬛🟩🟩⬛🟩🟩⬛
|                           ⬛🟩🟩🟩🟩🟩🟩🟩🟩⬛
|                           ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛
|    ]]
    
    return asciiCode
end

-- Frente do cartão
local function cardFront()
    print("==========================================================================")
    print("|          ╚(•⌂•)╝         CREEPER - MINECRAFT        ╚(•⌂•)╝             ")
    print("==========================================================================")
    print("|               " .. drawCreeper())
    print("|")
    print("==========================================================================")
end


-- Verso do cartão
local function cardBack()
    print("==========================================================================")
    print("|   ╚(•⌂•)╝        ╚(•⌂•)╝       ╚(•⌂•)╝       ╚(•⌂•)╝     ╚(•⌂•)╝        ")
    print("==========================================================================")
    print("|")
    print("|" .. monsterName)
    print("|" .. description)
    print("|")
    print("| Jogo: " .. game)
    print("| Item: " .. item)
    print("| Som: " .. sound)
    print("| Emoji favorito: " .. emoji)
    print("| Horário Favorito: " .. periodTime)
    print("| Arma letal: " .. letalGun)
    print("|")
    print("| Atributos")
    print("|   Ataque:       " .. getProgressBar(attackAttribute))
    print("|   Defesa:       " .. getProgressBar(defenseAttribute))
    print("|   Vida:         " .. getProgressBar(lifeAttribute))
    print("|   Velocidade:   " .. getProgressBar(speedAttribute))
    print("|   Inteligência: " .. getProgressBar(intelligenceAttribute))
    print("|")
    print("==========================================================================")
end

print("Digite: F ou V para ver a frente ou verso do cartão")
local choice = io.read()

if string.lower(choice) == "f" then
    cardFront()
else
    cardBack()
end