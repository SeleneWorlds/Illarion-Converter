local consequence_quest = require("npc.base.consequence.quest")
local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Argentus Almsbag the money changer of Runewick. Keywords: buy, sell, trade, Salkamar."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Argentus Almsbag der Geldwechsler von Runewick. Schlüsselwörter: kaufe, verkaufe, Handel, Salkamar."))
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
talkEntry:addResponse("Be greeted. Would you like to change your coppers into silvers?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grüße")
talkEntry:addTrigger("Gruß")
talkEntry:addTrigger("Guten Morgen")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Gute Nacht")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addResponse("Seid gegrüßt.")
talkEntry:addResponse("Grüße. Mögt Ihr Euren Kupfer nicht gegen Silber eintauschen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hello, hello!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hallo, hallo!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Lebt wohl.")
talkEntry:addResponse("Auf bald!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Adieu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Adieu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I'm always happy when I'm trading.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mir geht es immer gut, wenn ich mit jemandem handeln kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Argentus Almsbag! Don't you know me?")
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
talkEntry:addResponse("Ich bin Argentus Almsbag. Kennt Ihr mich etwa nicht?")
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
talkEntry:addCondition(condition_quest(701, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zassaria")
talkEntry:addTrigger("lizzard")
talkEntry:addTrigger("fish")
talkEntry:addTrigger("order")
talkEntry:addTrigger("riverbank")
talkEntry:addTrigger("message")
talkEntry:addConsequence(consequence_quest(701, "=", 5))
talkEntry:addResponse("Zassaria? A fish order? What, now? The fish has already started to smell? No, thanks. I want fresh fish, please tell Lady Zassaria that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 4))
talkEntry:addTrigger("Zassaria")
talkEntry:addTrigger("lizzard")
talkEntry:addTrigger("fisch")
talkEntry:addTrigger("Bestellung")
talkEntry:addTrigger("riverbank")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_quest(701, "=", 5))
talkEntry:addResponse("Zassaria?  Eine Fischbestellung? Was höre ich da, der Fisch beginnt bereits zu stinken? Nein, danke! Ich möchte frischen Fisch, bitte sagt das Lady Riverbank.")
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
talkEntry:addResponse("Ah, a customer, welcome!")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addResponse("Ah, werte Kundschaft, seid willkommen.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I love money, but I hate my job.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich mag Geld, aber ich mag meinen Beruf nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I love money, but I hate my job.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich mag Geld, aber ich mag meinen Beruf nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Sometimes I wonder why I change money for free. Perhaps I should start to take a percentage..")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Wollt Ihr nun Handeln, oder mich mit Eurem Geschwätz von der Arbeit abhalten?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Do you want to change your coins or do you just want to distract me from counting mine?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Wollt Ihr nun Handeln, oder mich mit Eurem Geschwätz von der Arbeit abhalten?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick is such a lovely place. There's a lot of scope for making money here.")
talkEntry:addResponse("Look, are you going to change coins or just gossip?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runwick ist ein sehr schöner Ort, man kann hier viel Geld machen.")
talkEntry:addResponse("Wollt Ihr nun Handeln, oder mich mit Eurem Geschwätz von der Arbeit abhalten?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is full of corruption and grime. Only thieves make money there.")
talkEntry:addResponse("Look, are you going to change coins or just gossip?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist voll von Korruption und Dreck.")
talkEntry:addResponse("Wollt Ihr nun Handeln, oder mich mit Eurem Geschwätz von der Arbeit abhalten?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("You don't need money in Cadomyr, I hear they all use slaves.")
talkEntry:addResponse("Look, are you going to change coins or just gossip?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist Cadomyr.")
talkEntry:addResponse("Wollt Ihr nun Handeln, oder mich mit Eurem Geschwätz von der Arbeit abhalten?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar was my home, but I hated it there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar war meine Heimat. Aber dort hat es mir nicht gefallen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Unless it's stamped on a coin I don't care.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Wollt Ihr nun Handeln, oder mich mit Eurem Geschwätz von der Arbeit abhalten?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me betrachtet eine Goldmünze.", "#me glances lovingly at a gold coin.")
talkingNPC:addCycleText("#me's Augen funklen gierig.", "#me's eyes sparkle greedily as he rubs a coin between his fingers.")
talkingNPC:addCycleText("#me murmelt verärgert: 'Wenn dir meine Preise nicht passen, dann geh doch woanders hin.'", "#me mumbles quietly: 'I wish I got to keep the money.'")
talkingNPC:addCycleText("#me zählt emsig Münzen.", "#me assiduously counts money.")
talkingNPC:addCycleText("Geld macht nicht glücklich, aber kein Geld macht unglücklich!", "Money doesn't make you happy, but no money makes you sad!")
talkingNPC:addCycleText("Ich wechsle Geld!", "I change money!")
talkingNPC:addCycleText("#me klimpert mit ein paar Münzen.", "#me rattles some coins.")
talkingNPC:addCycleText("Psst! Wollt ihr etwas Geld wechseln?", "Shh! Want to change some money?")
talkingNPC:addCycleText("Hast mal 'nen Silberling?", "Got some change?")
talkingNPC:addCycleText("Wollt ihr mehr Geld? Wechselt eure Goldstücke in Kupferstücke ein!", "Do you want more money? Change your gold coins into copper coins!")
talkingNPC:addCycleText("Ihr da. Ja, genau ihr. Kommt doch mal näher.", "You there. Yes, you... Come a little closer.")
tradingNPC:addItem(trade.tradeNPCItem(3076,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3077,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(61,"sell"))
tradingNPC:addNotEnoughMoneyMsg("Ganz so viel Geld habt ihr auch wieder nicht.", "You don't have that much money.")
tradingNPC:addDialogClosedMsg("Weiterhin gute Geschäfte.", "I wish you good business.")
tradingNPC:addDialogClosedNoTradeMsg("Gehabt euch wohl.", "Godspeed.")
tradingNPC:addWrongItemMsg("Ich wechsle nur Geld.", "I just change money.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Argentus Almsbag der Geldwechsler von Runewick.", "This NPC is Argentus Almsbag, the money changer of Runewick.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Hands off me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 181)
mainNPC:setEquipment(11, 193)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 461)
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
