local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, ">", 18))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Error] Something went wrong, please inform a developer."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Boumaug Firesmash the Patrol Guard. Keywords: Hello, Quest, Task, Orders, Gate, fire, blood."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Boumaug Firesmash, ein patrouillierender Wächter. Schlüsselwörter: Hallo, Quest, Aufgabe, Befehle, Tore, Blut, Feuer."))
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
talkEntry:addResponse("Hurr! New one... bit small. Yous here for first task?")
talkEntry:addResponse("You! Da Don needs some tasks done, on da double!")
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
talkEntry:addResponse("Hurr! Du neu hier seien... Ein wenig schmächtig. Du hier für erste Aufgabe?")
talkEntry:addResponse("Du da! Der Don braucht dich für ein paar Dinge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hurr! New one... bit small. Yous here for first task?")
talkEntry:addResponse("You! Da Don needs some tasks done, on da double!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hurr! Du neu hier seien... Ein wenig schmächtig. Du hier für erste Aufgabe?")
talkEntry:addResponse("Du da! Der Don braucht dich für ein paar Dinge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("See yous!")
talkEntry:addResponse("May da fire burn in yous belly!")
talkEntry:addResponse("Keep da eyes out!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Möge das Feuer in deinem Hintern brennen!")
talkEntry:addResponse("Lass deine Augen wo sie sind!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Dismissed.")
talkEntry:addResponse("Best of luck.")
talkEntry:addResponse("Move out!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Wegtreten.")
talkEntry:addResponse("Viel Glück.")
talkEntry:addResponse("Los gehts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Feel good. Fire Father good, da Don happy, da town safe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Gut fühlen. Feuervater gut, da Don glücklich, da Stadt sicher!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am the patrol guard, Boumaug Firesmash, da fire orc! Not blood orc!")
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
talkEntry:addResponse("Ich bin der patrouillierende Wächter, Boumag Firesmash, ein Feuerork. Kein Blutclanork!")
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
talkEntry:addTrigger("fire")
talkEntry:addTrigger("fire orc")
talkEntry:addResponse("Da fire orcs worship Brágon. We avoid da blood rage. Control. Hold da fire, not be da fire.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Feuer Ork")
talkEntry:addTrigger("Feuer")
talkEntry:addResponse("Die Feuerorks beten Brágon an. Wir vermeiden das Blutclangebiet. Kontrolle! Besitze das Feuer, sei es nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("blood")
talkEntry:addTrigger("blood orc")
talkEntry:addResponse("Not blood orc! Blood orcs, dey get mad. When dey mad, dey do not think. Dey do not know fire burns. Dey do not know Brágon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Blut")
talkEntry:addTrigger("Blut Ork")
talkEntry:addResponse("Kein Blutclanork! Blutorks sind verrückt. Wenn sie irre werden, sie nicht nachdenken. Sie nicht wissen das Feuer brennt, sie nicht kennen Brágon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You don't work for da Don, you don't work for meh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du nicht arbeiten für den Don, du nicht arbeiten für mich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You don't work for da Don, you don't work for meh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du nicht arbeiten für den Don, du nicht arbeiten für mich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Patrol your own borders, silly robe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bewache deine eigenen Grenzen, Dummerchen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Patrol your own borders, silly robe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Bewache Deine eigenen Grenzen, Dummerchen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Yous wanderer! Yous come work for da Don, after you move to Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du Wanderer! Du kommst zu arbeiten für Don, erst wenn du Galmairer bist!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Yous wanderer! Yous come work for da Don, after you move to Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du Wanderer! Du kommst zu arbeiten für Don, erst wenn du Galmairer bist!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] As a Galmair Guard I"))
talkEntry:addConsequence(consequence_quest(155, "=", 1))
talkEntry:addResponse("Yous not been here much. Yous need to know da rules. Go to da statues in front of da Crest, da Don's house. Big building in da mountain. Read da rules. Know da rules.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs I"))
talkEntry:addConsequence(consequence_quest(155, "=", 1))
talkEntry:addResponse("Du nicht lange hier sein. Du musst wissen Regeln. Geh zu den Statuen vor Galmairs Krone, das is Dons Haus. Großes Haus im Berg. Lies die Regeln, wisse die Regeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] As a Galmair Guard I"))
talkEntry:addConsequence(consequence_quest(155, "=", 1))
talkEntry:addResponse("Yous not been here much. Yous need to know da rules. Go to da statues in front of da Crest, da Don's house. Big building in da mountain. Read da rules. Know da rules.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs I"))
talkEntry:addConsequence(consequence_quest(155, "=", 1))
talkEntry:addResponse("Du nicht lange hier sein. Du musst wissen Regeln. Geh zu den Statuen vor Galmairs Krone, das is Dons Haus. Großes Haus im Berg. Lies die Regeln, wisse die Regeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You learned the rules."))
talkEntry:addConsequence(consequence_quest(155, "=", 3))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Good, yous can read! Now you won't do bad! Time for real work!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 2))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du hast die Regeln gelernt."))
talkEntry:addConsequence(consequence_quest(155, "=", 3))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Gut, du können lesen. Nun du nix kannst falsch machen. Zeit für richtige Arbeit!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("How yous know what to do if yous do not read? Go to da Crest, look at the statues.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wie du willst wissen was zu tun wenn du nicht gelesen? Gehe zur Krone, betrachte die Statuen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("How yous know what to do if yous do not read? Go to da Crest, look at the statues.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Wie du willst wissen was zu tun wenn du nicht gelesen? Gehe zur Krone, betrachte die Statuen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] As a Galmair Guard II"))
talkEntry:addConsequence(consequence_quest(155, "=", 4))
talkEntry:addResponse("#me nods sternly, 'First, joo go check da Notary in the Census Office down da road and up da stairs, da South Gate by Gava, and den da Don! Come back when done!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 3))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs II"))
talkEntry:addConsequence(consequence_quest(155, "=", 4))
talkEntry:addResponse("#me nickt ernst, 'Du kontrollieren Notar, Straße hinunter, Leiter hinauf, das Südtor mit Gava und dann geh zum Don! Wenn gemacht, komm zurück!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 3))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] As a Galmair Guard"))
talkEntry:addConsequence(consequence_quest(155, "=", 4))
talkEntry:addResponse("#me nods sternly, 'First, joo go check da Notary in the Census Office down da road and up da stairs, da south gate by Gava, and den da Don! Come back when done!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 3))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs II"))
talkEntry:addConsequence(consequence_quest(155, "=", 4))
talkEntry:addResponse("#me nickt ernst, 'Du kontrollieren Notar, Straße hinunter, Leiter hinauf, das Südtor mit Gava und dann geh zum Don! Wenn gemacht, komm zurück!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded some sausage."))
talkEntry:addConsequence(consequence_item(3051, 3, 333, nil))
talkEntry:addConsequence(consequence_quest(155, "=", 6))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Da Don good? Yous do good. Here's a snack before yous go out again!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 5))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst eine Wurst."))
talkEntry:addConsequence(consequence_item(3051, 3, 333, nil))
talkEntry:addConsequence(consequence_quest(155, "=", 6))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Der Don gut? Du gut gemacht, hier Essen bevor weitergehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Hurry! Go to da Notary, South Gate, and den check on da Don in da Crest!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 4))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Los Beeilung! Geh zum Notar, Südtor und zum Don in der Krone!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 4))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Hurry! Go to da Notary, South Gate, and den check on da Don in da Crest!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 4))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Los Beeilung! Geh zum Notar, Südtor und zum Don in der Krone!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] As a Galmair Guard III"))
talkEntry:addConsequence(consequence_quest(155, "=", 7))
talkEntry:addResponse("See small hole in wall? Yous should fix it! Bring me twenty cut stone blocks!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs III"))
talkEntry:addConsequence(consequence_quest(155, "=", 7))
talkEntry:addResponse("Siehst du kleines Loch in Mauern? Du musst es schließen. Bring zwanzig Steinquader zu mir!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] As a Galmair Guard III"))
talkEntry:addConsequence(consequence_quest(155, "=", 7))
talkEntry:addResponse("See small hole in wall? Yous should fix it! Bring me twenty cut stone blocks!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs III"))
talkEntry:addConsequence(consequence_quest(155, "=", 7))
talkEntry:addResponse("Siehst du kleines Loch in Mauern? Du musst es schließen. Bring zwanzig Steinquader zu mir!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 7))
talkEntry:addCondition(condition_item(733, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a chisel."))
talkEntry:addConsequence(consequence_deleteitem(733, 20, nil))
talkEntry:addConsequence(consequence_item(737, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(155, "=", 8))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Oops! Forgot da chisel! Good work. The walls help stop bad things from sneaking in!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 7))
talkEntry:addCondition(condition_item(733, "all", ">", 19, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst eine Meißel."))
talkEntry:addConsequence(consequence_deleteitem(733, 20, nil))
talkEntry:addConsequence(consequence_item(737, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(155, "=", 8))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Oh! Vergessen hab den Meißel. Gute Arbeit. Die Mauern helfen böse Dinge abzuhalten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Twenty cut stone blocks for da South Wall. If you need help, look in da market!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 7))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Zwanzig Steinquader für den Südwall. Wenn Hilfe brauchen, geh zum Markt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] As a Galmair Guard IV"))
talkEntry:addConsequence(consequence_quest(155, "=", 9))
talkEntry:addResponse("Yous are going out now! Go check da tunnel to da Dark Hole Mine, Galmair Harbour to da north, da Black Bridge, and da honey houses far to da east in da Plains of Nargún!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 8))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs IV"))
talkEntry:addConsequence(consequence_quest(155, "=", 9))
talkEntry:addResponse("Du jetzt gehen los! Kontrolliere den Tunnel zur Dunkellochmine, Galmairs Hafen in nördlicher Richtung, die Schwarzbrücke und den Bienenstock fern im Osten der Nargúnebene.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 8))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest]As a Galmair Guard IV"))
talkEntry:addConsequence(consequence_quest(155, "=", 9))
talkEntry:addResponse("Yous are going out now! Go check da tunnel to da Darrk Hole Mine, Galmair Harbour to da north, da Black Bridge, and da honey houses far to da east in da Plains of Nargún!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 8))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs IV"))
talkEntry:addConsequence(consequence_quest(155, "=", 9))
talkEntry:addResponse("Du jetzt gehen los! Kontrolliere den Tunnel zur Dunkellochmine, Galmairs Hafen in nördlicher Richtung, die Schwarzbrücke und den Bienenstock fern im Osten der Nargúnebene.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded an orc helmet."))
talkEntry:addConsequence(consequence_item(16, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(155, "=", 11))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Bad rats? Bah, they cause trouble again. I will tell da Don. Yous do good! Here, my spare helmet! One of us!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 10))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst eine Orkhelm"))
talkEntry:addConsequence(consequence_item(16, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(155, "=", 11))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Blöde Ratten?, Pah, sie machen wieder Schwierigkeiten. Ich sage es dem Don. Du hast gut gemacht. Hier, mein Ersatzhelm. Du, einer von uns!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Da harbour is to da north, through da tunnel! From da harbour, go south and follow da path through da swamp, to da bridge. Da Black Bridge! Den go far east from across da bridge in da Plains of Nargún, to da honey. Den west and back here!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 9))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Der Hafen ist im Norden, durch den Tunnel. Vom Hafen nach Süden, folge dem Weg durch den Sumpf zur Brücke, die Schwarzbrücke! Über die Brücke weit nach Osten zur Nargúnebene, zum Honig. Dann nach Westen und zurück zu mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 9))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Da harbour is to da north, through da tunnel! From da harbour, go south and follow da path through da swamp, to da bridge. Da Black Bridge! Den go far east from across da bridge in da Plains of Nargún, to da honey. Den west and back here!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 9))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Der Hafen ist im Norden, durch den Tunnel. Vom Hafen nach Süden, folge dem Weg durch den Sumpf zur Brücke, die Schwarzbrücke! Über die Brücke weit nach Osten zur Nargúnebene, zum Honig. Dann nach Westen und zurück zu mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 11))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] As a Galmair Guard V"))
talkEntry:addConsequence(consequence_quest(155, "=", 12))
talkEntry:addResponse("Now you sneak! Go see the Hemp Necktie Inn, and peek on the Queen of Cadomyr in her palace, and the Archmage's island in Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 11))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs V"))
talkEntry:addConsequence(consequence_quest(155, "=", 12))
talkEntry:addResponse("Nun du schleichen. Gehe zum Gasthof zur Hanfschlinge, dann wirf einen kurzen Blick auf die Königin von Cadomyr in ihrem Palast und den Erzmagier auf seiner Insel in Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 11))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest]As a Galmair Guard V"))
talkEntry:addConsequence(consequence_quest(155, "=", 12))
talkEntry:addResponse("Now you sneak! Go see the Hemp Necktie Inn, and peek on the Queen of Cadomyr in her palace, and the Archmage's island in Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 11))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs V"))
talkEntry:addConsequence(consequence_quest(155, "=", 12))
talkEntry:addResponse("Nun du schleichen. Gehe zum Gasthof zur Hanfschlinge, dann wirf einen kurzen Blick auf die Königin von Cadomyr in ihrem Palast und den Erzmagier auf seiner Insel in Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 13))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a pair of steel boots."))
talkEntry:addConsequence(consequence_item(326, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(155, "=", 14))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Good! Yous made it! While you were gone, I got you new boots!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 13))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst ein Paar Stahlschuhe."))
talkEntry:addConsequence(consequence_item(326, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(155, "=", 14))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Gut! Du hast es geschafft. Als du weg warst, habe ich neue Schuhe für dich besorgt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 12))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Remember, yous go see the Hemp Necktie Inn, da Queen's Palace, and da island da Archmage lives on.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 12))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Erinnere dich, du aufsuchen Gasthof zur Hanfschlinge, den Palast der Königin, die Insel wo der Erzmagier lebt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 12))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Remember, yous go see the Hemp Necktie Inn, da Queen's Palace, and da island da Archmage lives on.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 12))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Erinnere dich, du aufsuchen Gasthof zur Hanfschlinge, den Palast der Königin, die Insel wo der Erzmagier lebt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 14))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] As a Galmair Guard VI"))
talkEntry:addConsequence(consequence_quest(155, "=", 15))
talkEntry:addResponse("Now we needs grey cloth. Need new covering for Irmorom Temple, in da west of town. Go get twenty grey cloth and bring it to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 14))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs VI"))
talkEntry:addConsequence(consequence_quest(155, "=", 15))
talkEntry:addResponse("Jetzt wir brauchen grauen Stoff. Zum Auskleiden des Irmorom Tempels, im Westen der Stadt. Geh, bring zwanzig Ballen grauen Stoff zu mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 14))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] As a Galmair Guard VI"))
talkEntry:addConsequence(consequence_quest(155, "=", 15))
talkEntry:addResponse("Now we needs grey cloth. Need new covering for Irmorom Temple, in da west of town. Go get twenty grey cloth and bring it to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 14))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs VI"))
talkEntry:addConsequence(consequence_quest(155, "=", 15))
talkEntry:addResponse("Jetzt wir brauchen grauen Stoff. Zum Auskleiden des Irmorom Tempels, im Westen der Stadt. Geh, bring zwanzig Ballen grauen Stoff zu mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 15))
talkEntry:addCondition(condition_item(176, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a warhammer."))
talkEntry:addConsequence(consequence_deleteitem(176, 20, nil))
talkEntry:addConsequence(consequence_item(226, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(155, "=", 16))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Good job, recruit! You did good deed for the Don and Galmair. Dis hammer means you a defender of Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 15))
talkEntry:addCondition(condition_item(176, "all", ">", 19, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst einen Kriegshammer."))
talkEntry:addConsequence(consequence_deleteitem(176, 20, nil))
talkEntry:addConsequence(consequence_item(226, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(155, "=", 16))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Gute Arbeit, Rekrut. Du gute Taten für Don und Galmair getan. Dieser Hammer weist dich als Verteidiger Galmairs aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 15))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Irmorom is da God of da crafts and dwarves, a big deal in Galmair! We needs to make sure da craftsmen do good work! Go get twenty grey cloth and bring it to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 15))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Irmorom ist Gott der Handwerker und Zwerge, eine wichtige Sache in Galmair. Wir sicherstellen müssen, dass Handwerker gute Arbeit machen. Geh, bring zwanzig Ballen grauen Stoff zu mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 16))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] As a Galmair Guard VII"))
talkEntry:addConsequence(consequence_quest(155, "=", 17))
talkEntry:addResponse("Da Don has new request! Bring me a rapier, and a bottle of elven wine. Small bottle. Yellow. Not big red bottle. Da Don very particular.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 16))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs VII"))
talkEntry:addConsequence(consequence_quest(155, "=", 17))
talkEntry:addResponse("Der Don hat neue Aufgabe! Bring mir einen Degen und eine Flasche Elfenwein, kleine Flasche. Gelb, nicht große rote Flasche. Der Don ist da sehr eigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 16))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] As a Galmair Guard VII"))
talkEntry:addConsequence(consequence_quest(155, "=", 17))
talkEntry:addResponse("Da Don has new request! Bring me a rapier, and a bottle of elven wine. Small bottle. Yellow. Not big red bottle. Da Don very particular.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 16))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Als Wache Galmairs VII"))
talkEntry:addConsequence(consequence_quest(155, "=", 17))
talkEntry:addResponse("Der Don hat neue Aufgabe! Bring mir einen Degen und eine Flasche Elfenwein, kleine Flasche. Gelb, nicht große rote Flasche. Der Don ist da sehr eigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 17))
talkEntry:addCondition(condition_item(2675, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(1318, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a legionnaire's tower shield and a magical sapphire."))
talkEntry:addConsequence(consequence_deleteitem(2675, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(1318, 1, nil))
talkEntry:addConsequence(consequence_item(2448, 1, 999, {["descriptionEn"] = "This shield bears the crest of Galmair.", ["descriptionDe"] = "Dieses Schild trägt das Wappen Galmairs.", ["rareness"] = "3"}))
talkEntry:addConsequence(consequence_item(3522, 1, 333, {["gemLevel"] = "2"}))
talkEntry:addConsequence(consequence_quest(155, "=", 18))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Yous good friend of da Don. I am glad yous helped us. Thanks you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 17))
talkEntry:addCondition(condition_item(2675, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(1318, "all", ">", 0, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst einen Legionärsturmschild und einen magischen Saphir."))
talkEntry:addConsequence(consequence_deleteitem(2675, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(1318, 1, nil))
talkEntry:addConsequence(consequence_item(2448, 1, 999, {["descriptionEn"] = "This shield bears the crest of Galmair.", ["descriptionDe"] = "Dieses Schild trägt das Wappen Galmairs.", ["rareness"] = "3"}))
talkEntry:addConsequence(consequence_item(3522, 1, 333, {["gemLevel"] = "2"}))
talkEntry:addConsequence(consequence_quest(155, "=", 18))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Du bist Freund von Don. Ich froh, dass du geholfen hast. Danks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 17))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Da Don needs a rapier and a small bottle of yellow elven wine. Bring them back to me so I can inspect them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 17))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Der Don brauchen einen Degen und eine kleine Flasche gelben Elbenwein. Bring zu mir damit ich es ansehen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 18))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Yous bring big money to town! Yous bring big money to yous! Da fire burns in your belly! No more work for yous!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 18))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du bringen viel Geld in Stadt. Du bringen viel Geld zu uns. Du haben Feuer im Hintern. Ich keine Arbeit mehr für dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 18))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Yous bring big money to town! Yous bring big money to yous! Da fire burns in your belly! No more work for yous!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(155, "=", 18))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du bringen viel Geld in Stadt. Du bringen viel Geld zu uns. Du haben Feuer im Hintern. Ich keine Arbeit mehr für dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am da patrol guard! Da Don likes orcs for his muscle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin ein Wächter! Der Don bevorzugt Orks wegen ihrer Muskeln!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am da patrol guard! Da Don likes orcs for his muscle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin ein Wächter! Der Don bevorzugt Orks wegen ihrer Muskeln!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Gobaith was tiny island in ocean. Dis is Illarion! Da Don welcomes da islanders!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Gobaith war ne kleine Insel im Meer. Das ist Illarion! Der Don heißt auch Insulaner willkommen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Good name. Bet yous real famous huh?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Toller Name. Ich wette, du bist richtig berühmt huh?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Patrol")
talkEntry:addResponse("I set up da patrols! Dat helps keep da town and da Don safe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Streifen")
talkEntry:addResponse("Ich organisiere die Streifen! Wir helfen den Don und die Stadt zu sichern!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("guard")
talkEntry:addResponse("Yous want to become guard? I have lots of work for yous!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wächter")
talkEntry:addResponse("Du möchtest ein Stadtwächter werden? Ich habe ne Menge Arbeit für dich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gate")
talkEntry:addResponse("Gates keep da people who want to hurt us, out. Strong gates, strong town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tore")
talkEntry:addResponse("Die Tore halten unsere Feinde draußen. Starke Tore, starke Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bre")
talkEntry:addTrigger("Southstar")
talkEntry:addResponse("Bre good lass, even if she is stumpy. Sometimes, I wonder if she likes mes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bre")
talkEntry:addTrigger("Southstar")
talkEntry:addResponse("Bre ist nen gutes Mädel, auch wenn sie etwas plump ist. Manchmal frag ich mich ob sie mich mag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Ah, da lead robe man of Runewick. Robes don't fit me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ah, der oberste Robenträger von Runewick. Roben stehen mir nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ah, da lead robe man of Runewick. Robes don't fit me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ah, der oberste Robenträger von Runewick. Roben stehen mir nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Da robe town of Illarion. Big talks, small bodies.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Die Robenstadt von Illarion. Starkes Gelaber, schwache Körper.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Da Don is da big boss! He may be small and old, but he is tough and smart!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don ist der Anführer! Er mag zwar klein und alt sein, aber er ist stark und gewitzt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Da Don is da big boss! He may be small and old, but he is tough and smart!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Der Don ist der Anführer! Er mag zwar klein und alt sein, aber er ist stark und gewitzt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Da Queen, she is alright I guess. But have you seen Bre? Unbelievable!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Die Königin ist ganz in Ordnung, denke ich. Aber hast du Bre gesehen? Der Wahnsinn!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Da Queen, she is alright I guess. But have you seen Bre? Unbelievable!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Die Königin ist ganz in Ordnung, denke ich. Aber hast du Bre gesehen? Der Wahnsinn!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr da desert place. Sometimes dey take brothers as slaves. Dis not good.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr die Wüstenstadt. Manchmal nehmen sie meine Brüder als Sklaven. Das ist nicht gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Da angry human clan. Our clans fought long ago, and the result... well. It was a draw, I'd say.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ein zorniger Menschenstamm. Unsere Stämme haben vor langer Zeit gegeneinander gekämpft und das Ergebnis... nun ja. Es war ein Unentschieden, würde ich sagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("A tough place, but good to find work. Sometimes messy work. Da Don is from there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ein schwieriger Ort, aber gut um Arbeit zu finden. Manchmal schmutzige Arbeit. Der Don kommt dort her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar very clean, good place. Not many orcs. Not very welcome.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar ist ein sehr sauberer, guter Ort. Nicht viele Orks. Wir sind dort nicht sehr willkommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Da God I follow is Brágon, but the Younger Ones are good too!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Der Gott den ich anbete ist Bragon, aber die Jüngeren sind auch gut!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("He is da party God! All about da fun!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Er ist der Gott der Festivitäten! Alles für Wein, Weib und Gesang!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Da fire God! Brought life to da orcs, and brought da fire to our bellies! Hurr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Der Gott des Feuers! Hat den Orks das Leben eingehaucht und das Feuer in unsere Herzen! Hurr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Goddess of da dead. I'm not one, so I avoid her!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Göttin der Toten. Ich bin keiner also versuche ich mich fern zu halten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Smart Goddess. Popular with the robes. Too boring.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Intelligente Göttin. Sehr beliebt bei den Robenträgern. Zu langweilig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Elder God. Temple of the Five in da Plains of Silence, north east in mountain across river.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Älterer Gott, Tempel der Fünf in der Ebene der Stille, nordöstlich, im Berg über dem Fluss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Elder God. Temple of the Five in da Plains of Silence, north east in mountain across river.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Älterer Gott, Tempel der Fünf in der Ebene der Stille, nordöstlich, im Berg über dem Fluss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("God of crafts and dwarves! Big following in Galmair, and temple in da west of town!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Gott des Handwerks und der Zwerge! Viele Anhänger in Galmair und ein Tempel im Westen der Stadt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Warrior God, not bad. Good for battles, but not so much Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Gott der Krieger. Gut für Kämpfe, aber nicht wirklich Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Blood God! Other father of orcs. Not very nice.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Blutgott! Der andere Schöpfer der Orks. Nicht sehr nett.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Crazy God. Chance. Popular in Galmair, temple underneath town, in caves underground. Tricky games down there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Verrückter Gott. Beliebt in Galmair, ein Tempel in den Höhlen unter der Stadt. Knifflige Spiele da unten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Some Younger God mother. Too dull.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Eine junge Muttergöttin. Langweilig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Thief God of Galmair. Popular to pray for protection. Pay respects underground at the altar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Diebesgott von Galmair. Wird gerne um Schutz angefleht. Am unterirdischen Altar kann man ihm opfern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Goddess of pretty girls! Did good with Bre, eh?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Göttin der schönen Frauen! Hat er gut gemacht mit Bre, nicht wahr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Elder God. Temple of the Five in da Plains of Silence, north east in mountain across river.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Älterer Gott, Tempel der Fünf in der Ebene der Stille, nordöstlich, im Berg über dem Fluss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Elder God. Temple of the Five in da Plains of Silence, north east in mountain across river.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Älterer Gott, Tempel der Fünf in der Ebene der Stille, nordöstlich, im Berg über dem Fluss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("God of friends! God of brothers! Good for holding clans together, worshipped in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Gott der Freundschaft! Gott der Brüder! Nützlich um Stämme zusammen zuhalten, wird in Cadomyr angebetet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I don't trade, I protect!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich glaube nicht, zu handeln. Ich schützen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("#me blinks, 'My brother tried fishing once. He fell in the lake.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("me blinzelt, 'Mein Bruderr versuchte einst die Fischerei. Er fiel in den See.'")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Willkommen in Galmair!", "Welcome to Galmair!")
talkingNPC:addCycleText("Der Don mag Orks! Wir sind seine Muskeln!", "Da Don likes da orcs! We are his muscle!")
talkingNPC:addCycleText("#me schaut verträumt, 'Da gibt es Gava und Bula... und Bre...'", "#me stares off dreamily, 'Der is Gava, and Bula... and Bre...'")
talkingNPC:addCycleText("#me hakt etwas von einer Liste ab, 'Noch soviel zu tun...'", "#me checks off a list, 'So much more to do...'")
talkingNPC:addCycleText("#me klopft sich auf den Bauch, 'Feuer im Magen!", "#me slaps his stomach, 'Fire in da belly!'")
talkingNPC:addCycleText("#me grinst, 'Ich bade einmal im Monat, egal ob ich es brauche oder nicht!", "#me beams a grin, 'I bathe once a month, need it or not!'")
talkingNPC:addCycleText("#me grunzt voller Respekt.", "#me grunts in respect.")
talkingNPC:addCycleText("Urh, ich sollte später Trainieren gehen.", "Urh, should go train later.")
talkingNPC:addCycleText("Stell sicher, das du den Untergrund untersuchst!", "Be sure to check da underground!")
talkingNPC:addCycleText("Der Don sagt, dass man die besten Geschäfte in Galmair machen kann!", "Da Don says da best deals are in Galmair!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(5)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Boumaug Firesmash, ein patrouillierender Wächter.", "This NPC is Boumaug Firesmash the Patrol Guard.")
mainNPC:setUseMessage("Nub mich anfassen!", "Nub touch me!")
mainNPC:setConfusedMessage("#me kratzt sich den Kopf, die Stirn in Falten legend.", "#me scratches his head, brow furrowed in confusion.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 101)
mainNPC:setEquipment(11, 195)
mainNPC:setEquipment(5, 226)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 325)
mainNPC:setEquipment(9, 2117)
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
