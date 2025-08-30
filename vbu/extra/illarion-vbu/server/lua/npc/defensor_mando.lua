local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is a Defensor, ask for a test. Keywords: quest, Akaltut, drow, Defensor, name."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist ein Wächter, frage Ihn nach dem Test. Stichworte: Aufgabe, Akaltut, Drow, Defensor, Name."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good Evening")
talkEntry:addResponse("Welcome to the Akaltut's Chamber stronghold. It's a good day to test your skills.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grüß")
talkEntry:addTrigger("Gruß")
talkEntry:addTrigger("Grüss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Guten Morgen")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Gute Nacht")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addTrigger("Mohltied")
talkEntry:addResponse("Willkommen im Innersten der Kammer von Akaltut. Ein guter Tag um deine Fähigkeiten zu testen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Welcome to the Akaltut's Chamber stronghold. It's a good day to test your skills.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Seid gegrüßt.")
talkEntry:addResponse("Willkommen im Innersten der Kammer von Akaltut. Ein guter Tag um deine Fähigkeiten zu testen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Come back, if you dare.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addResponse("Komm wieder wenn du dich traust.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Come back, if you dare.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Komm wieder wenn du dich traust.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am a Defensor of Akaltut's Lair, pass my test to prove you are an ally and I will open the way for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dein name")
talkEntry:addTrigger("wer bist du")
talkEntry:addTrigger("wer seid ihr")
talkEntry:addTrigger("wie heißt")
talkEntry:addTrigger("wie heisst")
talkEntry:addResponse("Ich bin ein Defensor von Akaltuts Versteck. Bestehe meinen Test um zu zeigen, dass du ein Verbündeter bist und ich werde dir den Weg öffnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("your name")
talkEntry:addTrigger("name")
talkEntry:addResponse("I am Defensor Mando.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ihr name")
talkEntry:addTrigger("Name")
talkEntry:addResponse("Ich bin Defensor Mando.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sell")
talkEntry:addTrigger("buy")
talkEntry:addTrigger("wares")
talkEntry:addTrigger("price")
talkEntry:addTrigger("trade")
talkEntry:addTrigger("purchase")
talkEntry:addResponse("I am not a trader.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kauf")
talkEntry:addTrigger("waren")
talkEntry:addTrigger("preis")
talkEntry:addTrigger("Handel")
talkEntry:addTrigger("veräußer")
talkEntry:addTrigger("veräusser")
talkEntry:addTrigger("erwerb")
talkEntry:addResponse("Ich bin kein Händler.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("My job is a Defensor, I make sure only the worthy move on.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Meine Aufgabe ist die eines Defensor, ich stelle sicher das nur die Würdigen weiterkommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("My job is a Defensor, I make sure only the worthy move on.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Meine Aufgabe ist die eines Defensor, ich stelle sicher das nur die Würdigen weiterkommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Defensor")
talkEntry:addResponse("My job is a Defensor, I make sure only the worthy move on.")
talkEntry:addResponse("I am Defensor Mando.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Defensor")
talkEntry:addResponse("Meine Aufgabe ist die eines Defensor, ich stelle sicher das nur die Würdigen weiterkommen.")
talkEntry:addResponse("Ich bin Defensor Mando.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Drow")
talkEntry:addResponse("The drow are dangerous fighters, are you a match for their skill?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Drow")
talkEntry:addResponse("Die Drow sind gefährliche Kämpfer, kannst du dich mit Ihnen messen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Akaltut")
talkEntry:addResponse("Akaltut is a spider queen. She and her breed are well known for terrorizing this corner. Pass our tests and you can face her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Akaltut")
talkEntry:addResponse("Akaltut ist eine Spinnenkönigin. Sie und ihre Zucht sind für das Terrorisieren dieser Gegend gut bekannt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "<", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("test")
talkEntry:addResponse("The skill testing must be done in order.  Please check with the Defensors before me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "<", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Test")
talkEntry:addResponse("Die Proben deiner Fähigkeiten müssen der Reihe nach erfolgen. Bitte suche den zuständigen Defensor vor mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "<", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("The skill testing must be done in order.  Please check with the Defensors before me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "<", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Die Proben deiner Fähigkeiten müssen der Reihe nach erfolgen. Bitte suche den zuständigen Defensor vor mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("test")
talkEntry:addConsequence(consequence_inform("[New quest] Akaltut's Chamber 6"))
talkEntry:addConsequence(consequence_quest(526, "=", 3))
talkEntry:addResponse("I am Defensor Mando, to pass my test you must kill ten drow that roam these halls.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Test")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Die Kammer von Akaltut 6"))
talkEntry:addConsequence(consequence_quest(526, "=", 3))
talkEntry:addResponse("Ich bin Defensor Mando, um meinen Test zu bestehen musst du zehn Drow töten, welche diese Hallen durchstreifen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Akaltut's Chamber 6"))
talkEntry:addConsequence(consequence_quest(526, "=", 3))
talkEntry:addResponse("I am Defensor Mando, to pass my test you must kill ten drow that roam these halls.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Die Kammer von Akaltut 6"))
talkEntry:addConsequence(consequence_quest(526, "=", 3))
talkEntry:addResponse("Ich bin Defensor Mando, um meinen Test zu bestehen musst du zehn Drow töten, welche diese Hallen durchstreifen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, ">", 2))
talkEntry:addCondition(condition_quest(526, "<", 13))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("test")
talkEntry:addResponse("Have you killed ten drow? If you do not pass this test you can't continue.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, ">", 2))
talkEntry:addCondition(condition_quest(526, "<", 13))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Test")
talkEntry:addResponse("Hast du zehn Drow getötet? Wenn du den Test nicht bestehst kannst du nicht weitergehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, ">", 2))
talkEntry:addCondition(condition_quest(526, "<", 13))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Have you killed ten drow? If you do not pass this test you can't continue.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, ">", 2))
talkEntry:addCondition(condition_quest(526, "<", 13))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Hast du zehn Drow getötet? Wenn du den Test nicht bestehst kannst du nicht weitergehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "=", 13))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded one hundred silver coins."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(526, "=", 14))
talkEntry:addResponse("You have passed this test and are awarded one hundred silver coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "=", 13))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst hundert Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(526, "=", 14))
talkEntry:addResponse("Du hast den Test bestanden. Du bekommst hundert Silberstücke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "=", 14))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("test")
talkEntry:addResponse("You have passed, please see Defensor Confirmo.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "=", 14))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Test")
talkEntry:addResponse("Du hast bestanden. Gehe zum Defensor Confirmo.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "=", 14))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You have passed, please see Defensor Confirmo.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, "=", 14))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du hast bestanden. Gehe zum Defensor Confirmo.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, ">", 14))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("test")
talkEntry:addResponse("You have passed, please the other Defensors.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, ">", 14))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Test")
talkEntry:addResponse("Du hast den Test bestanden, sprich zu den anderen Defensoren")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, ">", 14))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You have passed, please the other Defensors.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(526, ">", 14))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du hast den Test bestanden, sprich zu den anderen Defensoren")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(525, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Finish our tests in order and you will be rewarded.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(525, "<", 1))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Beende unsere Aufgaben und du wirst eine Belohnung erhalten.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Du bist in Akaltuts Versteck eingedrungen in das sich nur wenige trauen.", "You have invaded Akaltut's Lair where few dare go.")
talkingNPC:addCycleText("Die, die sterben werden Teil der Knochenhaufen.", "Those who die become part of the Pile of Bones.")
talkingNPC:addCycleText("#me starrt dich mit kaltem hartem Blick an. 'Bist du würdig?'", "#me stares at you with cold, hard eyes 'Are you worthy?'")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dies ist Defensor Mando.", "This is Defensor Mando.")
mainNPC:setUseMessage("Wage es nicht einen Defensor von Akaltut zu berühren!", "Dare you to touch a Defensor of Akaltut!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 2303)
mainNPC:setEquipment(3, 2402)
mainNPC:setEquipment(11, 2378)
mainNPC:setEquipment(5, 2777)
mainNPC:setEquipment(6, 2447)
mainNPC:setEquipment(4, 531)
mainNPC:setEquipment(9, 2116)
mainNPC:setEquipment(10, 770)
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
