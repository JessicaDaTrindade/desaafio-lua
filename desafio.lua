os.execute("chcp 65001")
-- Criatura
local monsterName = "CREEPER"
local description = "Um monstro furtivo com um temperamento explosivo"
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

local function getProgressBar(attribute)
  local fullChar = "🔲"
  local emptyChar = "🔳"

  local result = ""

  for i = 1, 10, 1 do
    if i <= attribute then
      result = result .. fullChar
    else
      result = result .. emptyChar
    end
  end
  return result
end

-- Cartão
print("==================================================")
print("| ")
print("| " .. monsterName)
print("| " .. description)
print("| ")
print("| Item:              " .. item)
print("| Som:               " .. sound)
print("| Horário Favorito:  " .. favoriteTime)
print("| Emoji Favorito:    " .. emoji)
print("| ")
print("| Atributos")
print("|    Ataque:         " .. getProgressBar(attackAttribute))
print("|    Defesa:         " .. getProgressBar(defenseAttribute))
print("|    Vida:           " .. getProgressBar(lifeAttribute))
print("|    Velocidade:     " .. getProgressBar(speedAtrribute))
print("|    Inteligência:   " .. getProgressBar(inteligenceAtrribute))
print("| ")
print("==================================================")
