local consequence_quest = require("npc.base.consequence.quest")
local condition_rank = require("npc.base.condition.rank")
local condition_language = require("npc.base.condition.language")
local condition_sex = require("npc.base.condition.sex")
local basic = require("npc.base.basic")
local condition_money = require("npc.base.condition.money")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local consequence_town = require("npc.base.consequence.town")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Frederik Silvereye the notary. Keywords: 'become citizen','leave','give up citizenship', 'rank', 'licence', 'building'."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Frederik Silvereye der Notar. Schlüsselwörter: Bürger werden,'verlassen','beende Bürgerstatus','Rang', 'Lizenz', 'Gebäude'."))
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
talkEntry:addResponse("Be greeted.")
talkEntry:addResponse("Greetings.")
talkEntry:addResponse("Good day.")
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
talkEntry:addResponse("Zum Gruße.")
talkEntry:addResponse("Seid gegrüßt.")
talkEntry:addResponse("Guten Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Be greeted.")
talkEntry:addResponse("Greetings.")
talkEntry:addResponse("Good day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Zum Gruße.")
talkEntry:addResponse("Seid gegrüßt.")
talkEntry:addResponse("Guten Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Malachin with you.")
talkEntry:addResponse("Farewell.")
talkEntry:addResponse("Goodbye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Malachin mit Euch.")
talkEntry:addResponse("Auf bald.")
talkEntry:addResponse("Bis bald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Malachin with you.")
talkEntry:addResponse("Farewell.")
talkEntry:addResponse("Goodbye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Malachin mit Euch.")
talkEntry:addResponse("Auf bald.")
talkEntry:addResponse("Bis bald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I'm fine, thank you for your concern.")
talkEntry:addResponse("I can't complain, even if some more action wouldn't be that bad.")
talkEntry:addResponse("Very good, and you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mir geht es gut, danke der Nachfrage.")
talkEntry:addResponse("Ich kann nicht klagen, auch wenn ein bisschen mehr Abenteuer mal wieder nicht schlecht wäre.")
talkEntry:addResponse("Ganz gut, und euch?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Frederik Silvereye, I take care of the new arrivals in this place.")
talkEntry:addResponse("I'm Frederik Silvereye, I am the notary of Galmair.")
talkEntry:addResponse("You can call me Frederik Silvereye, as notary of this town I could put you on the citizen list of this beautiful place.")
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
talkEntry:addResponse("Mein Name ist Frederik Silvereye, ich kümmere mich um die Neuankömmlinge dieses Ortes.")
talkEntry:addResponse("Mein Name ist Frederik Silvereye, ich bin der Notar Galmairs.")
talkEntry:addResponse("Man nennt mich Frederik Silvereye, als Notar kann Ich euch zum Bürger unseres schönen Ortes eintragen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("become citizen")
talkEntry:addTrigger("gain citizenship")
talkEntry:addConsequence(consequence_town("=", "3"))
talkEntry:addResponse("You are already a citizen of Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Bürger werden")
talkEntry:addTrigger("Bürgerschaft beantragen")
talkEntry:addConsequence(consequence_town("=", "3"))
talkEntry:addResponse("Ihr seid bereits Bürger von Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("become citizen")
talkEntry:addTrigger("gain citizenship")
talkEntry:addConsequence(consequence_town("=", "3"))
talkEntry:addResponse("You are now a citizen of Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Bürger werden")
talkEntry:addTrigger("Bürgerschaft beantragen")
talkEntry:addConsequence(consequence_town("=", "3"))
talkEntry:addResponse("Ihr seid jetzt Bürger von Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("become citizen")
talkEntry:addTrigger("gain citizenship")
talkEntry:addConsequence(consequence_town("=", "3"))
talkEntry:addResponse("You are now a citizen of Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Bürger werden")
talkEntry:addTrigger("Bürgerschaft beantragen")
talkEntry:addConsequence(consequence_town("=", "3"))
talkEntry:addResponse("Ihr seid jetzt Bürger von Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("become citizen")
talkEntry:addTrigger("gain citizenship")
talkEntry:addConsequence(consequence_town("=", "3"))
talkEntry:addResponse("You are now a citizen of Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("Bürger werden")
talkEntry:addTrigger("Bürgerschaft beantragen")
talkEntry:addConsequence(consequence_town("=", "3"))
talkEntry:addResponse("Ihr seid jetzt Bürger von Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("become citizen")
talkEntry:addTrigger("gain citizenship")
talkEntry:addConsequence(consequence_town("=", "3"))
talkEntry:addResponse("You are now a citizen of Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bürger werden")
talkEntry:addTrigger("Bürgerschaft beantragen")
talkEntry:addConsequence(consequence_town("=", "3"))
talkEntry:addResponse("Ihr seid jetzt Bürger von Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("give up citizenship")
talkEntry:addTrigger("terminate")
talkEntry:addTrigger("leave")
talkEntry:addTrigger("leaving")
talkEntry:addConsequence(consequence_quest(208, "=", 1))
talkEntry:addResponse("Oh, you no longer want to be a citizen of Galmair?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("beende Bürgerstatus")
talkEntry:addTrigger("verlassen")
talkEntry:addTrigger("verlasse")
talkEntry:addTrigger("annuliere")
talkEntry:addConsequence(consequence_quest(208, "=", 1))
talkEntry:addResponse("Oh, Ihr wollt kein Büger in Galmair mehr sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(208, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("yes")
talkEntry:addConsequence(consequence_quest(208, "=", 1))
talkEntry:addConsequence(consequence_town("=", "0"))
talkEntry:addResponse("You are no longer a citizen of Galmair. Go elsewhere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(208, "=", 1))
talkEntry:addTrigger("ja")
talkEntry:addConsequence(consequence_quest(208, "=", 1))
talkEntry:addConsequence(consequence_town("=", "0"))
talkEntry:addResponse("Ihr seid nun kein Bürger Galmairs mehr. Sucht Euer Glück woanders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(208, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_quest(208, "=", 0))
talkEntry:addResponse("Mhm... The Don will be pleased to hear that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(208, "=", 1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_quest(208, "=", 0))
talkEntry:addResponse("Mhm, ... Der Don wird sich freuen, dies zu hören.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("welche Stadt")
talkEntry:addTrigger("welche faktion")
talkEntry:addResponse("Du gehörst nach %TOWN!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("which town")
talkEntry:addTrigger("which faction")
talkEntry:addResponse("You belong to %TOWN!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 10))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("#me bows deeply.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 10))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("#me bows deeply.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 10))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("#me verbeut sich erfürchtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 10))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("#me verbeut sich erfürchtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Tycoon %CHARNAME, be welcome. It is truly an honour to see you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Tycoon %CHARNAME, be welcome. It is truly an honour to see you.!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 9))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse(" Tycoon %CHARNAME! Seid willkommen. Wahrhaftig es ist eine Ehre Euch zu sehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 9))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Tycoon %CHARNAME! Seid willkommen. Wahrhaftig es ist eine Ehre Euch zu sehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Magnate, be welcome. It is an honour to see you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Magnate, be welcome. It is an honour to see you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 8))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Magnat, seid willkommen. Welch eine Ehre Euch zu sehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 8))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Magnatin, seid wilokmmen.Welch eine Ehre Euch zu sehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Mogul %CHARNAME! How can I help you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Mogul %CHARNAME! How can I help you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 7))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Mogul %CHARNAME! Was kann ich für Euch tun?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 7))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Mogulin %CHARNAME! Was kann ich für Euch tun?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Patrician %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Patrician %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Seid gegrüßt, Patrizier %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Seid gegrüßt, Patrizierin %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Financier %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Financier %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 5))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Seid gegrüßt, Finanzier %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 5))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Seid gegrüßt, Finanzier %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Merchant!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Merchant!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 4))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Kaufmann, seid gegrüßt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 4))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Kauffrau, seid gegrüßt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Grocer is what I'd call folks like you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Grocer is what I'd call folks like you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 3))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Leute wie dich würde ich Krämer nennen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 3))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Leute wie dich würde ich Krämerin nennen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("What do you want, pedlar?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("What do you want, pedlar?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 2))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Hausierer, was gibt's?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 2))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Hausiererin, was gibt's?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("You are just an assistant. Got it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("You are just a assistant. Got it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Du bist bloß ein Gehilfe. Kapiert?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Du bist bloß eine Gehilfin. Kapiert?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("You are new here. You are not well known. Make an effort and become rich, tramp!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("You are new here. You are not well known. Make an effort and become rich, tramp!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Du bist noch ganz neu hier. Dich kennt kaum jemand. Streng dich mehr an und werde reich, du Rumtreiber!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Du bist noch ganz neu hier. Dich kennt kaum jemand. Streng dich mehr an und werde reich, du Rumtreiberin!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rank")
talkEntry:addResponse("I do not know about other ranks of other towns.")
talkEntry:addResponse("I am not interested in other systems, only the Galmairian one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rang")
talkEntry:addResponse("Ich weiß nichts über Ränge in anderen Städten.")
talkEntry:addResponse("Ich interessiere mich nur für das galmairanische Statussystem.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("licence")
talkEntry:addTrigger("license")
talkEntry:addCondition(condition_town(3))
talkEntry:addResponse("There is no need for you to buy a licence, since you are a citizen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("lizenz")
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addResponse("Ihr benötigt keine Lizenz, da ihr Bürger dieser Stadt seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("lizenz")
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addResponse("Ihr benötigt keine Lizenz, da ihr Bürgerin dieser Stadt seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("licence")
talkEntry:addTrigger("license")
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_town(2))
talkEntry:addCondition(condition_rank("<", 100))
talkEntry:addResponse("You look as though you are quite new here, thus, you can currently use our tools for free.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("lizenz")
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_town(2))
talkEntry:addCondition(condition_rank("<", 100))
talkEntry:addResponse("Ihr wirkt als würdet ihr neu hier sein. Daher könnt ihr unsere Werkzeuge zurzeit frei benutzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("licence")
talkEntry:addTrigger("license")
talkEntry:addConsequence(consequence_inform("[Licence] You can choose between 'Alpha', 'Beta' and 'Gamma' licences. Alpha costs one gold coin and allows you to use the tools for one real time hour. Beta costs two gold coins for three real time hours. Gamma costs three gold coins for eight real time hours. Say the name of the type of licence you want in order to buy it. You can buy several at the same time. They will be added to each other."))
talkEntry:addResponse("I sell three kinds of licences. 'Alpha', 'Beta' and 'Gamma'. Alpha allows you to use our static tools for thee hours and costs only one gold coin. Beta allows you to use our static tools for nine hours and costs only two gold coins. Gamma allows you to use our static tools for one day and costs only three gold coins. Which one do you want?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("lizenz")
talkEntry:addConsequence(consequence_inform("Lizenz] Du kannst zwischen 'Alpha', 'Beta' und 'Gamma' wählen. Alpha kostet eine Goldmünze und erlaubt dir die Nutzung der Werkzeuge für eine Echtzeit-Stunde. Beta kostet zwei Goldmünzen für drei Echtzeit-Stunden. Gamma kostet drei Goldmünzen für acht Echtzeit-Stunden. Sage den Namen des Typen, um zu bestellen. Du kannst mehrere gleichzeitig kaufen. Diese werden dann summiert."))
talkEntry:addResponse("Ich verkaufe drei Arten von Lizenzen. 'Alpha', 'Beta' und 'Gamma'. Mit Alpha ist es möglich, unsere Werkzeuge für drei Stunden zu einem Preis von nur einer Goldmünze zu nutzen. Mit Beta ist es möglich, unsere Werkzeuge für neun Stunden zu einem Preis von nur zwei Goldmünzen zu nutzen. Und mit Gamma ist es möglich, unsere Werkzeuge für einen Tag zu einem Preis von nur drei Goldmünzen zu nutzen. Welche möchtet ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addTrigger("beta")
talkEntry:addTrigger("gamma")
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addResponse("There is no need for you to buy a licence, since you are a citizen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addTrigger("beta")
talkEntry:addTrigger("gamma")
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(0))
talkEntry:addResponse("Ihr benötigt keine Lizenz, da ihr Bürger dieser Stadt seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addTrigger("beta")
talkEntry:addTrigger("gamma")
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_sex(1))
talkEntry:addResponse("Ihr benötigt keine Lizenz, da ihr Bürgerin dieser Stadt seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_money("<", 10000))
talkEntry:addResponse("You need more money in order to buy licence 'Alpha', one gold as a matter of fact.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addCondition(condition_money("<", 10000))
talkEntry:addResponse("Ihr benötigt mehr Geld, um Lizenz 'Alpha' zu kaufen. Eine Goldmünze, um genau zu sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_quest(813, ">", 0))
talkEntry:addConsequence(consequence_money("-", 10000))
talkEntry:addConsequence(consequence_quest(813, "+", 12))
talkEntry:addConsequence(consequence_inform("[Licence purchased] You bought licence 'Alpha' for one gold coin. You can use the static tools of this town for an additional one real time hour. The time has been added to your time left."))
talkEntry:addResponse("You are free to use our tools for an additional three hours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addCondition(condition_quest(813, ">", 0))
talkEntry:addConsequence(consequence_money("-", 10000))
talkEntry:addConsequence(consequence_quest(813, "+", 12))
talkEntry:addConsequence(consequence_inform("[Lizenz erworben] Du hast die Lizenz 'Alpha' für eine Goldmünze erworben. Du kannst die Werkzeuge dieser Stadt für eine weitere Echtzeit-Stunde frei benutzen. Die Stunden wurden zu deiner verbliebenen Zeit aufsummiert."))
talkEntry:addResponse("Euch ist es nun gestattet, unsere Werkzeuge für weitere drei Stunden zu verwenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addCondition(condition_language("english"))
talkEntry:addConsequence(consequence_money("-", 10000))
talkEntry:addConsequence(consequence_quest(813, "+", 12))
talkEntry:addConsequence(consequence_inform("[Licence purchased] You bought licence 'Alpha' for a gold coin. You can use the static tools of this town for the next real time hour."))
talkEntry:addResponse("Wonderful, you are free to use our tools for the next three hours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addConsequence(consequence_money("-", 10000))
talkEntry:addConsequence(consequence_quest(813, "+", 12))
talkEntry:addConsequence(consequence_inform("[Lizenz erworben] Du hast die Lizenz 'Alpha' für eine Goldmünze erworben. Du kannst die Werkzeuge dieser Stadt für die nächste Echtzeit-Stunde frei benutzen."))
talkEntry:addResponse("Wunderbar, euch ist es nun gestattet, unsere Werkzeuge für die nächsten drei Stunden zu verwenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beta")
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_money("<", 20000))
talkEntry:addResponse("You need more money in order to buy licence 'Beta', two gold coins as a matter of fact.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beta")
talkEntry:addCondition(condition_money("<", 20000))
talkEntry:addResponse("Ihr benötigt mehr Geld, um Lizenz 'Beta' zu kaufen. Zwei Goldmünzen, um genau zu sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beta")
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_quest(813, ">", 0))
talkEntry:addConsequence(consequence_money("-", 20000))
talkEntry:addConsequence(consequence_quest(813, "+", 36))
talkEntry:addConsequence(consequence_inform("[Licence purchased] You bought licence 'Beta' for two gold coins. You can use the static tools of this town for an additional three real time hours. The time has been added to your time left."))
talkEntry:addResponse("You are free to use our tools for an additional nine hours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beta")
talkEntry:addCondition(condition_quest(813, ">", 0))
talkEntry:addConsequence(consequence_money("-", 20000))
talkEntry:addConsequence(consequence_quest(813, "+", 36))
talkEntry:addConsequence(consequence_inform("[Lizenz erworben] Du hast die Lizenz 'Beta' für zwei Goldmünzen erworben. Du kannst die Werkzeuge dieser Stadt für weitere drei Echtzeit-Stunden frei benutzen. Die Stunden wurden zu deiner verbliebenen Zeit aufsummiert."))
talkEntry:addResponse("Euch ist es nun gestattet, unsere Werkzeuge für weitere neun Stunden zu verwenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beta")
talkEntry:addCondition(condition_language("english"))
talkEntry:addConsequence(consequence_money("-", 20000))
talkEntry:addConsequence(consequence_quest(813, "+", 36))
talkEntry:addConsequence(consequence_inform("[Licence purchased] You bought licence 'Beta' for two gold coins. You can use the static tools of this town for the next three real time hours."))
talkEntry:addResponse("Wonderful, you are free to use our tools for the next nine hours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beta")
talkEntry:addConsequence(consequence_money("-", 20000))
talkEntry:addConsequence(consequence_quest(813, "+", 36))
talkEntry:addConsequence(consequence_inform("[Lizenz erworben] Du hast die Lizenz 'Beta' für zwei Goldmünzen erworben. Du kannst die Werkzeuge dieser Stadt für die nächsten drei Echtzeit-Stunden frei benutzen."))
talkEntry:addResponse("Wunderbar, euch ist es nun gestattet, unsere Werkzeuge für die nächsten neun Stunden zu verwenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gamma")
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_money("<", 30000))
talkEntry:addResponse("You need more money in order to buy licence 'Gamma', three gold coins as a matter of fact.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gamma")
talkEntry:addCondition(condition_money("<", 30000))
talkEntry:addResponse("Ihr benötigt mehr Geld, um Lizenz 'Gamma' zu kaufen. Drei Goldmünzen, um genau zu sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gamma")
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_quest(813, ">", 0))
talkEntry:addConsequence(consequence_money("-", 30000))
talkEntry:addConsequence(consequence_quest(813, "+", 96))
talkEntry:addConsequence(consequence_inform("[Licence purchased] You bought licence 'Gamma' for three gold coins. You can use the static tools of this town for an additional eight real time hours. The time has been added to your time left."))
talkEntry:addResponse("You are free to use our tools for an additional day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gamma")
talkEntry:addCondition(condition_quest(813, ">", 0))
talkEntry:addConsequence(consequence_money("-", 30000))
talkEntry:addConsequence(consequence_quest(813, "+", 96))
talkEntry:addConsequence(consequence_inform("[Lizenz erworben] Du hast die Lizenz 'Gamma' für drei Goldmünzen erworben. Du kannst die Werkzeuge dieser Stadt für weitere acht Echtzeit-Stunden frei benutzen. Die Stunden wurden zu deiner verbliebenen Zeit aufsummiert."))
talkEntry:addResponse("Euch ist es nun gestattet, unsere Werkzeuge für einen weiteren Tag zu verwenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gamma")
talkEntry:addCondition(condition_language("english"))
talkEntry:addConsequence(consequence_money("-", 30000))
talkEntry:addConsequence(consequence_quest(813, "+", 96))
talkEntry:addConsequence(consequence_inform("[Licence purchased] You bought licence 'Gamma' for three gold coins. You can use the static tools of this town for the next eight real time hours."))
talkEntry:addResponse("Wonderful, you are free to use our tools for a day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gamma")
talkEntry:addConsequence(consequence_money("-", 30000))
talkEntry:addConsequence(consequence_quest(813, "+", 96))
talkEntry:addConsequence(consequence_inform("[Lizenz erworben] Du hast die Lizenz 'Gamma' für drei Goldmünzen erworben. Du kannst die Werkzeuge dieser Stadt für die nächsten acht Echtzeit-Stunden frei benutzen."))
talkEntry:addResponse("Wunderbar, euch ist es nun gestattet, unsere Werkzeuge für einen Tag zu verwenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("At the moment I have everything, but thanks for asking.")
talkEntry:addResponse("Maybe another time, I already have everything I need.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Derzeit habe ich alles, aber danke für eure Sorge.")
talkEntry:addResponse("Vielleicht ein anderes mal, derzeit habe ich alles was ich brauche.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I have no tasks for you right now, maybe another time.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe derzeit keine Aufgaben für Euch, vielleicht aber wann anders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am the notary of Galmair and do all the stuff a notary does.")
talkEntry:addResponse("I take care of the new arrivals in Galmair, I am the notary here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin der Notar Galmairs und tue all das was ein Notar so tut.")
talkEntry:addResponse("Ich kümmere mich um die Neuankömmlinge in Galmair, ich bin hier der Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am the notary of Galmair and do all the stuff a notary does.")
talkEntry:addResponse("I take care of the new arrivals in Galmair, I am the notary here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin der Notar Galmairs und tue all das was ein Notar so tut.")
talkEntry:addResponse("Ich kümmere mich um die Neuankömmlinge in Galmair, ich bin hier der Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Never heard of that. Is it something to eat?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Nie davon gehört. Ist es etwas zu Essen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("It's a pleasure to meet you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Ich freue mich Euch kennenzulernen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("deal")
talkEntry:addResponse("We deal with everything in Galmair. But once, I made a special deal. A famous painter wanted to take residence but could not pay. He drew a picture of the Don instead. Miggs liked it. To get it he discharged all my debts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Geschäft")
talkEntry:addResponse("Du kannst mit allem in Galmair ein Geschäft machen. Ich hatte mal einen Maler hier, der kein Geld hatte. Er zeichnete stattdessen ein Bild vom Don, das Miggs unbedingt haben wollte. So bin ich damals meine Schulden losgeworden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("chair")
talkEntry:addResponse("I like my chair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stuhl")
talkEntry:addResponse("Ich mag meinen Stuhl!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("table")
talkEntry:addResponse("Don't walk on the table! You can't imagine what uncivilised people enter this house here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tisch")
talkEntry:addResponse("Nicht auf dem Tisch laufen! Ihr könnte Euch nicht vorstellen was für unzivilisierte Leute dieses Haus betreten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("building")
talkEntry:addConsequence(consequence_inform("[Keywords] Market, temple, teleporter, library, Well of Dreams, Villa Goldvein, workshop, guardroom, Dark Alley, Galmair's Crest, Scoria Mine"))
talkEntry:addResponse("Be more precise! Market, temple, teleporter, donkey stable, library, Well of Dreams, Villa Goldvein, workshop, guardroom, Dark Alley, Galmair's Crest or the Scoria Mine?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gebäude")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Markt, Tempel, Teleporter, Bibliothek, Quelle der Träume, Villa Goldader, Werkstatt, Wachstube, Dunkle Gasse, Galmairs Krone, Schlackengrube"))
talkEntry:addResponse("Etwas genauer! Markt, Tempel, Teleporter, Eselstall, Bibliothek, Quelle der Träume, Villa Goldader, Werkstatt, Wachstube, Dunkle Gasse, Galmairs Krone oder die Schlackengrube?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("people")
talkEntry:addResponse("There were only dwarves here in the past. Nowadays we have all kind of folks here, even orcs, which you can find in the Flicker Swale... Or would you like to meet Lotta? *grins*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Leute")
talkEntry:addResponse("Früher waren hier nur Zwerge, aber heutzutage haben wir alle möglichen Leute hier. Selbst Orks, welche du unten in der Schimmersenke finden kannst... Oder willst du Lotta treffen? *grinst*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("history")
talkEntry:addResponse("The history of our town can be read about in our library. Unfortunately, we lost our actual history book, but our Don was kind enough to provide his personal notes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Geschichte")
talkEntry:addResponse("Die Geschichte unserer Stadt kannst du in unserer Bibliothek nachlesen. Leider wurde das eigentliche Geschichtsbuch verloren. Aber der Don war so nett und hat uns seine persönlichen Notizen zur Verfügung gestellt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("event")
talkEntry:addResponse("Several events regarding our town can be read about in our library. Unfortunately, we lost our actual history book, but our Don was kind enough to provide his personal notes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ereignis")
talkEntry:addTrigger("Geschehnis")
talkEntry:addResponse("Sämtliche Ereignisse betreffend unserer Stadt kannst du in unserer Bibliothek nachlesen. Leider wurde das eigentliche Geschichtsbuch verloren. Aber der Don war so nett und hat uns seine persönlichen Notizen zur Verfügung gestellt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("law")
talkEntry:addResponse("Actually, we have only one rule. You just have to know, coins and thus the Don rules, because he has most. You will find more recommendations though in the Scoria Mine on some columns around the Hog Dens and Cameo Pit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gesetz")
talkEntry:addResponse("Wir haben eigentlich keine Gesetze. Du musst nur wissen, dass hier Münzen und deshalb der Don herrscht, weil er die meisten hat. Aber du kannst mehr Empfehlungen unten in der Schlackengrube um und zwischen Gemmenschacht und Schweinebaue finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ruler")
talkEntry:addResponse("We have only had two rulers so far. Our Don Valerio Guilianni and his father Tommaso Guilianni. You can find more information about the latter in the notes of the Don, our new history book.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Herrscher")
talkEntry:addResponse("Wir hatten lediglich zwei Herrscher bisher. Unseren Don Valerio Guilianni und seinen Vater Tommaso Guilianni. Informationen über letzteren findest du in den Aufzeichnungen des Don, unserem neuem Geschichtsbuch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("market")
talkEntry:addResponse("Everything has to be explained to you. Just run through the town to the Well of Dreams and you will see it. You cannot miss it. *points to the town gate*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Markt")
talkEntry:addResponse("Alles muss man dir erklären. Lauf einfach durch die Stadt zur Quelle der Träume und du wirst ihn sehen. Du kannst ihn nicht verfehlen. *zeigt auf das Stadttor*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("temple")
talkEntry:addConsequence(consequence_inform("[Keywords] Temple of Irmorom, Temple of Ronagan, Temple of Nargun"))
talkEntry:addResponse("We have temples for each of our three gods here: Temple of Irmorom, Temple of Ronagan and Temple of Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tempel")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Tempel des Irmorom, Tempel des Ronagan, Tempel des Nargun"))
talkEntry:addResponse("Wir haben je einen Tempel für unsere drei Götter hier. Tempel des Irmorom, Tempel des Ronagan and Tempel des Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Well Dreams")
talkEntry:addResponse("The Well of Dreams is the other side of the town. Therefore, enter the town, head past the market and Villa Goldvein and you are there, but usually, people avoid this place. *smirks*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Quelle Träume")
talkEntry:addResponse("Die Quelle der Träume ist an der anderen Seite der Stadt. Daher rein mit dir, passiere den Markt und die Villa Goldader und du bist dort. Aber Leute meiden diesen Ort normal. *grinst*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Villa Goldvein")
talkEntry:addResponse("The Villa Goldvein is the other side of the town, close to the Well of Dreams. It is a place for the richer ones among us.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Villa Goldader")
talkEntry:addResponse("Die Villa Goldader ist an der anderen Seite der Stadt, nahe der Quelle der Träume. Sie ist ein Ort für die reicheren unter uns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Workshop")
talkEntry:addResponse("The Workshop is on the left side, behind the road to the Malachite Mine. It is a place for smiths and other craftsmen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Werkstatt")
talkEntry:addResponse("Die Werkstatt is auf der linken Seite nach der Straße zur Malachitmine. Sie ist ein Ort für Schmiede und andere Handwerker.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Guardroom")
talkEntry:addResponse("The Guardroom is close to the town wall, on the right side after the Dark Alley. You will also find someone inside who will help you to remember things. *smirks*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wachstube")
talkEntry:addResponse("Die Wachstube ist nach der Stadtmauer auf der rechten Seite nach der Dunklen Gasse. Du wirst dort auch jemand finden der dir helfen wird Dinge in Erinnerung zu behalten. *grinst*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dark Alley")
talkEntry:addResponse("The Dark Alley is behind the donkey stable. Do I really have to explain to you what you can do there? *smirks*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dunkle Gasse")
talkEntry:addResponse("Die Dunkle Gasse ist hinter dem Eselstall. Muss ich dir wirklich erklären was du da hinten alles machen kannst? *grinst*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair's Crest")
talkEntry:addTrigger("Galmairs Crest")
talkEntry:addConsequence(consequence_inform("[Keywords] Guilianni Residence, Council Chamber, Golden Dreams, Treasury, Library"))
talkEntry:addResponse("Galmair's Crest is at the heart of Galmair and the residence of our Don. The building is close to the market and inside you can find: the Guilianni Residence, Don's Council Chamber, Golden Dreams, Treasury and Library.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmairs Krone")
talkEntry:addTrigger("Galmair Krone")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Guilianni Residenz, Konzil Kammer, Goldträume, Schatzkammer, Bibliothek"))
talkEntry:addResponse("Galmairs Krone ist das Herz von Galmair und die Residenz unseres Don. Das Gebäude ist nahe dem Markt und du findest drinnen: Guiliannis Residenz, Dons Konzil Kammer, Goldträume, Schatzkammer und Bibliothek.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Library")
talkEntry:addResponse("Our library in Galmair's Crest contains all our books. Among these are our books about history, locations, gods, towns and so on. Just take a look there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bibliothek")
talkEntry:addResponse("Unsere Bibliothek in Galmairs Krone enthält all unsere Bücher. Unter diesen findest du unser Geschichtsbuch, Bücher über Orte, Götter, Städte und so weiter. Siehe einfach nach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Guilianni Residence")
talkEntry:addResponse("In this place within Galmair's Crest you will find and meet our Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Guilianni Residenz")
talkEntry:addResponse("An diesem Ort in Galmairs Krone findest und triffst du unseren Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Council Chamber")
talkEntry:addResponse("This is a conference room in Galmair's Crest used to discuss how to improve our treasury, for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Konzil Kammer")
talkEntry:addResponse("Dies ist ein Konferenzraum in Galmairs Krone für Diskussionen wie man die Schatzkammer vergrößern könnte zum Beispiel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Golden Dreams")
talkEntry:addResponse("The room Golden Dreams, within Galmair's Crest, is the private room of the Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Goldträume")
talkEntry:addResponse("Der Raum Goldträume in Galmairs Krone ist der private Raum des Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Treasury")
talkEntry:addResponse("Ha, ha... of course you would like to know more about this room in Galmair's Crest. Stop dreaming! I do not think that you will ever be in this room. *smirks*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schatzkammer")
talkEntry:addResponse("Ha, ha... klar würdest du gerne mehr über diesen Raum in Galmairs Krone wissen. Denkste! Ich glaub kaum, dass du den je von innen sehen wirst. *kichert*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Scoria Mine")
talkEntry:addConsequence(consequence_inform("[Keywords] The Winged Sow Tavern, Flicker Swale, Hog Dens, Cameo Pit, Sewers."))
talkEntry:addResponse("The Scoria Mine is situated after the market, on the right side. You have to take the elevator to get down and you will find following shafts there: The Winged Sow Tavern, Flicker Swale, Hog Dens, Cameo Pit and Sewers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schlackengrube")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Taverne zur Geflügelten Sau, Schimmersenke, Schweinebaue, Gemmenschacht, Abwasserschächte"))
talkEntry:addResponse("Die Schlackengrube ist nach dem Markt auf der rechten Seite. Du musst den Aufzug verwenden um hinunter zu kommen. Du findest folgende Schächte dort: Taverne zur Geflügelten Sau, Schimmersenke, Schweinebaue, Gemmenschacht und Abwasserschächte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("elevator")
talkEntry:addResponse("The elevator will help you to get down into the Scoria Mine. From there you have access all the shafts of the Scoria Mine. You will find the elevator on the other side of the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Aufzug")
talkEntry:addResponse("Der Aufzug wird dir helfen hinunter in die Schlackengrube zu kommen. Von dort hast du Zugang zu allen Schächten in der Schlackengrube. Du kannst den Aufzug auf der anderen Seite der Stadt finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Winged Sow Tavern")
talkEntry:addResponse("This place is in the Scoria Mine and has two entrances. The main entrance is via the Scoria Mine elevator and the second one is down a ladder, on the right before the elevator. Follow the signposts. You will find good beer and entertainment there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Taverne Geflügelten Sau")
talkEntry:addResponse("Dieser Ort in der Schlackengrube hat zwei Eingänge. Den Haupteingang über den Aufzug der Schlackengrube und den zweiten über eine Leiter knapp vor dem Aufzug. Folge den Wegweisern. Wie dem auch sei, du wirst gutes Bier und gute Unterhaltung dort finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tavern")
talkEntry:addResponse("This place is in the Scoria Mine has and two entrances. The main entrance is via the Scoria Mine elevator and the second one is down a ladder, on the right before the elevator. Follow the signposts. You will find good beer and entertainment there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tavern")
talkEntry:addResponse("Dieser Ort in der Schlackengrube hat zwei Eingänge. Den Haupteingang über die Schlackengrube Aufzug und den zweiten über eine Leiter knapp vor dem Aufzug. Folge den Wegweisern. Wie dem auch sei, du wirst gutes Bier und Unterhaltung dort finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Flicker Swale")
talkEntry:addConsequence(consequence_inform("[Keyword]Game room, Temple of Nargun"))
talkEntry:addResponse("Flicker Swale can be found in the Scoria Mine, just follow the signposts. There you can also find the Game room and the Temple of Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schimmersenke")
talkEntry:addConsequence(consequence_inform("[Schlüsselwort]Spielraum, Tempel des Nargun"))
talkEntry:addResponse("Die Schimmersenke kann in der Schlackengrube gefunden werde. Folge einfach den Wegweisern. Dort findest du auch den Spielraum und den Tempel des Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gameroom")
talkEntry:addResponse("The Game room in the Flicker Swale offers you a great opportunity to get the money of others... or to lose your own! *smirks*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Spielraum")
talkEntry:addResponse("Der Spielraum in der Schlimmersenke ermöglicht dir anderen das Geld abzuknüpfen...oder dein eigenes zu verlieren. *kichert*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hog Dens")
talkEntry:addResponse("The Hog Dens can be found in the Scoria Mine, just follow the signposts. This place is mainly used by our green friends, the orcs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schweinebaue")
talkEntry:addResponse("Die Schweinebaue können in der Schlackengrube gefunden werde. Folge einfach den Wegweisern. Dieser Ort wird hauptsächlich von unseren grünen Freunden verwendet - den Orks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cameo Pit")
talkEntry:addResponse("The Cameo Pit can be found in the Scoria Mine, just follow the signposts. It contains the flats for those who do not have enough money to live at Villa Goldvein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gemmenschacht")
talkEntry:addResponse("Der Gemmenschacht kann in der Schlackengrube gefunden werde. Folge einfach den Wegweisern. Er beinhaltet die Wohnungen jener, welche nicht genügend Geld haben um in der Villa Goldader zu wohnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sewers")
talkEntry:addResponse("The Sewers can be found in the Scoria Mine, just follow the signposts. You will find some creatures living at this place so you can try your luck there. *smirks*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Abwassersch")
talkEntry:addResponse("Die Abwasserschächte kann in der Schlackengrube gefunden werde. Folge einfach den Wegweisern. Dort findest du diverse Kreaturen. Versuch einfach dein Glück dort. *kichert*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hinterland")
talkEntry:addConsequence(consequence_inform("[Keywords] Sleepy Bujhaar Inn, Census office, Sport Hole, Malachite Mine, Miner's club, Miner's spring, Woodcorner, Stinky Fisherman, The Platform, Dark Hole Mine, Farmland, Copperbridge, Blackbridge"))
talkEntry:addResponse("In the so called Hinterlands you can find: Sleepy Bujhaar Inn, Census office, Sport Hole, Malachite Mine, Miner's club, Miner's spring, Woodcorner, Stinky Fisherman, The Platform, Black Hole Mine, Farmland, Copperbridge and Blackbridge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hinterland")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Gasthof zum schläfrigen Bujhaar, Zensusbüro, Tollloch, Malachitmine, Schürfers Club, Schürfers Quelle, Waldeck, Stinkender Fischer, Plattform, Dunkellochmine, Ackerland, Kupferbrücke, Schwarzbrücke."))
talkEntry:addResponse("Im sogenannten Hinterland findest du: Gasthof zum schläfrigen Bujhaar, Zensusbüro, Tollloch, Malachitmine, Schüfers Club, Schüfers Quelle, Waldeck, Stinkender Fischer, Plattform, Dunkellochmine, Ackerland, Kupferbrücke and Schwarzbrücke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sleepy Bujhaar Inn")
talkEntry:addResponse("The Sleepy Bujhaar Inn can be found on the road to the Malachite Mine, after the Census office. Just look for signposts. You can rest and eat there if you want.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gasthof Bujhaar")
talkEntry:addResponse("Das Gasthaus zum Schlafenden Bujhaar kann an der Straße zur Malachitmine nach dem Zensusbüro gefunden werden. Folge einfach den Wegschildern. Du kannst dort essen oder rasten wenn du möchtest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachite Mine")
talkEntry:addResponse("The Malachite mine is in the south of Galmair. Just enter the town and walk south while you follow the signposts. You can get iron, copper and gold there. There is also an entrance to the Shadowland.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachitmine")
talkEntry:addResponse("Die Malachitmine ist im Süden von Galmair. Gehe in die Stadt und folge den Wegweisern in den Süden. Du wirst dort Eisen, Kupfer und Gold finden. Es hat auch einen Eingang zum Schattenland dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Miner's Club")
talkEntry:addTrigger("Miners Club")
talkEntry:addResponse("The Miner's Club is a place to rest for the miners of the Malachite mine, which is very close. The club was founded by the Father of the Don, Don Tommaso Guilianni and he spent a lot of time there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schürfers Club")
talkEntry:addResponse("Der Schürfers Club ist ein Ort zum Rasten für die Schürfer in der Malachitmine, welche sehr nahe ist. Der Club wurde errichtet vom Vater des Don, Don Tommaso Guilianni, der dort viel Zeit verbracht hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Miner's Spring")
talkEntry:addTrigger("Miners Spring")
talkEntry:addResponse("The Miner's spring is next to the Miner's Club, and rumors say that people who rest there become better miners.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schürfers Quelle")
talkEntry:addResponse("Die Schürfers Quelle ist neben dem Schürfers Club, und Gerüchten zufolge werden Leute die dort rasten bessere Schürfer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Woodcorner")
talkEntry:addResponse("That is a camp for lumberjacks and it is very close. Just behind the teleporter. *points north*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Waldeck")
talkEntry:addResponse("Das ist ein Lager für Holzfäller und es liegt sehr nahe. Gleich hinter dem Teleporter. *zeigt in den Norden")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stinky Fisherman")
talkEntry:addResponse("The Stinky Fisherman is a place for fishers and it is south from here, on the north bank of the Malachite creek.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stinkende Fischer")
talkEntry:addResponse("Der Stinkende Fischer ist ein Ort für Fischer und ist südlich von hier am Nordufer des Malachitbaches.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Platform")
talkEntry:addResponse("The Platform is a place for fishers close to the Copperbridge *points east*. It was also used by lizards to rise and pray in the past. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Plattform")
talkEntry:addResponse("Die Plattform ist ein Ort für Fischer nahe der Kupferbrücke *zeigt in den Osten*. Sie wurde früher auch von Echsen genutzt zum Schlüpfen und Beten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dark Hole Mine")
talkEntry:addResponse("The Dark Hole Mine is far in the north. You have to walk east, over the Copperbridge, to the north over the Blackbridge, past the harbour, and then you are there. Just follow the signposts. You can find coal there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dunkellochmine")
talkEntry:addResponse("Die Dunkellochmine ist weit im Norden. Du musst in den Osten gehen, über die Kupferbrücke, dann in den Norden über die Schwarzbrücke, beim Hafen vorbei und dann bist du da. Folge einfach den Wegschildern. Du wirst Kohle dort finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farmland")
talkEntry:addResponse("The Farmland is just here. *points south*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ackerland")
talkEntry:addResponse("Das Ackerland ist gleich hier. *zeigt in den Süden*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Copperbridge")
talkEntry:addConsequence(consequence_inform("[Keyword] location"))
talkEntry:addResponse("The Copperbridge in the east leads you over the Malachite creek to Nargun's Plain fist and then on to the Hemp Necktie Inn, if you want to go to those locations.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kupferbrücke")
talkEntry:addConsequence(consequence_inform("[Schlüsselwort] Ort"))
talkEntry:addResponse("Die Kupferbrücke im Osten führt dich zuerst über den Malachit Bach zu Narguns Ebene und dann zum Gasthof zur Hanfschlinge, falls du zu diesen Orten gehen möchtest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Blackbridge")
talkEntry:addConsequence(consequence_inform("[Keyword] location"))
talkEntry:addResponse("The Blackbridge in the northeast leads you over the Bounding Stream to the Swamp and Northern Woods, if you want to go to those locations.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schwarzbrücke")
talkEntry:addConsequence(consequence_inform("[Schlüsselwort] Ort"))
talkEntry:addResponse("Die Schwarzbrücke, im Nordosten von hier, führt dich über den Grenzstrom zum Sumpf und den Nördlichen Wäldern, falls du zu diesen Orten gehen möchtest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shadowland")
talkEntry:addResponse("A dangerous place at the south end of the Malachite mine. Do not go there alone. For more information, ask someone else.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schattenland")
talkEntry:addResponse("Ein gefährlicher Ort am südlichen Ende der Malachitmine. Geh nicht alleine dort hin. Für mehr Information frage jemand anderen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Temple Ronagan")
talkEntry:addTrigger("Ronagan Temple")
talkEntry:addResponse("The Temple of Ronagan can be found in the Scoria Mine. Just follow the signposts, but keep in mind that the temple is currently flooded.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tempel Ronagan")
talkEntry:addTrigger("Ronagan Tempel")
talkEntry:addResponse("Der Tempel von Ronagan kann in der Schlackengrube gefunden werden. Folge einfach den Wegweisern, aber beachte, dass der Tempel momentan überflutet ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Temple Irmorom")
talkEntry:addTrigger("Irmorom Temple")
talkEntry:addResponse("The Temple of Irmorom is close to Villa Goldvein. You can pray to Irmorom there and hope that you become a rich person.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tempel Irmorom")
talkEntry:addTrigger("Irmorom Tempel")
talkEntry:addResponse("Der Tempel des Irmorom ist nahe der Villa Goldader. Du kannst dort zu Irmorom beten und hoffen, dass du reich wirst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Temple Nargun")
talkEntry:addTrigger("Nargun Temple")
talkEntry:addResponse("The Temple of Nargun in the Flicker Swale is a place for all those who follow Nargun. Obvious, isn't it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tempel Nargun")
talkEntry:addTrigger("Nargun Tempel")
talkEntry:addResponse("Der Temepl des Nargun in der Schimmersenke ist ein Ort für jene die Nargun folgen. Klar, oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sport Hole")
talkEntry:addResponse("The Sport Hole is used for those people who think they can betray the Don. It is on the road to the Malachite mine close to the bridge there over the Malachite creek.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tollloch")
talkEntry:addResponse("Das Tolloch wird für jene Leute verwendet, die der Meinung sind den Don betrügen zu können. Es ist an der Straße zur Malachitmine kurz vor der Brücke über den Malachit Bach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("No comment.")
talkEntry:addResponse("I won't comment on that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Kein Kommentar.")
talkEntry:addResponse("Dazu sage ich jetzt nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("No comment.")
talkEntry:addResponse("I won't comment on that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Kein Kommentar.")
talkEntry:addResponse("Dazu sage ich jetzt nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("I won't comment on that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Dazu sage ich jetzt nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("No comment.")
talkEntry:addResponse("I won't comment on that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Kein Kommentar.")
talkEntry:addResponse("Dazu sage ich jetzt nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("That's the best place in Illarion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Der beste Ort in Illarion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("No comment.")
talkEntry:addResponse("I won't comment on that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Kein Kommentar.")
talkEntry:addResponse("Dazu sage ich jetzt nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("No comment.")
talkEntry:addResponse("I won't comment on that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Kein Kommentar.")
talkEntry:addResponse("Dazu sage ich jetzt nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I won't comment on that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Dazu sage ich jetzt nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("I heard this is a place far away, right?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Der Ort soll recht weit weg sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("I heard this is a place far away, right?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Der Ort soll recht weit weg sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("I heard this is a place far away, right?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Der Ort soll recht weit weg sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a notary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("There are 16 gods. Five created Illarion. One god is evil.")
talkEntry:addResponse("Ask a priest if you want to know more about the gods. I'm just a noraty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Es gibt 16 Götter. Fünf schufen Illarion. Einer ist böse.")
talkEntry:addResponse("Fragt einen Priester wenn Ihr mehr wissen wollt. Ich bin bloß ein Notar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I am not a trader, but if you give me money, you can become a citizen of Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich bin kein Händler. Wenn du mir Geld gibst, kannst du Bürger von Galmair werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Everyone should become a citizen of Galmair, that way I can make lots of money!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Jeder sollte Bürger Glamairs werden, so kann ich viel Geld verdienen!")
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
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Frederik")
talkEntry:addTrigger("Silvereye")
talkEntry:addResponse("Yes, that's me!")
talkEntry:addResponse("Who? Me?")
talkEntry:addResponse("#me waves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frederik ")
talkEntry:addTrigger("Silvereye")
talkEntry:addResponse("Ja, das bin ich!")
talkEntry:addResponse("Wer? Ich?")
talkEntry:addResponse("#me winkt")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bless you")
talkEntry:addResponse("Thanks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gesundheit")
talkEntry:addResponse("Danke.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me schüttelt den Kopf während er einen Brief liest", "#me shakes his head whilst reading a letter.")
talkingNPC:addCycleText("#me zählt einige Münzen.", "#me counts some coins.")
talkingNPC:addCycleText("#me starrt vor sich hin.", "#me stares into thin air.")
talkingNPC:addCycleText("#me schreibt einen Brief.", " #me writes a letter.")
talkingNPC:addCycleText("#me grummelt: 'Arbeit, nichts als Arbeit!'", "#me mumbles: 'Work, nothing but work.'")
talkingNPC:addCycleText("Werdet Bürger von Galmair! Macht mich reich!...äh ich meine, werdet reich in Galmair!", "Become a citizen of Galmair! Make me rich...ehm, I mean become rich in Galmair.")
talkingNPC:addCycleText("#me niest.", "#me sneezes.")
talkingNPC:addCycleText("#me kratzt sich am Kopf.", "#me scratches his head.")
talkingNPC:addCycleText("#me putzt seine Nase.", "#me blows his nose.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Frederik Silvereye der Notar.", "This NPC is Frederik Silvereye the notary.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 830)
mainNPC:setEquipment(3, 813)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 827)
mainNPC:setEquipment(10, 326)
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
