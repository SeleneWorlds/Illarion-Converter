local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local condition_money = require("npc.base.condition.money")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local condition_rank = require("npc.base.condition.rank")
local condition_sex = require("npc.base.condition.sex")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local consequence_town = require("npc.base.consequence.town")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Reret Odohir the Notary of Cadomyr. Keywords: 'Join Cadomyr', 'Leave Cadomyr', 'rank', 'licence'."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Reret Odohir die Notarin von Cadomyr. Schlüsselwörter: 'Cadomyr beitreten', 'Cadomyr verlassen', 'Rang', 'Lizenz'."))
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
talkEntry:addResponse("Be greeted, nice to see you here.")
talkEntry:addResponse("Be greeted, I am the notary of this town.")
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
talkEntry:addTrigger("Mohltied")
talkEntry:addResponse("Grüße, schön Euch mal wieder hier zu sehen.")
talkEntry:addResponse("Zum Gruße, ich bin die Notarin dieser Stadt.")
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
talkEntry:addResponse("Greetings, nice to see you again")
talkEntry:addResponse("Be greeted, I am the notary of this town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Seid gegrüßt.")
talkEntry:addResponse("Grüße.")
talkEntry:addResponse("Grüße, schön Euch mal wieder hier zu sehen.")
talkEntry:addResponse("Zum Gruße, ich bin die Notarin dieser Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell!")
talkEntry:addResponse("Bye!")
talkEntry:addResponse("#me smiles at you and waves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Auf bald!")
talkEntry:addResponse("Bis bald!")
talkEntry:addResponse("#me lächelt dich an und winkt zum Abschied.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Fare well!")
talkEntry:addResponse("#me smiles at you and waves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Auf bald!")
talkEntry:addResponse("#me lächelt dich an und winkt zum Abschied.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I am fine and how are you?")
talkEntry:addResponse("I'm fine. Thanks for asking.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Mir geht es gut und wie geht es Euch?")
talkEntry:addResponse("Eigentlich ganz gut, danke der Nachfrage.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I'm Reret Odohir, Notary and citizen of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dein name")
talkEntry:addTrigger("wer bist du")
talkEntry:addTrigger("wer seid ihr")
talkEntry:addTrigger("wie heißt")
talkEntry:addTrigger("wie heisst")
talkEntry:addResponse("Ich bin Reret Odohir, Notar und Bürger von Cadomyr.")
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
talkEntry:addResponse("I sell nothing, but I can register you as a citizen. Just tell me, if you want to become a citizen.")
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
talkEntry:addResponse("Ick verkauf nichts, aber ich kann Euch als Bürger eintragen. Sagt mir einfach wenn Ihr Bürger dieser Stadt werden möchtet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("join Cadomyr")
talkEntry:addTrigger("become citizen")
talkEntry:addTrigger("gain citizenship")
talkEntry:addConsequence(consequence_town("=", "1"))
talkEntry:addResponse("Oh! You are already a citizen of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Cadomyr beitreten")
talkEntry:addTrigger("Bürger werden")
talkEntry:addTrigger("Bürgerschaft beantragen")
talkEntry:addConsequence(consequence_town("=", "1"))
talkEntry:addResponse("Oh! Ihr seid bereits Bürger von Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("join Cadomyr")
talkEntry:addTrigger("become citizen")
talkEntry:addTrigger("gain citizenship")
talkEntry:addConsequence(consequence_town("=", "1"))
talkEntry:addResponse("Let me prepare the documents... Welcome to Cadomyr! You are now a subject of Her Majesty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Cadomyr beitreten")
talkEntry:addTrigger("Bürger werden")
talkEntry:addTrigger("Bürgerschaft beantragen")
talkEntry:addConsequence(consequence_town("=", "1"))
talkEntry:addResponse("Lasst mich die Urkunde vorbereiten... Willkommen in Cadomyr! Ihr seid jetzt ein Untertan Ihrer Majestät.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("join Cadomyr")
talkEntry:addTrigger("become citizen")
talkEntry:addTrigger("gain citizenship")
talkEntry:addConsequence(consequence_town("=", "1"))
talkEntry:addResponse("Let me prepare the documents... Welcome to Cadomyr! You are now a subject of Her Majesty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Cadomyr beitreten")
talkEntry:addTrigger("Bürger werden")
talkEntry:addTrigger("Bürgerschaft beantragen")
talkEntry:addConsequence(consequence_town("=", "1"))
talkEntry:addResponse("Lasst mich die Urkunde vorbereiten... Willkommen in Cadomyr! Ihr seid jetzt ein Untertan Ihrer Majestät.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("join Cadomyr")
talkEntry:addTrigger("become citizen")
talkEntry:addTrigger("gain citizenship")
talkEntry:addConsequence(consequence_town("=", "1"))
talkEntry:addResponse("Let me prepare the documents... Welcome to Cadomyr! You are now a subject of Her Majesty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("Cadomyr beitreten")
talkEntry:addTrigger("Bürger werden")
talkEntry:addTrigger("Bürgerschaft beantragen")
talkEntry:addConsequence(consequence_town("=", "1"))
talkEntry:addResponse("Lasst mich die Urkunde vorbereiten... Willkommen in Cadomyr! Ihr seid jetzt ein Untertan Ihrer Majestät.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("give up citizenship")
talkEntry:addTrigger("terminate")
talkEntry:addTrigger("leave")
talkEntry:addTrigger("leaving")
talkEntry:addConsequence(consequence_quest(209, "=", 1))
talkEntry:addResponse("You want to give up citizenship in Cadomyr. Are you sure?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("beende Bürgerschaft")
talkEntry:addTrigger("verlasse")
talkEntry:addTrigger("annulier")
talkEntry:addConsequence(consequence_quest(209, "=", 1))
talkEntry:addResponse("Ihr wollt den Status als Bürger Cadomyrs augfeben? Seid Ihr sicher?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("give up citizenship")
talkEntry:addTrigger("terminate")
talkEntry:addTrigger("leave")
talkEntry:addTrigger("leaving")
talkEntry:addResponse("Ehm... you are not a citizen of Cadomyr anyway.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beende Bürgerschaft")
talkEntry:addTrigger("verlasse")
talkEntry:addTrigger("annulier")
talkEntry:addResponse("Ehm... Ihr seid kein Bürger Cadomyrs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(209, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("yes")
talkEntry:addConsequence(consequence_quest(209, "=", 0))
talkEntry:addConsequence(consequence_town("=", "0"))
talkEntry:addResponse("You are no longer citizen under the protection of Her Majesty Queen Rosaline, you no longer belong to Cadomyr. Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(209, "=", 1))
talkEntry:addTrigger("ja")
talkEntry:addConsequence(consequence_quest(209, "=", 0))
talkEntry:addConsequence(consequence_town("=", "0"))
talkEntry:addResponse("Ihr seid nun nicht länger Büger unter dem Schutz Königin Rosalines, Ihr gehört nicht mehr zu Cadomyr. Auf bald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(209, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_quest(209, "=", 0))
talkEntry:addResponse("I see... Yes, Cadomyr is truly a nice place. I am glad you stay with us.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(209, "=", 1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_quest(209, "=", 0))
talkEntry:addResponse("Ich verstehe... Ja, Cadomyr ist für wahr ein guter Ort. Es freut mich, dass ihr hier bei uns bleibt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("welche Stadt")
talkEntry:addTrigger("fraktion")
talkEntry:addTrigger("Reich")
talkEntry:addResponse("Du gehörst nach %TOWN!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("which town")
talkEntry:addTrigger("faction")
talkEntry:addTrigger("realm")
talkEntry:addResponse("You belong to %TOWN!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 10))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("#me bows deeply.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 10))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("#me bows deeply.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 10))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("#me verbeut sich erfürchtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 10))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("#me verbeut sich erfürchtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 9))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Duke %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 9))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Duchess %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 9))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Herzog %CHARNAME! Hochwohlgeboren, wie ist es Euch ergangen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 9))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Herzogin %CHARNAME! Hochwohlgeboren, wie ist es Euch ergangen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 8))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Count!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 8))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Countess!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 8))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Seid gegrüßt, mein Graf!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 8))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Seid gegrüßt, meine Gräfin!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 7))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Baron %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 7))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Baroness %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 7))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Baron %CHARNAME, seid gegrüßt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 7))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Baronin %CHARNAME, seid gegrüßt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 6))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Knight!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 6))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Knight!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 6))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Ritter, seid gegrüßt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 6))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Ritterin, seid gegrüßt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 5))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Squire %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 5))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Squire %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 5))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Knappe %CHARNAME, seid gegrüßt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 5))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Knappin %CHARNAME, seid gegrüßt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 4))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Page!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 4))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Page!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 4))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Page, seid gegrüßt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 4))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Pagin, seid gegrüßt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 3))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Yeoman!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 3))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Greetings to you, Yeowoman!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 3))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Seid gegrüßt, Freisasse!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 3))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Seid gegrüßt, Freisassin!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 2))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Good day, Servant %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 2))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Good day, Servant %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 2))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Guten Tag, Diener %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 2))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Guten Tag, Dienerin %CHARNAME!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Ah! So you are a Bondsman?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("Ah! So you are a Bondswoman?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Ah! Ihr seid ein Höriger.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Ah! Ihr seid eine Hörige.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rank")
talkEntry:addResponse("You are new here. You are not well known. Make an effort and become famous, Serf!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rank")
talkEntry:addResponse("You are new here. You are not well known. Make an effort and become famous, Serf!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Ihr seid noch ganz neu hier. Euch kennt kaum jemand. Strengt Euch mehr an und mach Euch einen Namen, Leibeigener!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_rank(">", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("rang")
talkEntry:addResponse("Ihr seid noch ganz neu hier. Euch kennt kaum jemand. Strengt Euch mehr an und mach Euch einen Namen, Leibeigene!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rank")
talkEntry:addResponse("I do not know about other ranks of other towns.")
talkEntry:addResponse("I am not interested in other systems, only the Cadomyrian one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rang")
talkEntry:addResponse("Ich weiß nichts über Ränge in anderen Städten.")
talkEntry:addResponse("Ich interessiere mich nur für das cadomyrische Statussystem.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("licence")
talkEntry:addTrigger("license")
talkEntry:addCondition(condition_town(1))
talkEntry:addResponse("There is no need for you to buy a licence, since you are a citizen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("lizenz")
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addResponse("Ihr benötigt keine Lizenz, da ihr Bürger dieser Stadt seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("lizenz")
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(1))
talkEntry:addResponse("Ihr benötigt keine Lizenz, da ihr Bürgerin dieser Stadt seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("licence")
talkEntry:addTrigger("license")
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_town(2))
talkEntry:addCondition(condition_rank("<", 100))
talkEntry:addResponse("You look as though you are quite new here, thus, you can currently use our tools for free.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("lizenz")
talkEntry:addCondition(condition_town(3))
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
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addResponse("There is no need for you to buy a licence, since you are a citizen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addTrigger("beta")
talkEntry:addTrigger("gamma")
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_sex(0))
talkEntry:addResponse("Ihr benötigt keine Lizenz, da ihr Bürger dieser Stadt seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addTrigger("beta")
talkEntry:addTrigger("gamma")
talkEntry:addCondition(condition_town(1))
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
talkEntry:addCondition(condition_quest(811, ">", 0))
talkEntry:addConsequence(consequence_money("-", 10000))
talkEntry:addConsequence(consequence_quest(811, "+", 12))
talkEntry:addConsequence(consequence_inform("[Licence purchased] You bought licence 'Alpha' for one gold coin. You can use the static tools of this town for an additional one real time hour. The time has been added to your time left."))
talkEntry:addResponse("You are free to use our tools for an additional three hours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addCondition(condition_quest(811, ">", 0))
talkEntry:addConsequence(consequence_money("-", 10000))
talkEntry:addConsequence(consequence_quest(811, "+", 12))
talkEntry:addConsequence(consequence_inform("[Lizenz erworben] Du hast die Lizenz 'Alpha' für eine Goldmünze erworben. Du kannst die Werkzeuge dieser Stadt für eine weitere Echtzeit-Stunde frei benutzen. Die Stunden wurden zu deiner verbliebenen Zeit aufsummiert."))
talkEntry:addResponse("Euch ist es nun gestattet, unsere Werkzeuge für weitere drei Stunden zu verwenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addCondition(condition_language("english"))
talkEntry:addConsequence(consequence_money("-", 10000))
talkEntry:addConsequence(consequence_quest(811, "+", 12))
talkEntry:addConsequence(consequence_inform("[Licence purchased] You bought licence 'Alpha' for a gold coin. You can use the static tools of this town for the next real time hour."))
talkEntry:addResponse("Wonderful, you are free to use our tools for the next three hours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alpha")
talkEntry:addConsequence(consequence_money("-", 10000))
talkEntry:addConsequence(consequence_quest(811, "+", 12))
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
talkEntry:addCondition(condition_quest(811, ">", 0))
talkEntry:addConsequence(consequence_money("-", 20000))
talkEntry:addConsequence(consequence_quest(811, "+", 36))
talkEntry:addConsequence(consequence_inform("[Licence purchased] You bought licence 'Beta' for two gold coins. You can use the static tools of this town for an additional three real time hours. The time has been added to your time left."))
talkEntry:addResponse("You are free to use our tools for an additional nine hours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beta")
talkEntry:addCondition(condition_quest(811, ">", 0))
talkEntry:addConsequence(consequence_money("-", 20000))
talkEntry:addConsequence(consequence_quest(811, "+", 36))
talkEntry:addConsequence(consequence_inform("[Lizenz erworben] Du hast die Lizenz 'Beta' für zwei Goldmünzen erworben. Du kannst die Werkzeuge dieser Stadt für weitere drei Echtzeit-Stunden frei benutzen. Die Stunden wurden zu deiner verbliebenen Zeit aufsummiert."))
talkEntry:addResponse("Euch ist es nun gestattet, unsere Werkzeuge für weitere neun Stunden zu verwenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beta")
talkEntry:addCondition(condition_language("english"))
talkEntry:addConsequence(consequence_money("-", 20000))
talkEntry:addConsequence(consequence_quest(811, "+", 36))
talkEntry:addConsequence(consequence_inform("[Licence purchased] You bought licence 'Beta' for two gold coins. You can use the static tools of this town for the next three real time hours."))
talkEntry:addResponse("Wonderful, you are free to use our tools for the next nine hours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beta")
talkEntry:addConsequence(consequence_money("-", 20000))
talkEntry:addConsequence(consequence_quest(811, "+", 36))
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
talkEntry:addCondition(condition_quest(811, ">", 0))
talkEntry:addConsequence(consequence_money("-", 30000))
talkEntry:addConsequence(consequence_quest(811, "+", 96))
talkEntry:addConsequence(consequence_inform("[Licence purchased] You bought licence 'Gamma' for three gold coins. You can use the static tools of this town for an additional eight real time hours. The time has been added to your time left."))
talkEntry:addResponse("You are free to use our tools for an additional day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gamma")
talkEntry:addCondition(condition_quest(811, ">", 0))
talkEntry:addConsequence(consequence_money("-", 30000))
talkEntry:addConsequence(consequence_quest(811, "+", 96))
talkEntry:addConsequence(consequence_inform("[Lizenz erworben] Du hast die Lizenz 'Gamma' für drei Goldmünzen erworben. Du kannst die Werkzeuge dieser Stadt für weitere acht Echtzeit-Stunden frei benutzen. Die Stunden wurden zu deiner verbliebenen Zeit aufsummiert."))
talkEntry:addResponse("Euch ist es nun gestattet, unsere Werkzeuge für einen weiteren Tag zu verwenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gamma")
talkEntry:addCondition(condition_language("english"))
talkEntry:addConsequence(consequence_money("-", 30000))
talkEntry:addConsequence(consequence_quest(811, "+", 96))
talkEntry:addConsequence(consequence_inform("[Licence purchased] You bought licence 'Gamma' for three gold coins. You can use the static tools of this town for the next eight real time hours."))
talkEntry:addResponse("Wonderful, you are free to use our tools for a day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gamma")
talkEntry:addConsequence(consequence_money("-", 30000))
talkEntry:addConsequence(consequence_quest(811, "+", 96))
talkEntry:addConsequence(consequence_inform("[Lizenz erworben] Du hast die Lizenz 'Gamma' für drei Goldmünzen erworben. Du kannst die Werkzeuge dieser Stadt für die nächsten acht Echtzeit-Stunden frei benutzen."))
talkEntry:addResponse("Wunderbar, euch ist es nun gestattet, unsere Werkzeuge für einen Tag zu verwenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Present from Cadomyr"))
talkEntry:addConsequence(consequence_quest(150, "=", 1))
talkEntry:addResponse("I'd like to send my grandparents in Salkamar a present from Cadomyr. They both like gardening, so I'd like to send them five desert sky capsules. I'm still busy working though, so could I ask you to go and find some for me, please?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Geschenk aus Cadomyr"))
talkEntry:addConsequence(consequence_quest(150, "=", 1))
talkEntry:addResponse("Ich möchte meinen Großeltern in Salkamar ein Geschenk aus Cadomyr schicken. Sie mögen beiden Gartenarbeit, daher dachte ich daran ihnen fünf Wüstenhimmelskapseln zu schicken. Ich bin mit der Arbeit sehr beschäftigt, könnte ich Euch bitten einige Wüstenhimmelskapseln für mich zu finden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Present from Cadomyr"))
talkEntry:addConsequence(consequence_quest(150, "=", 1))
talkEntry:addResponse("I'd like to send my grandparents in Salkamar a present from Cadomyr. They both like gardening, so I'd like to send them five desert sky capsules. I'm still busy working though, so could I ask you to go and find some for me, please?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Geschenk aus Cadomyr"))
talkEntry:addConsequence(consequence_quest(150, "=", 1))
talkEntry:addResponse("Ich möchte meinen Großeltern in Salkamar ein Geschenk aus Cadomyr schicken. Sie mögen beiden Gartenarbeit, daher dachte ich daran ihnen fünf Wüstenhimmelskapseln zu schicken. Ich bin mit der Arbeit sehr beschäftigt, könnte ich Euch bitten einige Wüstenhimmelskapseln für mich zu finden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 1))
talkEntry:addCondition(condition_item(146, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a dagger."))
talkEntry:addConsequence(consequence_deleteitem(146, 5, nil))
talkEntry:addConsequence(consequence_item(27, 1, 466, nil))
talkEntry:addConsequence(consequence_quest(150, "=", 2))
talkEntry:addResponse("Oh, you found the desert sky capsules? Thank you, that is very kind of you. Here, please take this, it shall be your reward for your troubles.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 1))
talkEntry:addCondition(condition_item(146, "all", ">", 4, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst als Belohnung einen Dolch."))
talkEntry:addConsequence(consequence_deleteitem(146, 5, nil))
talkEntry:addConsequence(consequence_item(27, 1, 466, nil))
talkEntry:addConsequence(consequence_quest(150, "=", 2))
talkEntry:addResponse("Oh, ihr habt die Wüstenhimmelskapseln gefunden? Danke, das ist sehr freundlich von Euch. Hier, bitte nehmt dies, betrachtet es als Belohung für eure Mühen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I'm still busy working, so could I ask you to go and find five desert sky capsule for me, please?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich bin mit der Arbeit sehr beschäftigt, könnte ich Euch bitten, fünf Wüstenhimmelskapseln für mich zu finden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I'm still busy working, so could I ask you to go and find five desert sky capsule for me, please?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich bin mit der Arbeit sehr beschäftigt, könnte ich Euch bitten, fünf Wüstenhimmelskapseln für mich zu finden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Thanks again for your help.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 2))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Danke nochmals für Eure Hilfe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 2))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Thanks again for your help.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(150, "=", 2))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Danke nochmals für Eure Hilfe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("No, sorry. I have nothing to do for you. Why don't you just enjoy your stay in Cadomyr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nein, tut mir leid. Ich habe keinen Auftrag für Euch. Warum genießt Ihr nicht einfach Euren Aufenthalt in Cadomyr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("No, sorry. I have nothing to do for you. Why don't you just enjoy your stay in Cadomyr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Nein, tut mir leid. Ich habe keinen Auftrag für Euch. Warum genießt Ihr nicht einfach Euren Aufenthalt in Cadomyr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("You can get registered as citizen here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Hier könnt Ihr Euch als Bürger eintragen lassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("You can get registered as citizen here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Hier könnt Ihr Euch als Bürger eintragen lassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Sand can be used to make glass, but I like it just the way it is. This place is full of sand, it is on the streets, inside my shoes, even the air is filled with sand if the wind is blowing. If you don't like sand, don't go to the desert.")
talkEntry:addResponse("I really like sand, especially quartz sand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Sand kann man nutzen um Glas daraus zu machen, aber ich mag Sand so wie er ist. Dieser Ort ist voll von Sand, er ist auf den Straßen, in meinen Schuhen, selbst in der Luft ist Sand, wenn der Wind weht. Wer keinen Sand mag, sollte nicht in die Wüste gehen.")
talkEntry:addResponse("Ich mag Sand sehr gerne, besonders Quartzsand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("People go to shrines to pray to their gods. Usually they take a donation for the gods with them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Die Leute gehen zu Tempeln der Götter um zu beten. Für gewöhnlich bringen sie eine Gabe an die Gottheit mit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("I heard the Archmage does nothing but read books and study the arcane arts. If it's true he must be almost dead from starvation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ich habe gehört, der Erzmagier tut nichts außer Bücher zu lesen und die arkanen Künste zu studiere. Wenn das stimmt, dann muss er fast tot vor Hunger sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I've heard the name before.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ich habe diesen Namen schon mal gehört.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("I don't like it there. It's a cold and boring place.")
talkEntry:addResponse("There are many books there, but not very interesting ones.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Mir gefällt es dort nicht. Das ist ein kalter, langweiliger Ort.")
talkEntry:addResponse("Es gibt dort viele Bücher... aber die sind nicht sonderlich interessant.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Valerio Guilianni is the ruler of Galmair. He does not live in Cadomyr of course.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Valerio Guilianni ist der Herrscher von Galmair. Und natürlich lebt er nicht in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is only half as nice as Cadomyr. They don't have sand there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist nur halb so schön wie Cadomyr. Die haben da nämlich keinen Sand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Honour to our Queen!")
talkEntry:addResponse("The Queen likes donkey milk... and I like sand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Ehre der Königin!")
talkEntry:addResponse("Die Königin mag Eselmilch... und ich mag Sand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("She is the noble and rightful ruler of Cadomyr.")
talkEntry:addResponse("Honour to our Queen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Sie ist die edle und rechtmäßige Herrscherin von Cadomyr.")
talkEntry:addResponse("Ehre der Königin!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I really love the hot weather here, and you?")
talkEntry:addResponse("Each town has magical gems, but ours, the ones of Cadomyr, are the most beautiful of them all!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ich liebe warmes Wetter hier, und Ihr?")
talkEntry:addResponse("Jede Stadt besitzt magische Edelsteine, aber unsere, die von Cadomyr, sind die schönsten von allen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar? My grandparents spoke badly about the place. I've never been there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar? Meine Großeltern haben schlecht über diesen Ort gesprochen. Ich war niemals dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Many merchants come from Gynk, at least that's my impression.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Viele Händler kommen aus Gynk, zumindest ist das so mein Eindruck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("My grandparents live in Salkamar. It's a nice place. I loved to visit them when I was a child.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Meine Großeltern leben in Salkamar. Es ist ein schöner Ort. Ich habe sie als Kind immer gerne besucht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I don't know this town, do they have notaries there?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ich kenne diese Stadt nicht, haben die da auch Notare?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("A pleasure, I am Reret Odohir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Freut mich, ich bin Reret Odohir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Reret")
talkEntry:addTrigger("Odohir")
talkEntry:addResponse("That's me. How can I help you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Reret")
talkEntry:addTrigger("Odohir")
talkEntry:addResponse("Das bin ich. Was kann ich für Euch tun?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me unterzeichnet ein Dokument.", "#me signs a document.")
talkingNPC:addCycleText("#me befestigt ein Siegel an einem Brief.", "#me puts a seal under a letter.")
talkingNPC:addCycleText("#me lächelt.", "#me smiles.")
talkingNPC:addCycleText("#me macht sich ein paar Notizen.", "#me takes some notes.")
talkingNPC:addCycleText("#me summt eine Melodie.", "#me hums a melody.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Reret Odohir die Notarin.", "This NPC is Reret Odohir the Notary.")
mainNPC:setUseMessage("Lasst mich in Ruhe!", "Don't you touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 845)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 0)
mainNPC:setEquipment(10, 45)
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
