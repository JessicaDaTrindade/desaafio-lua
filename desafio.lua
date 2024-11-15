os.execute("chcp 65001")
-- Criatura
local MOSTER_NAME <const> = "CREEPER"
local description = "Um monstro furtivo com um temperamento explosivo."
local emoji = "😈"
local sound = "Tssss"
local favoriteTime = "Noturno"
local item = "Pólvora"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 1
local lifeAttribute = 5
local speedAtrribute = 7
local inteligenceAtrribute = 2

-- Bordas
local BORDER_UPPER <const> = "╔═════.★. .════════════════════════════════════════════════════╗"
local BORDER_LOWER <const> = "╚════════════════════════════════════════════════════. .★.═════╝"
local BORDER_LEFT <const> = "| "

--verso
local historyMonster = "| É uma criatura hostil comum que se aproxima silenciosamente  |\n" ..
    "| dos jogadores e então explode, o que pode destruir blocos e  |\n" ..
    "| causar grandes quantidades de dano. Creepers são uma grande  |\n" ..
    "| fonte de pólvora, bem como a única maneira de obter a maioria|\n" ..
    "| dos discos musicais.                                         |"

local function getProgressBar(attribute)
  local fullChar  = "🔲"
  local emptyChar = "🔳"

  local result    = ""

  for i = 1, 10, 1 do
    if i <= attribute then
      result = result .. fullChar
    else
      result = result .. emptyChar
    end
  end
  return result
end

-- Cartão Frente
print(BORDER_UPPER)
print(BORDER_LEFT .. "                                                             |")
print(BORDER_LEFT .. MOSTER_NAME .. "                                                      |")
print(BORDER_LEFT .. description .. "            |")
print(BORDER_LEFT .. "                                                             |")
print(BORDER_LEFT .. "Item:              " .. item .. "                                   |")
print(BORDER_LEFT .. "Som:               " .. sound .. "                                     |")
print(BORDER_LEFT .. "Horário Favorito:  " .. favoriteTime .. "                                   |")
print(BORDER_LEFT .. "Emoji Favorito:    " .. emoji .. "                                        |")
print(BORDER_LEFT .. "                                                             |")
print(BORDER_LEFT .. "Atributos                                                    |")
print(BORDER_LEFT .. "    Ataque:         " .. getProgressBar(attackAttribute) .. "                     |")
print(BORDER_LEFT .. "    Defesa:         " .. getProgressBar(defenseAttribute) .. "                     |")
print(BORDER_LEFT .. "    Vida:           " .. getProgressBar(lifeAttribute) .. "                     |")
print(BORDER_LEFT .. "    Velocidade:     " .. getProgressBar(speedAtrribute) .. "                     |")
print(BORDER_LEFT .. "    Inteligência:   " .. getProgressBar(inteligenceAtrribute) .. "                     |")
print(BORDER_LEFT .. "                                                             |")
print(BORDER_LOWER)

-- Cartão verso
print(BORDER_UPPER)
print(historyMonster)
print(BORDER_LOWER)
