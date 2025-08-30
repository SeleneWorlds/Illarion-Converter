local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
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
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Gretel Goldhair. Keywords: Quest, profession, Galmair, garbage, gods, Don."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Gretel Goldhair. Schlüsselwörter: Auftrag, Beruf, Galmair, Müll, Götter, Don."))
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
talkEntry:addResponse("Greetings!")
talkEntry:addResponse("#me nods.")
talkEntry:addResponse("Speak louder, I can't hear you!")
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
talkEntry:addResponse("Grüße!")
talkEntry:addResponse("#me nickt.'")
talkEntry:addResponse("Sprecht lauter, ich kann Euch nicht hören.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hm?")
talkEntry:addResponse("Speak louder, I can't hear you!")
talkEntry:addResponse("Hello.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hm?")
talkEntry:addResponse("Sprecht lauter, ich kann Euch nicht hören.")
talkEntry:addResponse("Hallo.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("#me nods")
talkEntry:addResponse("Speak louder, I can't hear you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("#me nickt.")
talkEntry:addResponse("Sprecht lauter, ich kann Euch nicht hören.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Take care!")
talkEntry:addResponse("May the Five be with you!")
talkEntry:addResponse("#me bows her head.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Bis bald!")
talkEntry:addResponse("Mögen die Fünf mit Euch sein!")
talkEntry:addResponse("#me neigt den Kopf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Speak louder, I can't hear you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Sprecht lauter, Ich kann Euch nicht hören.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Shoe? Just drop your shoe on the field here!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Gretel. And you are...?")
talkEntry:addResponse("Gretel Goldhair. I once was famous, maybe you heard of me?")
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
talkEntry:addResponse("Gretel Goldhair. Und Ihr seid?")
talkEntry:addResponse("Gretel Goldhair. Ich war mal berühmt. Vielleicht habt Ihr von mir gehört?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I doubt you came to the right place for a mission. How about you try the desert?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Dies dürfte nicht der richtige Ort für eure Mission sein. Schaut doch mal im Wüste nach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I doubt you came to the right place for a mission. How about you try the desert?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Dies dürfte nicht der richtige Ort für eure Mission sein. Schaut doch mal im Wüste nach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("There is no work for you here. If you seek employment go home to Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Für dich gibt es hier keine Arbeit, wenn du eine Beschäftigung suchst geh nach Hause nach Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("order")
talkEntry:addResponse("There is no work for you here. If you seek employment go home to Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Für dich gibt es hier keine Arbeit, wenn du eine Beschäftigung suchst geh nach Hause nach Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("While you will find many in Galmair who will support an Outlaw, I have no jobs for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Während du in Galmair viele finden wirst, die einen Gestzlosen unterstützen, habe ich keine Arbeit für dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("While you will find many in Galmair who will support an Outlaw, I have no jobs for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Während du in Galmair viele finden wirst, die einen Gestzlosen unterstützen, habe ich keine Arbeit für dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("charwis")
talkEntry:addTrigger("irongate")
talkEntry:addTrigger("hammer")
talkEntry:addConsequence(consequence_quest(702, "=", 8))
talkEntry:addResponse("Hammer collection? I threw away some hammers a few days ago...but, they did not belong to Charwis, did they?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 7))
talkEntry:addTrigger("collection")
talkEntry:addConsequence(consequence_quest(702, "=", 8))
talkEntry:addResponse("Hammer collection? I threw away some hammers a few days ago...but, they did not belong to Charwis, did they?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 7))
talkEntry:addTrigger("charwis")
talkEntry:addTrigger("irongate")
talkEntry:addTrigger("Hämmer")
talkEntry:addTrigger("Sammlung")
talkEntry:addTrigger("Hammer")
talkEntry:addConsequence(consequence_quest(702, "=", 8))
talkEntry:addResponse("Hämmersammlung? Ich habe da eine ganze Menge Hämmer vor ein paar Tagen entsorgt...aber, das war doch nicht Charwis Hammersammlung, oder?")
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
talkEntry:addResponse("I do not sell anything. But I take donations...or well, the Don does. Just bring the things here and place them on the field.")
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
talkEntry:addResponse("Ich verkaufe nichts. Aber ich nehme Spenden entgegen... nun ja, eigentlich sind es Spenden für den Don. Bringt die Sachen ruhig her und legt sie auf das Feld.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Galmair Treasury"))
talkEntry:addConsequence(consequence_quest(206, "=", 1))
talkEntry:addResponse("Do you want a task? Bring some more donations. And drop them on the field here!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Galmair Treasury"))
talkEntry:addConsequence(consequence_quest(206, "=", 1))
talkEntry:addResponse("Ihr möchtet eine Aufgabe? Bringt ein paar mehr Spenden her. Und legt sie hier auf das Feld!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Galmair Treasury"))
talkEntry:addConsequence(consequence_quest(206, "=", 1))
talkEntry:addResponse("Do you want a task? Bring some more donations. And drop them on the field here!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[New Quest] Galmair Treasury"))
talkEntry:addConsequence(consequence_quest(206, "=", 1))
talkEntry:addResponse("Ihr möchtet eine Aufgabe? Bringt ein paar mehr Spenden her. Und legt sie hier auf das Feld!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Donating is quite simple, just drop your items on the donation place. Easy, isn't it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Spenden ist eigentlich ganz einfach: Legt einen Gegenstand auf den Spendenplatz. Einfach, oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Donating is quite simple, just drop your items on the donation place. Easy, isn't it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Spenden ist eigentlich ganz einfach: Legt einen Gegenstand auf den Spendenplatz. Einfach, oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] Gretel is satisfied."))
talkEntry:addConsequence(consequence_quest(206, "=", 3))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Thank you for your donation!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 2))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] Gretel ist zufrieden."))
talkEntry:addConsequence(consequence_quest(206, "=", 3))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Danke für Eure Spende!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ask Cormac, maybe he has something for you to do, but come back again and donate more to the Don!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 3))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Frag' bei Cormac, vielleicht hat er etwas zu tun. Aber komm bald wieder und spende mehr an den Don!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 3))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Ask Cormac, maybe he has something for you to do, but come back again and donate more to the Don, Sweetheart!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(206, "=", 3))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Frag' bei Cormac, vielleicht hat er etwas zu tun. Aber komm bald wieder und spende mehr an den Don, Schätzchen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I have nothing for you to do, darling.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I have nothing to do for you, darling.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Ich habe keine Aufgabe für dich, Liebling.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe keine Aufgabe für dich, Liebling.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am sorting all that rubbish...I mean, all the donations to the Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich sortiere all diesen Müll...ähm, all diese Spenden an den Don, wollte ich sagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am sorting all that rubbish...I mean, all the donations to the Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich sortiere all diesen Müll...ähm, all diese Spenden an den Don, wollte ich sagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I came to Galmair as a young girl. And I am still here now. How long will you stay here?")
talkEntry:addResponse("I once was a well known, beautiful dancer, but I grew old and ugly. Now I guard this garbage bin.")
talkEntry:addResponse("When I was young, they called me Gretel Goldhair, but now they call me Gretel Greyhair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Ich kam als junges Mädchen nach Galmair. Jetzt bin ich immer noch da. Wie lange werden Ihr bleiben?")
talkEntry:addResponse("Ich war mal eine Stadtbekannt, wunderschöne Tänzerin. Doch ich wurde alt und hässlich. Jetzt beaufsichtige ich diese Müllkippe!")
talkEntry:addResponse("Früher nannten sie mich Gertel Goldhair, jetzt nennen sie mich Graue Gretel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("garbage bin")
talkEntry:addTrigger("rubbish")
talkEntry:addTrigger("garbage")
talkEntry:addTrigger("trash")
talkEntry:addResponse("You do not donate garbage to the Don, do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Müllkippe")
talkEntry:addTrigger("Müll")
talkEntry:addTrigger("Schrott")
talkEntry:addResponse("Ihr spendet doch keinen Müll an den Don, oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("magical")
talkEntry:addTrigger("surface")
talkEntry:addResponse("If you drop things on the magical surface they will disppear, and magically their value will be regained by Galmair's treasury.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("magische")
talkEntry:addTrigger("Fläche")
talkEntry:addTrigger("Oberfläche")
talkEntry:addResponse("Wenn Ihr Gegenstände auf die magische Oberfläche legt, werden sie durch Magie ihren Wert zurück erhalten und in die Schatzkammer von Galmair transferiert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("The Gods created Illarion without rubbish. Most of us produce rubbish everyday.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Die Götter erschufen Illarion ohne Müll. Wir erschaffen jeden Tag Müll.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("religion")
talkEntry:addResponse("If you lose your loved ones you hope the Gods keep them safe in their realms. Maybe you'll understand one day... or maybe you already do?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("religion")
talkEntry:addResponse("Wenn du deine Liebsten verloren hast, betest du zu den Göttern, dass sie sie sicher in ihrer Spähre verweilen lassen. Eines Tags werdet Ihr das verstehen... oder versteht Ihr das schon?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("faith")
talkEntry:addResponse("The Elder Gods have returned.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Glaube")
talkEntry:addResponse("Die alten Götter sind zurück gekehrt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("I am older than the Archmage. By ages!")
talkEntry:addResponse("Speak louder, I can't hear you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ich bin älter als der Erzmagier. Wesentlich älter!")
talkEntry:addResponse("Sprecht lauter, ich kann Euch nicht hören!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I am older than the Archmage. By ages!")
talkEntry:addResponse("Speak louder, I can't hear you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ich bin älter als der Erzmagier. Wesentlich älter!")
talkEntry:addResponse("Sprecht lauter, ich kann Euch nicht hören!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Speak louder, I can't hear you!")
talkEntry:addResponse("No, no. This place is Galmair, sweetheart")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Sprecht lauter, ich kann Euch nicht hören!")
talkEntry:addResponse("Nein, nein. Dieser Ort ist Galmair, Schätzchen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("That's the Don here, he allows me to guard the garbage bin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Das ist der Don. Er erlaubte mir auf die Müllkippe zu wachen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Best place to be.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Der beste Ort zum verweilen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Even she will be ugly when she's old, but I'll be dead by then, what a pity.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Auch sie wird häßlich, wenn sie alt wird. Aber dann ich schon tot, schade, schade...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I hate the arrogant brat!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ich hasse diese arrogante Göre!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Speak louder, I can't hear you!")
talkEntry:addResponse("Cadomyr... what's with Cadomyr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Sprecht lauter, ich kann Euch nicht hören!")
talkEntry:addResponse("Cadomyr? Was ist damit?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Speak louder, I can't hear you!")
talkEntry:addResponse("Albar...did you say?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Sprecht lauter, ich kann Euch nicht hören!")
talkEntry:addResponse("Albar...had Ihr gesagt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Speak louder, I can't hear you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Sprecht lauter, ich kann Euch nicht hören!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Speak louder, I can't hear you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Sprecht lauter, ich kann Euch nicht hören!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Speak louder, I can't hear you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Sprecht lauter, ich kann Euch nicht hören!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Speak louder, I can't hear you!")
talkEntry:addResponse("Haven't I met you before?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Sprecht lauter, ich kann Euch nicht hören!")
talkEntry:addResponse("Habe ich Euch nicht schon einmal gesehen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gretel")
talkEntry:addTrigger("Goldhair")
talkEntry:addResponse("You asked for me?")
talkEntry:addResponse("Who asked?")
talkEntry:addResponse("Did you say something?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gretel")
talkEntry:addTrigger("Goldhair")
talkEntry:addResponse("Ihr fragt nach mir?")
talkEntry:addResponse("Wer fragt?")
talkEntry:addResponse("Habt Ihr was gesagt?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Seht mich an, so werdet auch Ihr aussehen, wenn Ihr alt seid!", "Look at me, you will look just the same when you're old!")
talkingNPC:addCycleText("#me kichert irre wie eine alte Hexe.", "#me cackles like an old witch.")
talkingNPC:addCycleText("#me stützt sich auf ihren Stock.", "#me rests her arms on her walking staff.")
talkingNPC:addCycleText("#me starrt in die Ferne.", "#me stares across the hall.")
talkingNPC:addCycleText("#me zieht die Nase hoch. ", "#me snuffles.")
talkingNPC:addCycleText("#me redet leise mich sich selbst.", "#me talks to herself silently.")
talkingNPC:addCycleText("#me schaut sich um.", "#me looks around.")
talkingNPC:addCycleText("#me hustet.", "#me coughs.")
talkingNPC:addCycleText("#me spuckt auf den Boden.", "#me spits on the ground.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Gretel Goldhair.", "This NPC is Gretel Goldhair.")
mainNPC:setUseMessage("Bleibt weg von mir!", "Stay away from me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 1)
mainNPC:setEquipment(3, 802)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 0)
mainNPC:setEquipment(9, 0)
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
