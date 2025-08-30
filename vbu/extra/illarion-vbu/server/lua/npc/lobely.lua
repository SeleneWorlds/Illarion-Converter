local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kauf")
talkEntry:addTrigger("waren")
talkEntry:addTrigger("preis")
talkEntry:addTrigger("Handel")
talkEntry:addTrigger("veräußer")
talkEntry:addTrigger("veräusser")
talkEntry:addTrigger("erwerb")
talkEntry:addTrigger("portal")
talkEntry:addResponse("Hiho, lass uns handeln!")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addTrigger("portal")
talkEntry:addResponse("Hiho, let's trade!")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the portal book merchant Lobely. Keywords: Hello, portal, trade."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Portalbuchhändler Lobely. Schlüsselwörter: Hallo, Portal, Handel."))
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
talkEntry:addResponse("Hiho! Today is a fine day to travel.")
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
talkEntry:addResponse("Hiho! Heute ist ein schöner Tag für eine Reise.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho! Today is a fine day to travel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho! Heute ist ein schöner Tag für eine Reise.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Always keep moving!")
talkEntry:addResponse("Toodles!")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Immer in Bewegung bleiben!")
talkEntry:addResponse("Tschüssi!")
talkEntry:addResponse("Auf wiedersehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Always keep moving!")
talkEntry:addResponse("Toodles!")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Immer in Bewegung bleiben!")
talkEntry:addResponse("Tschüssi!")
talkEntry:addResponse("Auf wiedersehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I feel excited, thinking about all the places to travel to.")
talkEntry:addResponse("I'm itching to make another journey.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ich bin so aufgeregt, wenn ich nur an all die Orte denke an die man Reisen kann.")
talkEntry:addResponse("Es juckt mich in den Füßen, eine Reise zu machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Lobely, the portal book merchant. That's me.")
talkEntry:addResponse("I am the merchant, Lobely.")
talkEntry:addResponse("Lobely is my name, I trade portal books.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ihr name")
talkEntry:addTrigger("dein name")
talkEntry:addTrigger("wer bist du")
talkEntry:addTrigger("wer seid ihr")
talkEntry:addTrigger("wie heißt")
talkEntry:addTrigger("wie heisst")
talkEntry:addResponse("Lobely, Portalbuch Händler. Das bin ich.")
talkEntry:addResponse("Ich bin der Händler Lobely")
talkEntry:addResponse("Lobely mein Name, ich handle mit Portalbüchern")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I do not issue any quests. But I can sell you books to go to other places.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich verteile keine Aufgaben. Aber ihr könnt von mir Bücher kaufen, die euch an andere Orte bringen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I do not issue any quests. But I can sell you books to go to other places.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich verteile keine Aufgaben. Aber ihr könnt von mir Bücher kaufen, die euch an andere Orte bringen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a merchant of portal books.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich handle mit Portalbüchern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a merchant of portal books.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich handle mit Portalbüchern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("With a little luck, I can get a book to take you there! Nah, not really just kidding.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Mit etwas Glück kann ich dir ein Buch besorgen, das dich dorthin bringt! Nö, nicht wirklich nur'n Scherz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Nice to meet you. If you want to 'book' a travel just ask me, hihi.")
talkEntry:addResponse("A nice name, indeed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Schön dich kennenzulernen. Wenn du eine Reise 'buch'-en willst, frag mich einfach, hihi.")
talkEntry:addResponse("Ein netter Name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("family")
talkEntry:addTrigger("siblings")
talkEntry:addTrigger("sister")
talkEntry:addTrigger("brother")
talkEntry:addResponse("Me and my family like to hike and explore, I bet you can find my siblings at other places if you just look closely!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Familie")
talkEntry:addTrigger("Geschwister")
talkEntry:addTrigger("Schwester")
talkEntry:addTrigger("Bruder")
talkEntry:addTrigger("Brüder")
talkEntry:addResponse("Ich und meine Familie wandern und entdecken gern. Ich bin mir sicher du kannst meine anderen Geschwister an anderen Orten finden wenn du nur genau guckst!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Luckily me and my family stay out of politics. Our services are well sought in all three towns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Glücklicherweise halten sich meine Familie und ich aus der Politik raus. Unsere Dienste werden in allen Städten gerne in Anspruch genommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Luckily me and my family stay out of politics. Our services are well sought in all three towns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Glücklicherweise halten sich meine Familie und ich aus der Politik raus. Unsere Dienste werden in allen Städten gerne in Anspruch genommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Luckily me and my family stay out of politics. Our services are well sought in all three towns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Glücklicherweise halten sich meine Familie und ich aus der Politik raus. Unsere Dienste werden in allen Städten gerne in Anspruch genommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Luckily me and my family stay out of politics. Our services are well sought in all three towns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Glücklicherweise halten sich meine Familie und ich aus der Politik raus. Unsere Dienste werden in allen Städten gerne in Anspruch genommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Luckily me and my family stay out of politics. Our services are well sought in all three towns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Glücklicherweise halten sich meine Familie und ich aus der Politik raus. Unsere Dienste werden in allen Städten gerne in Anspruch genommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Luckily me and my family stay out of politics. Our services are well sought in all three towns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Glücklicherweise halten sich meine Familie und ich aus der Politik raus. Unsere Dienste werden in allen Städten gerne in Anspruch genommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Luckily me and my family stay out of politics. Our services are well sought in all three towns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Glücklicherweise halten sich meine Familie und ich aus der Politik raus. Unsere Dienste werden in allen Städten gerne in Anspruch genommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Luckily me and my family stay out of politics. Our services are well sought in all three towns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Glücklicherweise halten sich meine Familie und ich aus der Politik raus. Unsere Dienste werden in allen Städten gerne in Anspruch genommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Oh, Albar, I've seen much of it on earlier journeys.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Oh, Albar, davon hab ich viel gesehen auf früheren Reisen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("You have to see it for yourself to believe it...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Man muss selbst nach Gynk reisen um es zu glauben...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Nice place. They got some very tasty food there too.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Netter Ort. Die haben dort auch ziemlich wohlschmeckendes Essen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("The Gods created this world for us to discover and travel within it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Die Götter haben diese Welt für uns erschaffen um sie zu entdecken und darin zu reisen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I sell various portal books that can take you to places, handy if you're lost in the wild.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich verkaufe verschiedene Portalbücher die dich an Orte bringen können. Ziemlich nützlich wenn man sich in der Wildnis verlaufen hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Me and my family like to hike and explore, I bet you can find my siblings at other places if you just look closely!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Ich und meine Familie wandern und entdecken gern. Ich bin mir sicher du kannst meine anderen Geschwister an anderen Orten finden wenn du nur genau guckst!")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Ich kann euch an interessante Orte bringen.", "I can take you to interesting places.")
talkingNPC:addCycleText("#me stapelt einige Bücher auf.", "#me stacks some books.")
talkingNPC:addCycleText("Ihr solltet mal verreisen!", "You should go on a trip.")
talkingNPC:addCycleText("Ich verkaufe Portalbücher! Braucht ihr eines?", "I sell portal books! Do you need one?")
talkingNPC:addCycleText("Das ist Magie!", "It's magic!")
talkingNPC:addCycleText("Der sichere Weg zu reisen! Portalbücher!", "The safe way to travel! Portal books!")
talkingNPC:addCycleText("Die Götter haben diese Welt für uns erschaffen um sie zu entdecken und darin zu reisen.", "The Gods created this world for us to discover and travel within it.")
talkingNPC:addCycleText("Unsere Dienste werden in allen Städten gerne in Anspruch genommen.", "Our services are well sought in all three towns.")
tradingNPC:addItem(trade.tradeNPCItem(1061,"sell","Portalbuch nach Cadomyr","Portal book to Cadomyr",5000,1,399,{["descriptionEn"] = "Portal to Cadomyr", ["descriptionDe"] = "Portal nach Cadomyr", ["destinationCoordsZ"] = "0", ["destinationCoordsX"] = "126", ["destinationCoordsY"] = "647"}))
tradingNPC:addItem(trade.tradeNPCItem(1061,"sell","Portalbuch nach Galmair","Portal book to Galmair",5000,1,399,{["descriptionEn"] = "Portal to Galmair", ["descriptionDe"] = "Portal nach Galmair", ["destinationCoordsZ"] = "0", ["destinationCoordsX"] = "423", ["destinationCoordsY"] = "246"}))
tradingNPC:addItem(trade.tradeNPCItem(1061,"sell","Portalbuch nach Runewick","Portal book to Runewick",5000,1,399,{["descriptionEn"] = "Portal to Runewick", ["descriptionDe"] = "Portal nach Runewick", ["destinationCoordsZ"] = "0", ["destinationCoordsX"] = "835", ["destinationCoordsY"] = "813"}))
tradingNPC:addItem(trade.tradeNPCItem(1061,"sell","Portalbuch zum Gasthof zur Hanfschlinge","Portal book to the Hemp Necktie Inn",5000,1,399,{["descriptionEn"] = "Portal to the Hemp Necktie Inn", ["descriptionDe"] = "Portal zum Gasthof zur Hanfschlinge", ["destinationCoordsZ"] = "0", ["destinationCoordsX"] = "684", ["destinationCoordsY"] = "307"}))
tradingNPC:addNotEnoughMoneyMsg("Du hast nicht genug Geld!", "You don't have enough money!")
tradingNPC:addDialogClosedMsg("Danke, komm doch bald wieder.", "Thanks, come back soon.")
tradingNPC:addDialogClosedNoTradeMsg("Nichts gefunden was euch gefällt?", "Don't you like my wares?")
tradingNPC:addWrongItemMsg("Das kaufe ich nicht.", "I'm not buying this.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(6)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Lobely der Portalbuchhändler.", "This NPC is Lobely the portal book merchant")
mainNPC:setUseMessage("Fass mich nicht an!", "Stop touching me!")
mainNPC:setConfusedMessage("#me blickt dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 829)
mainNPC:setEquipment(3, 808)
mainNPC:setEquipment(11, 2384)
mainNPC:setEquipment(5, 1061)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 824)
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
