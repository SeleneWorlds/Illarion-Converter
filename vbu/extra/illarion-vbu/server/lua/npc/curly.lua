local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
talkingNPC:addCycleText("Baa!", "Baa!")
talkingNPC:addCycleText("Baa.", "Baa.")
talkingNPC:addCycleText("Baa?", "Baa?")
talkingNPC:addCycleText("#me scharrt im Boden.", "#me paws the ground.")
talkingNPC:addCycleText("#me schlägt mit dem Schwanz.", "#me flicks his tail.")
talkingNPC:addCycleText("#me liegt schlafend am Boden und sieht aus wie ein Fellball.", "#me curls up to nap looking like a ball of wool.")
talkingNPC:addCycleText("#me pustet leise.", "#me bleats softly.")
talkingNPC:addCycleText("#me kaut langsam ein Grashalm.", "#me chews a blade of grass slowly.")
talkingNPC:addCycleText("#me hüpft spielend umher.", "#me scampers about playing.")
talkingNPC:addCycleText("#me beugt seinen Kopf.", "#me bows his head.")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Das ist Curly das sanfte Lamm.", "This is Curly the gentle lamb.")
mainNPC:setUseMessage("Baa!", "Baa!")
mainNPC:setConfusedMessage("Baa?", "Baa?")
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
