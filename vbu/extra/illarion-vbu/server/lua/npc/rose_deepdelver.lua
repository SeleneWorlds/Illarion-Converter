local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Rose Deepdelver, the owner of the tavern. Keywords: Greetings, family, trade."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Rose Deepdelver die Besitzerin der Taverne. Schlüsselwörter: Grüße, Familie, Handel."))
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
talkEntry:addResponse("Die Bestellung, bitte.")
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
talkEntry:addResponse("Your order, please.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addResponse("Hiho! I sell the best drinks.")
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
talkEntry:addResponse("Hiho! Ich verkaufe die besten Getränke!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho! Nice day, isn't it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho! Schöner Tag heute, nicht?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("See you!")
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
talkEntry:addResponse("Mach's gut!")
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
talkEntry:addResponse("See you!")
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
talkEntry:addResponse("Mach's gut!")
talkEntry:addResponse("Tschüssi!")
talkEntry:addResponse("Auf wiedersehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I'm fine, what about you?")
talkEntry:addResponse("I'm fine, but you look like you could need something to drink, hihi.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Mir gehts ganz gut und dir?")
talkEntry:addResponse("Gut., aber du siehst aus als würdest du was zu trinken gebrauchen, hihi.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Rose Deepdelver, barkeeper. That's me.")
talkEntry:addResponse("I am the barkeeper Rose Deepdelver.")
talkEntry:addResponse("Rose Deepdelver is my name, owner of this lovely tavern.")
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
talkEntry:addResponse("Rose Deepdelver, die Bedienung. Das bin ich.")
talkEntry:addResponse("Ich bin die Bedienung Rose Deepdelver")
talkEntry:addResponse("Rose Deepdelver mein Name, Besitzerin dieser großartigen Taverne.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I don't have any tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich vergebe keine Aufgaben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I don't have any tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich vergebe keine Aufgaben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am the owner and also the barkeeper of this tavern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin die Besiterin und auch die Bedienung dieser Taverne.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am the owner and also the barkeeper of this tavern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin die Besiterin und auch die Bedienung dieser Taverne.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Nice to meet you. If you want something to drink or eat just ask me, hihi.")
talkEntry:addResponse("A nice name, indeed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Schön dich kennenzulernen. Wenn du etwas trinken oder essen willst, frag mich einfach, hihi.")
talkEntry:addResponse("Ein netter Name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gods")
talkEntry:addResponse("The Gods created this world for us.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Götter")
talkEntry:addTrigger("Gott")
talkEntry:addResponse("Die Götter haben diese Welt für uns erschaffen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Hihi, that one I'd really like to meet!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Hihi, den würde ich gerne mal treffen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("family")
talkEntry:addResponse("I am living together with my husband and child in Runewick, a peaceful place to be.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Familie")
talkEntry:addResponse("Ich lebe zusammen mit meinem Mann und meinem Kind in Runewick. Es ist ein sehr friedvoller Ort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("husband")
talkEntry:addResponse("My husband Milo knows a lot about herblore, just ask him if you want to know something about herbs!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mann")
talkEntry:addResponse("Mein Mann Milo weiß eine menge über Kräuterkunde, wenn du etwas wissen willst, frag ihn einfach!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("child")
talkEntry:addResponse("I have a small daughter of three years, she is wonderful!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kind")
talkEntry:addResponse("Ich habe eine kleine Tochter von drei Jahren, sie ist einfach wundervoll!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("my name")
talkEntry:addResponse("My Name is Rose Deepdelver. If you are hungry or thirsty, then come to me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein name")
talkEntry:addResponse("Mein Name ist Rose Deepdelver. Wenn du hungrig oder durstig bist, dann komm zu mir!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Rose")
talkEntry:addTrigger("Deepdelver")
talkEntry:addResponse("Yes, this is my name. If you need something to drink, just ask me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Rose")
talkEntry:addTrigger("Deepdelver")
talkEntry:addResponse("Ja, so heiße ich. Falls ihr etwas trinken wollt, fragt nur mich!")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me schaut sich nach Kunden um.", "#me looks around for customers.")
talkingNPC:addCycleText("#me knabbert an einem Keks.", "#me nibbles on a cookie.")
talkingNPC:addCycleText("#me trocknet ein Glas ab.", "#me cleans a glass.")
talkingNPC:addCycleText("#me summt leise etwas vor sich hin.", "#me hums quietly.")
talkingNPC:addCycleText("Balance ist alles im Leben! Insbesondere, wenn es um das Servieren geht.", "Balance is the key to dining as it is in any other aspect of life.")
talkingNPC:addCycleText("Was darf es denn heute sein? Ich empfehle etwas kaltes zu trinken und etwas warmes zu essen.", "What will you be having today? I suggest a cool drink followed by a hot meal.")
tradingNPC:addItem(trade.tradeNPCItem(2186,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2187,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2188,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2189,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4362,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4345,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4346,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4344,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4347,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4357,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4572,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4573,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4574,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4575,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4424,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4813,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4425,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4426,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4427,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4428,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4429,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4430,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4431,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4351,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2186,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2187,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2188,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2189,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4362,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4345,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4346,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4344,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4347,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4357,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4572,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4573,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4574,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4575,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4424,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4813,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4425,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4426,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4427,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4428,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4429,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4430,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4431,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4351,"buySecondary"))
tradingNPC:addNotEnoughMoneyMsg("Überprüfe bitte deine Geldbörse.", "Please check your purse.")
tradingNPC:addDialogClosedMsg("Bis bald!", "See you soon.")
tradingNPC:addDialogClosedNoTradeMsg("Nicht durstig?", "Aren't you thirsty?")
tradingNPC:addWrongItemMsg("Danke, nein.", "No, thanks.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(6)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Rose Deepdelver die Bedienung.", "This NPC is Rose Deepdelver the barkeeper.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 801)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 0)
mainNPC:setEquipment(9, 842)
mainNPC:setEquipment(10, 369)
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
