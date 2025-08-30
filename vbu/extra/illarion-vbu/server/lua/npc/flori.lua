local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
talkingNPC:addCycleText("Muh!", "Moo!")
talkingNPC:addCycleText("Muh.", "Moo.")
talkingNPC:addCycleText("Muh?", "Moo?")
talkingNPC:addCycleText("#me stampft störrisch auf.", "#me stubbornly stamps one foot.")
talkingNPC:addCycleText("#me zerrt am Halfter.", "#me tears at the headcollar.")
talkingNPC:addCycleText("#me versucht den Halbling zu beißen.", "#me tries to bite the halfling.")
talkingNPC:addCycleText("#me schüttelt seinen Kopf.", "#me tosses his head.")
talkingNPC:addCycleText("#me tritt mit den Hinterläufen aus.", "#me kicks out with his hind legs.")
talkingNPC:addCycleText("#me hebt den Schwanz.", "#me deposits some droppings.")
talkingNPC:addCycleText("#me schlägt mit dem Schwanz nach ein paar Fliegen.", "#me wags his tail to get rid of some flies.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(6)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dies ist Flori, der eigensinnige Ochse.", "This is Flori, the stubborn ox.")
mainNPC:setUseMessage("Muh!", "Moo!")
mainNPC:setConfusedMessage("Muh?", "Moo?")
mainNPC:setAutoIntroduceMode(true)

mainNPC:initDone()
return mainNPC
end
local mNPC = initNpc()
initNpc = nil
local M = {}
function M.receiveText(npcChar, texttype, message, speaker) mNPC:receiveText(npcChar, texttype, speaker, message) end
function M.nextCycle(npcChar) mNPC:nextCycle(npcChar) end
function M.lookAtNpc(npcChar, char, mode) mNPC:lookAt(npcChar, char, mode) end
function M.useNPC(npcChar, char, counter, param) mNPC:use(npcChar, char) end
return M
