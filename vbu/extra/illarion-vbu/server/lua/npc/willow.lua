local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
talkingNPC:addCycleText("#me trommelt mit ihren Füßen.", "#me thumps her foot.")
talkingNPC:addCycleText("#me hopst wild umher.", "#me jumps about hyperly.")
talkingNPC:addCycleText("#me ist in ständiger Bewegung.", "#me is in constant movement.")
talkingNPC:addCycleText("#me zuckt mit ihrer Nase.", "#me twitches her nose.")
talkingNPC:addCycleText("#me zieht ein Grashalm aus der Wiese du mümmelt ihn langsam.", "#me pulls a blade of grass from the ground and chews it slowly.")
talkingNPC:addCycleText("#me kratzt sich hinter einem Löffel.", "#me scratches her ear.")
talkingNPC:addCycleText("#me knabbert an einer halb gegessenen Karotte.", "#me takes a bite of a half eaten carrot.")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Das ist Willow, der energetische Hase.", "This is Willow, the energetic bunny.")
mainNPC:setUseMessage("#me trommelt mit ihren Füßen.", "#me thumps her foot.")
mainNPC:setConfusedMessage("#me trommelt mit ihren Füßen.", "#me thumps her foot.")
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
