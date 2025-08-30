local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Cilivren Itiireae, the Guardian of the Fields. Keywords: Hello, rats, quest, knowledge, task, mission."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Cilivren Itiireae, the Wächter der Felder. Schlüsselwörter: Hallo, Ratten, Quest, Wissen, Auftrag, Aufgabe, Abenteuer."))
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
talkEntry:addResponse("Be Greeted.")
talkEntry:addResponse("Be Greeted in the name of the Five. Have you come to help with our rat mission?")
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
talkEntry:addResponse("Begrüßt.")
talkEntry:addResponse("Sei gegrüßt im Namen der Fünf. Bist du gekommen uns bei der Rattenmission zu helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Be Greeted.")
talkEntry:addResponse("Be Greeted in the name of the Five. Have you come to help with our rat mission?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Begrüßt.")
talkEntry:addResponse("Sei gegrüßt im Namen der Fünf. Bist du gekommen uns bei der Rattenmission zu helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("May the five guide you.")
talkEntry:addResponse("Farewell and safekeeping till we cross paths again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Mögen die Fünf mit dir sein.")
talkEntry:addResponse("Lebe wohl und sichere Wege bis wir uns wiedersehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("May the five guide you.")
talkEntry:addResponse("Farewell and safekeeping till we cross paths again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Mögen die Fünf mit dir sein.")
talkEntry:addResponse("Lebe wohl und sichere Wege bis wir uns wiedersehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I am most blessed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ich bin reich gesegnet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Cilivren Itiireae, I am the Guardian of the Fields.")
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
talkEntry:addResponse("Mein Name ist Cilivren Itiireae. Ich bin der Wächter der Felder.")
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
talkEntry:addResponse("Ich bin keine Marktfrau.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Only those from the realm of wisdom will find work here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nur Jene aus dem Reich der Weisheit werden hier etwas zu tun finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Only those from the realm of wisdom will find work here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Nur Jene aus dem Reich der Weisheit werden hier etwas zu tun finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Only those from the realm of wisdom will find work here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nur Jene aus dem Reich der Weisheit werden hier etwas zu tun finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Only those from the realm of wisdom will find work here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Nur Jene aus dem Reich der Weisheit werden hier etwas zu tun finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Only those from the realm of wisdom will find work here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nur Jene aus dem Reich der Weisheit werden hier etwas zu tun finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Only those from the realm of wisdom will find work here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Nur Jene aus dem Reich der Weisheit werden hier etwas zu tun finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Save The Field I. (Double click the rope to use it in front of the well.)"))
talkEntry:addConsequence(consequence_item(2760, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(188, "=", 1))
talkEntry:addResponse("The rats are carrying off the farmers crops, please descend into the cursed well they have taken over and kill five rats. I will provide you with a rope.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Save The Field I. (Double click the rope to use it in front of the well.)"))
talkEntry:addConsequence(consequence_item(2760, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(188, "=", 1))
talkEntry:addResponse("The rats are carrying off the farmers crops, please descend into the cursed well they have taken over and kill five rats. I will provide you with a rope.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rette die Äcker I. (Nimm das Seil und klicke zweimal darauf, während du vor dem Brunnen stehst.)"))
talkEntry:addConsequence(consequence_item(2760, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(188, "=", 1))
talkEntry:addResponse("Die Ratten verschleppen die Ernte der Bauern, da sie überhand genommen haben. Bitte steige in diesen verwünschten Schacht hinab und töte fünf Ratten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(188, "=", 7))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("#me smiles, glancing over the field to her right, 'Thank you perhaps you could assist more?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 6))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(188, "=", 7))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("#me lässt lächelnd den Blick über das Feld zu ihrer rechten streifen, 'Vielleicht kannst du noch mehr helfen?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, ">", 0))
talkEntry:addCondition(condition_quest(188, "<", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("The farmers can't withstand much more theft by the rats, please hurry up and kill five rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, ">", 0))
talkEntry:addCondition(condition_quest(188, "<", 6))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("The farmers can't withstand much more theft by the rats, please hurry up and kill five rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, ">", 0))
talkEntry:addCondition(condition_quest(188, "<", 6))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Die Bauern können die Diebstähle der Ratten nicht mehr ertragen, bitte beeile Dich und töte fünf Ratten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Save The Field II"))
talkEntry:addConsequence(consequence_quest(188, "=", 8))
talkEntry:addResponse("Please descend into the well again and harvest ten rat furs.  The tailors need it to make gloves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 7))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Save The Field II"))
talkEntry:addConsequence(consequence_quest(188, "=", 8))
talkEntry:addResponse("Please descend into the well again and harvest ten rat furs.  The tailors need it to make gloves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 7))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rette die Äcker II"))
talkEntry:addConsequence(consequence_quest(188, "=", 8))
talkEntry:addResponse("Bitte steige nochmals in den Schacht hinab und sammle zehn Rattenfelle. Der Schneider braucht sie um Handschuhe zu machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(2586, 10, nil))
talkEntry:addConsequence(consequence_quest(188, "=", 9))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Nice soft furs. The Archmage will be most pleased to hear of your assistance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(2586, 10, nil))
talkEntry:addConsequence(consequence_quest(188, "=", 9))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Schöne weiche Felle. Der Erzmagier wird über deine Hilfe sehr erfreut sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("The tailors have a pressing order for gloves, please bring me ten rat furs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("The tailors have a pressing order for gloves, please bring me ten rat furs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Die Schneider haben eine dringende Bestellung für Handschuhe. Bitte bringe mir zehn Rattenfelle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 9))
talkEntry:addCondition(condition_town(2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Save The Field III"))
talkEntry:addConsequence(consequence_quest(188, "=", 10))
talkEntry:addResponse("The harvest has not been saved yet. Please kill ten rats to further help our farmers again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 9))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Save The Field III"))
talkEntry:addConsequence(consequence_quest(188, "=", 10))
talkEntry:addResponse("The harvest has not been saved yet. Please kill ten rats to further help our farmers again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 9))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rette die Äcker III"))
talkEntry:addConsequence(consequence_quest(188, "=", 10))
talkEntry:addResponse("Noch ist die Ernte nicht sicher. Bitte töte noch mal zehn Ratten um unseren Bauern zu helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 20))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(188, "=", 21))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("One can see rats not so often now. The Archmage will be most pleased to hear of your assistance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 20))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(188, "=", 21))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Man sieht jetzt Ratten viel selterer. Der Erzmagier wird über deine Hilfe sehr erfreut sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, ">", 9))
talkEntry:addCondition(condition_quest(188, "<", 20))
talkEntry:addCondition(condition_town(2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Please kill ten rats to further help our farmers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, ">", 9))
talkEntry:addCondition(condition_quest(188, "<", 20))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Please kill ten rats to further help our farmers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, ">", 9))
talkEntry:addCondition(condition_quest(188, "<", 20))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bitte töte zehn Ratten um unseren Bauern zu helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Save The Fields IV - Find and 'use' 5 poisoned rat baits in the cistern."))
talkEntry:addConsequence(consequence_quest(253, "=", 0))
talkEntry:addConsequence(consequence_quest(188, "=", 22))
talkEntry:addResponse("Recently I got some carrots from our farmer. I poisoned them and distributed them in the cistern. Please verify if the rats touched them. But use gloves if you touch the baits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 21))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Save The Fields IV - Find and 'use' 5 poisoned rat baits in the cistern."))
talkEntry:addConsequence(consequence_quest(253, "=", 0))
talkEntry:addConsequence(consequence_quest(188, "=", 22))
talkEntry:addResponse("Recently I got some carrots from our farmer. I poisoned them and distributed them in the cistern. Please verify if the rats touched them. But use gloves if you touch the baits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 21))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rette die Äcker IV - Finde und prüfe 5 Köder in der Zisterne. Benutze den Köder, um ihn zu prüfen."))
talkEntry:addConsequence(consequence_quest(253, "=", 0))
talkEntry:addConsequence(consequence_quest(188, "=", 22))
talkEntry:addResponse("Ich habe vor kurzem einige Möhren von Bauern bekommen. Ich habe sie mit Gift präpariert und ausgelegt. Schau bei mindestens 5 der Köder nach, ob die Ratten es annehmen. Aber zieh irgendwelche Handschuhe an, wenn du sie anfasst!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 22))
talkEntry:addCondition(condition_quest(253, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("Find and 'use' 5 poisoned rat baits in the cistern. You must touch (use) the carrots."))
talkEntry:addResponse("Wear gloves and check the baits. This way me may solve the rat issue once and forever.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 22))
talkEntry:addCondition(condition_quest(253, "=", 0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("Finde und prüfe 5 Köder in der Zisterne. Benutze den Köder, um ihn zu prüfen."))
talkEntry:addResponse("Zieh Handschuhe an und prüf die Köder. Das ist unsere Chance den Ratten ein für alle Male beizukommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 22))
talkEntry:addCondition(condition_town(2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Oh no! You say the rats didn't touch the baits? Please check some more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 22))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("poison")
talkEntry:addTrigger("carrot")
talkEntry:addResponse("Oh je! You say the rats didn't touch the baits? Please check some more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 22))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Gift")
talkEntry:addTrigger("Möhre")
talkEntry:addResponse("Oh je! Du sagst, die Ratten verschähen die Köder? Bitte schau dir noch einige mehr an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 23))
talkEntry:addCondition(condition_town(2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Solved and new quest] Save The Fields V"))
talkEntry:addConsequence(consequence_quest(188, "=", 24))
talkEntry:addResponse("What a surprise, the rats must be more intelligent than we thought! We must do something now. I can not think of anything better than to kill another ten rats now.")
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 23))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("poison")
talkEntry:addTrigger("carrot")
talkEntry:addConsequence(consequence_inform("[Solved and new quest] Save The Fields V"))
talkEntry:addConsequence(consequence_quest(188, "=", 24))
talkEntry:addResponse("What a surprise, the rats must be more intelligent than we thought! We must do something now. I can not think of anything better than to kill another ten rats now.")
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 23))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Gift")
talkEntry:addTrigger("Möhre")
talkEntry:addConsequence(consequence_inform("[Gelöstes und neues Quest] Rette die Äcker V"))
talkEntry:addConsequence(consequence_quest(188, "=", 24))
talkEntry:addResponse("Ich bin erstaunt, die Ratten sind scheinbar intelligenter, als wir dachten! Wir müssen etwas tun. Mir fällt jetzt auch nichts Besseres ein, als weitere zehn Ratten zu töten.")
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 34))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(188, "=", 35))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("We may not have saved the world but we saved our harvest. The Archmage will be most pleased to hear of your assistance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 34))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(188, "=", 35))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Wir haben vielleicht nicht die Welt gerettet, aber wohl unsere Ernte. Der Erzmagier wird über deine Hilfe sehr erfreut sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, ">", 23))
talkEntry:addCondition(condition_quest(188, "<", 34))
talkEntry:addCondition(condition_town(2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("For the safety of the crops, you still need to kill ten rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, ">", 23))
talkEntry:addCondition(condition_quest(188, "<", 34))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("For the safety of the crops, you still need to kill ten rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, ">", 23))
talkEntry:addCondition(condition_quest(188, "<", 34))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du musst noch zehn Ratten töten um die Ernte zu sichern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 35))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Save The Fields VI"))
talkEntry:addConsequence(consequence_quest(188, "=", 36))
talkEntry:addResponse("Kill the ratman boss in the Cistern, he goes by the Snuffler. Maybe then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 35))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Save The Fields VI"))
talkEntry:addConsequence(consequence_quest(188, "=", 36))
talkEntry:addResponse("Kill the ratman boss in the Cistern, he goes by the Snuffler. Maybe then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 35))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rette die Äcker VI"))
talkEntry:addConsequence(consequence_quest(188, "=", 36))
talkEntry:addResponse("Töte den Rattenmenschen in der Zisterne, er ist der Befehlshaber und trägt den Namen 'Schnüffler'. Vielleicht werden die Ratten sich dann zurückziehen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 37))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 30 silver coins."))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(188, "=", 38))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("You have successfully helped save the crops, the Archmage and I are grateful.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 37))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 30 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(188, "=", 38))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Du hast erfolgreich geholfen die Ernte zu beschützen, der Erzmagier und ich sind dankbar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 36))
talkEntry:addCondition(condition_town(2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Kill the ratman boss in the Cistern, he goes by the Snuffler. Maybe then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 36))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Kill the ratman boss in the Cistern, he goes by the Snuffler. Maybe then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 36))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Töte den Rattenmenschen in der Zisterne, er ist der Befehlshaber und trägt den Namen 'Schnüffler'. Vielleicht werden die Ratten sich dann zurückziehen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 38))
talkEntry:addCondition(condition_town(2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Thank you once again. I have no more work for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 38))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Thank you once again. I have no more work for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(188, "=", 38))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nochmals danke. Ich habe nichts weiter für Dich zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("My job is Guardian of the Fields, I help protect the farmers and their crops.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin der Wächter der Felder. Ich bewache die Bauern und ihre Ernte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("My job is Guardian of the Fields, I help protect the farmers and their crops.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin der Wächter der Felder. Ich bewache die Bauern und ihre Ernte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ratte")
talkEntry:addResponse("Jeden Tag stehlen die Ratten mehr Getreide.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rat")
talkEntry:addResponse("The rats steal more crops every day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("knowledge")
talkEntry:addResponse("Knowledge is the cornerstone of all things.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wissen")
talkEntry:addResponse("Wissen ist der Grundstein aller Dinge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("My name is Cilivren Itiireae, I am the Guardian of the Fields.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Mein Name ist Cilivren Itiireae, Ich bin der Wächter der Felder.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wisdom")
talkEntry:addResponse("The wisest piece of wisdom is knowing we can not know all things.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Weisheit")
talkEntry:addResponse("Der Weiseste unter den Weisen weiß, daß wir nicht Alles wissen können.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ratman")
talkEntry:addResponse("The ratman in the well has a group of rat thugs in his command.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rattenmenschen")
talkEntry:addResponse("Der Rattenmann am Wall hat eine Bande von Rattengangstern unter seinem Kommando.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The quiet scholarly life of Runewick fosters growth for the good of all.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Das stille Forscherleben Runewicks fördert das Anwachsen des Glaubens an alle Götter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The quiet scholarly life of Runewick fosters growth for the good of all.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Das stille Forscherleben Runewicks fördert das Anwachsen des Glaubens an alle Götter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("The quiet scholarly life of Runewick fosters growth for the good of all.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Das stille Forscherleben Runewicks fördert das Anwachsen des Glaubens an alle Götter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Galmairians are only concerned with what they have and not what they know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Galmarianer befassen sich nuir mit dem was sie haben und nicht mit dem was sie wissen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmairians are only concerned with what they have and not what they know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmarianer befassen sich nuir mit dem was sie haben und nicht mit dem was sie wissen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("The people of Cadomyr choose to solve their problems with their swords and not with logic.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Die Bewohner Cadomyrs haben sich entschieden ihre Probleme nicht mit Logik sondern mit dem Schwert zu lösen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("The people of Cadomyr choose to solve their problems with their swords and not with logic.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Die Bewohner Cadomyrs haben sich entschieden ihre Probleme nicht mit Logik sondern mit dem Schwert zu lösen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("The people of Cadomyr choose to solve their problems with their swords and not with logic.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Die Bewohner Cadomyrs haben sich entschieden ihre Probleme nicht mit Logik sondern mit dem Schwert zu lösen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Necktie")
talkEntry:addTrigger("Hemp")
talkEntry:addTrigger("Inn")
talkEntry:addResponse("The Necktie is lacking any books or scholars.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gasthof")
talkEntry:addTrigger("Hanfs")
talkEntry:addTrigger("schlinge")
talkEntry:addTrigger("Necktie")
talkEntry:addResponse("Das Necktie hat keine Bücher noch Schüler.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara grants us the knowledge needed to understand how foul rats are.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara garantiert uns das Wissen welches wir brauchen für diese stinkenden Ratten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra grants us a lovely harvest, and the rats steal it away.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra garantiert uns eine glückliche Ernte, und die Ratten stehlen sie uns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I'm not a trader.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich bin kein Händler.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Die Bauern drohen zu streiken. Die Ratten müssen gestoppt werden.", "The farmers are threatening to strike, the rats must be stopped.")
talkingNPC:addCycleText("Die Ratten schleppen täglich mehr Essen weg.", "The rats carry off more food every day.")
talkingNPC:addCycleText("Der Erzmagier ist ein sehr weiser Mann.", "The Archmage is a very wise man.")
talkingNPC:addCycleText("#me sucht das Gelände voller Stolz ab.", "#me scans the area with pride.")
talkingNPC:addCycleText("#me erschaudert sichtbar vor Ekel, als eine große Ratte nahe vorbei rennt.", "#me visibly shudders in revulsion as a large rat scampers nearby.")
talkingNPC:addCycleText("#me bereitet ihren Bogen und Pfeile vor, auf etwas in der Ferne zielend.", "#me prepares her bow and arrow, taking aim at a target in the distance.")
talkingNPC:addCycleText("Du da, komm hilf mit gegen dieses Ungeziefer.", "You there, come help with these pests.")
talkingNPC:addCycleText("Es muss etwas getan werden. Gibt es hier eine mutige Seele dafür?", "Something must be done, are there any brave souls about?")
talkingNPC:addCycleText("#me lächelt zu den Lebewesen am Boden.", "#me smiles to the creatures above ground.")
talkingNPC:addCycleText("Das Leben ist voller Prüfungen. Diese Ratten sind meine.", "Life is full of trials, these rats are mine.")
talkingNPC:addCycleText("Ich habe es mit vergifteten Karotten im Schacht versucht, aber sie haben keine Wirkung auf diese Ratten.", "I have tried poisoned carrots in the well, but they had no effect on those rats!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(3)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Cilivren Itiireae, der Wächter der Felder.", "This NPC is Cilivren Itiireae, the Guardian of the Fields.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 356)
mainNPC:setEquipment(3, 364)
mainNPC:setEquipment(11, 2380)
mainNPC:setEquipment(5, 2780)
mainNPC:setEquipment(6, 64)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 2113)
mainNPC:setEquipment(10, 697)
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
