local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
talkingNPC:addCycleText("#me beugt seinen Kopf.", "#me bows his head.")
talkingNPC:addCycleText("#me bewegt sich anmutig.", "#me moves about gracefully.")
talkingNPC:addCycleText("#me kaut auf einem Blatt herum.", "#me nibbles on some grass.")
talkingNPC:addCycleText("#me schnaubt.", "#me snorts.")
talkingNPC:addCycleText("#me scharrt im Boden.", "#me paws the ground.")
talkingNPC:addCycleText("#me rollt sich zum Schlafen zusammen.", "#me curls up to nap.")
talkingNPC:addCycleText("#me schaut mit groﬂen Augen umher.", "#me flicks his tail.")
talkingNPC:addCycleText("#me dreht den Kopf zur Seite.", "#me turns his head looking off in the distance.")
talkingNPC:addCycleText("#me reibt sein Geweih gegen einen Baum. Etwas Rinde f‰llt zu Boden.", "#me scrapes his horns against a tree removing some bark.")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dies ist Russet das anmutige Hirsch.", "This is Russet the graceful deer.")
mainNPC:setUseMessage("#me beugt seinen Kopf.", "#me bows his head.")
mainNPC:setConfusedMessage("#me beugt seinen Kopf.", "#me bows his head.")
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
