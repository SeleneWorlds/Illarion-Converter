local consequence_item = require("npc.base.consequence.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Charwis Irongate. Keywords: quest, mission, order."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Charwis Irongate. Schlüsselwörter: Quest, Mission, Auftrag."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addTrigger("Good night")
talkEntry:addResponse("Greetings to you.")
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
talkEntry:addResponse("Seid gegrüßt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetings to you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Seid gegrüßt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Irmorom be with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Irmorom sei mit Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Irmorom be with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Irmorom sei mit Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Good, good.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Gut, gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am called Charwis, Charwis Irongate. Nice to meet you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dein name")
talkEntry:addTrigger("wer bist du")
talkEntry:addTrigger("wer seid ihr")
talkEntry:addTrigger("wie heißt")
talkEntry:addTrigger("wie heisst")
talkEntry:addResponse("Ich werde Charwis genannt, Charwis Irongate. Schön Euch kennenzulernen.")
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
talkEntry:addResponse("Charwis Irongate is not a trader!")
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
talkEntry:addResponse("Charwis Irongate ist kein Händler!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Message Delivery I"))
talkEntry:addConsequence(consequence_quest(702, "=", 1))
talkEntry:addResponse("Could you help me? Nik Nilo asked me for a ruby some time ago. I found one whilst mining the other day. Could you tell him that he should talk to me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Nachrichten Überbringen I"))
talkEntry:addConsequence(consequence_quest(702, "=", 1))
talkEntry:addResponse("Könntet Ihr mir Helfen? Nik Nilo fragte mich vor einiger Zeit nach einem Rubin. Neulich habe ich eine beim Schürfen gefunden. Könnt Ihr ihm bitte sagen, dass er mit mir reden möge?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Message Delivery I"))
talkEntry:addConsequence(consequence_quest(702, "=", 1))
talkEntry:addResponse("Could you help me? Nik Nilo asked me for a ruby some time ago. I found one whilst mining the other day. Could you tell him that he should talk to me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Nachrichten Überbringen I"))
talkEntry:addConsequence(consequence_quest(702, "=", 1))
talkEntry:addResponse("Könntet Ihr mir Helfen? Nik Nilo fragte mich vor einiger Zeit nach einem Rubin. Neulich habe ich eine beim Schürfen gefunden. Könnt Ihr ihm bitte sagen, dass er mit mir reden möge?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nik Nilo asked me for a ruby some time ago. Can you tell him he should talk to me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nik Nilo fragte mich nach einem Rubin. Sagt ihm bitte, er möge mit mir reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Nik Nilo asked me for a ruby some time ago. Can you tell him he should talk to me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Nik Nilo fragte mich nach einem Rubin. Sagt ihm bitte, er möge mit mir reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You solved the Quest and are rewarded by Charwis with some coins, an old sabre and a pair of new boots."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_item(25, 1, 333, nil))
talkEntry:addConsequence(consequence_item(53, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(702, "=", 3))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("So you talked to Mister Nik Nilo? Well, thank you for your help.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 2))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du hast das Quest gelöst und erhältst zum Dank etwas Geld, einen Säbel und ein Paar neue Stiefel von Charwis."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_item(25, 1, 333, nil))
talkEntry:addConsequence(consequence_item(53, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(702, "=", 3))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Ihr habt also mit Mister Nik Nilo gesprochen? Nun, danke für Eure Hilfe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Message Delivery II"))
talkEntry:addConsequence(consequence_quest(702, "=", 4))
talkEntry:addResponse("So, you came to help me again? That's very nice of you. I haven't seen Morri in a while. Please, ask him if he would still like to buy the pins he ordered, they are already starting to corrode.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 3))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Nachrichten Überbringen II"))
talkEntry:addConsequence(consequence_quest(702, "=", 4))
talkEntry:addResponse("So, Ihr kommt um mir zu helfen? Wie nett. Morri hat sich schon lange nicht mehr bei mir blicken lassen. Fragt ihn, ob er noch die Nägel kaufen möchte, die er bestellt hat. Die Nägel beginnen schon zu rosten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 3))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Message Delivery II"))
talkEntry:addConsequence(consequence_quest(702, "=", 4))
talkEntry:addResponse("So, you came to help me again? That's very nice of you. I haven't seen Morri in a while. Please, ask him if he would still like to buy the pins he ordered, they are already starting to corrode.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 3))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Nachrichten Überbringen II"))
talkEntry:addConsequence(consequence_quest(702, "=", 4))
talkEntry:addResponse("So, Ihr kommt um mir zu helfen? Wie nett. Morri hat sich schon lange nicht mehr bei mir blicken lassen. Fragt ihn, ob er noch die Nägel kaufen möchte, die er bestellt hat. Die Nägel beginnen schon zu rosten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Please ask Morri about his pin order.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 4))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bitte fragt bei Morri wegen seiner Nagelbestellung nach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 4))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Please ask Morri about his pin order.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 4))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Bitte fragt bei Morri wegen seiner Nagelbestellung nach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You solved the quest. You are awarded 10 silver coins and an old hat."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_item(356, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(702, "=", 6))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Thank you. Take this as a reward.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 5))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du hast das Quest gelöst. Du wirst mit 10 Silbermünzen und einem alten Schlapphut belohnt."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_item(356, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(702, "=", 6))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Danke sehr. Nehmt dies als Belohnung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Message Delivery III"))
talkEntry:addConsequence(consequence_quest(702, "=", 7))
talkEntry:addResponse("Please ask Gretel Goldhair what happened to my collection of hammers. I saw her carrying them away the other day. You can find her inside the Don's residence, the building right there to the north.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Nachrichten Überbringen III"))
talkEntry:addConsequence(consequence_quest(702, "=", 7))
talkEntry:addResponse("Bitte fragt Gretel Goldhair was sie mit meiner Sammlung Hämmer gemacht hat. Ich sah wie sie sie neulich davon trug. Ihr könnt sie in der Residenz des Dons finden, es ist das Gebäude gleich dort im Norden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Message Delivery III"))
talkEntry:addConsequence(consequence_quest(702, "=", 7))
talkEntry:addResponse("Please ask Gretel Goldhair what happened to my collection of hammers. I saw her carrying them away the other day. You can find her inside the Don's residence, the building right there to the north.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Nachrichten Überbringen III"))
talkEntry:addConsequence(consequence_quest(702, "=", 7))
talkEntry:addResponse("Bitte fragt Gretel Goldhair was sie mit meiner Sammlung Hämmer gemacht hat. Ich sah wie sie sie neulich davon trug. Ihr könnt sie in der Residenz des Dons finden, es ist das Gebäude gleich dort im Norden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Please ask Gretel Goldhair what happened to my collection of hammers. I saw her carrying them away.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 7))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bitte fragt Gretel Goldhair was sie mit meiner Sammlung Hämmer gemacht hat. Ich sah wie sie sie davon trug.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 7))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Please ask Gretel Goldhair what happened to my collection of hammers. I saw her carrying them away.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 7))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Bitte fragt Gretel Goldhair was sie mit meiner Sammlung Hämmer gemacht hat. Ich sah wie sie sie davon trug.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You solved the quest. You are awarded 12 silver coins and a new robe."))
talkEntry:addConsequence(consequence_money("+", 1200))
talkEntry:addConsequence(consequence_item(195, 1, 333, {["descriptionEn"] = "This robe has the colour of the Galmairian flag.", ["descriptionDe"] = "Diese Robe hat die Farbe der Galmairischen Flagge."}))
talkEntry:addConsequence(consequence_quest(702, "=", 9))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("What? She said she threw them away? First I must thank you for asking Gretel Goldhair, take this as a present. Then I will talk to her!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 8))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du hast das Quest gelöst. Du wirst mit 12 Silbermünzen und einer neuen Robe belohnt."))
talkEntry:addConsequence(consequence_money("+", 1200))
talkEntry:addConsequence(consequence_item(195, 1, 333, {["descriptionEn"] = "This robe has the colour of the Galmairian flag.", ["descriptionDe"] = "Diese Robe hat die Farbe der Galmairischen Flagge."}))
talkEntry:addConsequence(consequence_quest(702, "=", 9))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Was? Wegeworfen hat sie sie? Zuerst will ich Euch danken, dass Ihr mit Gretel Goldhair spracht. Nehmt dies als Geschenk. Dann werde ich mir ihr sprechen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Message Delivery IV"))
talkEntry:addConsequence(consequence_item(234, 1, 440, {["descriptionEn"] = "This gold nugget is the size of an apple.", ["descriptionDe"] = "Dieser Goldnugget ist so groß wie ein Apfel.", ["nameDe"] = "Echt großer Goldnugget", ["nameEn"] = "Really big gold nugget", ["rareness"] = "2"}))
talkEntry:addConsequence(consequence_quest(702, "=", 10))
talkEntry:addResponse("Look, I found this gold nugget. It's as big as an apple but Pheritaleth, the magical smith from Cadomyr, does not believe me! Show her the gold nugget, please.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 9))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Nachrichten Überbringen IV"))
talkEntry:addConsequence(consequence_item(234, 1, 440, {["descriptionEn"] = "This gold nugget is the size of an apple.", ["descriptionDe"] = "Dieser Goldnugget ist so groß wie ein Apfel.", ["nameDe"] = "Echt großer Goldnugget", ["nameEn"] = "Really big gold nugget", ["rareness"] = "2"}))
talkEntry:addConsequence(consequence_quest(702, "=", 10))
talkEntry:addResponse("Schaut, ich habe einen Goldnugget gefangen, der ist so groß wie ein Apfel. Aber Pheritaleth, magische Schmied aus Cadomyr, sagt ich lüge! Bitte zeigt ihr diesen Goldnugget!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 9))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Message Delivery IV"))
talkEntry:addConsequence(consequence_item(234, 1, 440, {["descriptionEn"] = "This gold nugget is the size of an apple.", ["descriptionDe"] = "Dieser Goldnugget ist so groß wie ein Apfel.", ["nameDe"] = "Echt großer Goldnugget", ["nameEn"] = "Really big gold nugget", ["rareness"] = "2"}))
talkEntry:addConsequence(consequence_quest(702, "=", 10))
talkEntry:addResponse("Look, I found this gold nugget. It's as big as an apple but Pheritaleth, the magical smith from Cadomyr, does not believe me! Show her the gold nugget, please.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 9))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Nachrichten Überbringen IV"))
talkEntry:addConsequence(consequence_item(234, 1, 440, {["descriptionEn"] = "This gold nugget is the size of an apple.", ["descriptionDe"] = "Dieser Goldnugget ist so groß wie ein Apfel.", ["nameDe"] = "Echt großer Goldnugget", ["nameEn"] = "Really big gold nugget", ["rareness"] = "2"}))
talkEntry:addConsequence(consequence_quest(702, "=", 10))
talkEntry:addResponse("Schaut, ich habe einen Goldnugget gefangen, der ist so groß wie ein Apfel. Aber Pheritaleth, magische Schmied aus Cadomyr, sagt ich lüge! Bitte zeigt ihr diesen Goldnugget!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Please, show the gold nugget to Pheritaleth in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 10))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bitte zeigt Pheritaleth aus Cadomyr diesen Goldnugget.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 10))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Please, show the gold nugget to Pheritaleth in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 10))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Bitte zeigt Pheritaleth aus Cadomyr diesen Goldnugget.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 11))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You solved the quest. You are rewarded with some coins and jewellery."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_item(62, 1, 877, {["rareness"] = "1", ["craftedBy"] = "Charwis Irongate"}))
talkEntry:addConsequence(consequence_quest(702, "=", 12))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Thank you. Please take this as a reward, and keep the gold nugget as a souvenir, I found an even larger one than that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 11))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du hast das Quest gelöst. Du wirst mit Münzen und Schmuck belohnt."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_item(62, 1, 877, {["rareness"] = "1", ["craftedBy"] = "Charwis Irongate"}))
talkEntry:addConsequence(consequence_quest(702, "=", 12))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Danke schön. Bitte nehmt dies. Und behaltet den Goldnugget als Souvenir, ich habe bereits einen größeren gefunden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 12))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Message Delivery V"))
talkEntry:addConsequence(consequence_item(2785, 1, 999, {["descriptionEn"] = "This wand belongs to Elvaine Morgan.", ["descriptionDe"] = "Dieser Stab gehört Elvaine Morgan."}))
talkEntry:addConsequence(consequence_quest(702, "=", 13))
talkEntry:addResponse("I was lucky today. I found the wand of Elvaine Morgan. He will surely miss it, please go and take his wand back.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 12))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Nachrichten Überbringen V"))
talkEntry:addConsequence(consequence_item(2785, 1, 999, {["descriptionEn"] = "This wand belongs to Elvaine Morgan.", ["descriptionDe"] = "Dieser Stab gehört Elvaine Morgan."}))
talkEntry:addConsequence(consequence_quest(702, "=", 13))
talkEntry:addResponse("Ich hatte heute wirklich Glück. Ich habe den Stab von Elvaine Morgan gefunden. Sicher vermisst er ihn schon. Geht und bringt ihm den Stab zurück.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 12))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Message Delivery V"))
talkEntry:addConsequence(consequence_item(2785, 1, 999, {["descriptionEn"] = "This wand belongs to Elvaine Morgan.", ["descriptionDe"] = "Dieser Stab gehört Elvaine Morgan."}))
talkEntry:addConsequence(consequence_quest(702, "=", 13))
talkEntry:addResponse("I was lucky today. I found the wand of Elvaine Morgan. He will surely miss it, please go and take his wand back.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 12))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Nachrichten Überbringen V"))
talkEntry:addConsequence(consequence_item(2785, 1, 999, {["descriptionEn"] = "This wand belongs to Elvaine Morgan.", ["descriptionDe"] = "Dieser Stab gehört Elvaine Morgan."}))
talkEntry:addConsequence(consequence_quest(702, "=", 13))
talkEntry:addResponse("Ich hatte heute wirklich Glück. Ich habe den Stab von Elvaine Morgan gefunden. Sicher vermisst er ihn schon. Geht und bringt ihm den Stab zurück.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 13))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Please take the wand back to Elvaine Morgan, he will miss it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 13))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bitte bringt Elvaine Morgan seinen Stab zurück. Er wird ihn vermissen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 13))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Please take the wand back to Elvaine Morgan, he will miss it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 13))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Bitte bringt Elvaine Morgan seinen Stab zurück. Er wird ihn vermissen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 14))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You solved the quest. You are awarded a silvered longsword and some coins."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_item(98, 1, 222, {["descriptionEn"] = "This sword was a present from Charwis Irongate", ["descriptionDe"] = "Dieses Schwert war ein Geschenk von Charwis Irongate.", ["rareness"] = "1"}))
talkEntry:addConsequence(consequence_quest(702, "=", 15))
talkEntry:addConsequence(consequence_rankpoints("+", 4))
talkEntry:addResponse("Thank you. Take this for your trouble.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 14))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du hast das Quest gelöst. Du wirst mit einem versilberten Langschwert und ein paar Silbermünzen belohnt."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_item(98, 1, 222, {["descriptionEn"] = "This wand was a present from Charwis Irongate", ["descriptionDe"] = "Dieses Schwert war ein Geschenk von Charwis Irongate.", ["rareness"] = "1"}))
talkEntry:addConsequence(consequence_quest(702, "=", 15))
talkEntry:addConsequence(consequence_rankpoints("+", 4))
talkEntry:addResponse("Danke, nehmt dies als Belohnung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 15))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Thank you. I have nothing else for you to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 15))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Danke schön. Zss. Ich habe nichts mehr für Euch zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 15))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Thank you. I have nothing else for you to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 15))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Danke schön. Ich habe nichts mehr für Euch zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I have no task for people who do not belong to Galmair. You can go to Frederik to become a citizen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe keine Aufgabe für Leute die nicht Galmair angehören. Ihr könnt zu Frederik gehen, um Bürger zu werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I have no task for people who do not belong to Galmair. You can go to Frederik to become a citizen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe keine Aufgabe für Leute die nicht Galmair angehören. Ihr könnt zu Frederik gehen, um Bürger zu werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I work as a smith.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich arbeite als Schmied.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I work as a smith.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich arbeite als Schmied.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Do you know there's a difference between iron, coal and gold?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addTrigger("erzähl mir was")
talkEntry:addTrigger("erzählt mir was")
talkEntry:addResponse("Wissst ihr, dass es einen Unterschied zwischen Erz, Kohle und Gold gibt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I pray to Irmorom. To whom do you pray?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Ich bete zu Irmorom. Zu wem betet Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("He's the God of crafts and merchants.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Er ist der Gott des Handwerks und der Händler.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Leave me alone about those wand-wavers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Lasst mich zufrieden mit diesen Zauberstabwedlern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("The best place to be, if you ask me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Der beste Ort, wenn ihr mich fragt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Leave me alone about those palm-wavers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Lasst mich zufrieden mit diesen Palmenwedlern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("I don't talk about foreign places.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ich spreche nicht über fremde Orte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("I don't talk about foreign places.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ich spreche nicht über fremde Orte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("I don't talk about foreign places.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Ich spreche nicht über fremde Orte.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me schaut sich um.", "#me looks around.")
talkingNPC:addCycleText("#me kratzt sich am Kinn.", "#me scratches his chin.")
talkingNPC:addCycleText("#me räuspert sich geräuschvoll.", "#me clears his throat noisily.")
talkingNPC:addCycleText("So, so...", "There, there...")
talkingNPC:addCycleText("Ich liebe das heutige Wetter.  Man sagt, morgen soll es regnen.", "I love the weather today; they say there is rain coming tomorrow.")
talkingNPC:addCycleText("Es gibt keinen Platz an dem ich lieber wäre als in Illarion.", "There is no place I would rather be than Illarion.")
talkingNPC:addCycleText("Im Adras rutschen einem die Getränke nur so die Kehle herunter.", "In Adras the drinks flow freely.")
talkingNPC:addCycleText("#me schaut sich freundlich um.", "#me looks around friendly.")
talkingNPC:addCycleText("#me schaut zu den Wolken.", "#me gazes at the clouds.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("", "")
mainNPC:setUseMessage("#me schaut verärgert.", "#me looks angry.")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 458)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 23)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 0)
mainNPC:setEquipment(9, 826)
mainNPC:setEquipment(10, 53)
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
