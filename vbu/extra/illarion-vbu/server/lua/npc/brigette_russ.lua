local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
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
talkEntry:addConsequence(consequence_inform("[Game Help] This is NPC Brigette Russ the thief. Keywords are: hello, profession, task, Ronagan, fox, coin."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Brigette Russ, die Diebin. Schlüsselwörter sind: Hallo, Beruf, Aufgabe, Ronagan, Fuchs, Münze."))
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
talkEntry:addResponse("Greetings to you. Would you be willing to help a lady down on her luck?")
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
talkEntry:addResponse("Seid gegrüßt! Wärt Ihr bereit, einer Frau zu helfen, die vom Glück verlassen wurde?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetings to you. Would you be willing to help a lady down on her luck?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Seid gegrüßt! Wärt Ihr bereit, einer Frau zu helfen, die vom Glück verlassen wurde?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("May the Fox guide you to safe paths.")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Möge der Fuchs Euch auf sichere Pfade führen.")
talkEntry:addResponse("Gehabt Euch wohl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("May the Fox guide you to safe paths.")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Möge der Fuchs Euch auf sichere Pfade führen.")
talkEntry:addResponse("Gehabt Euch wohl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How do you feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I was much better before the thieves took my items.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Mir ging es bedeutend besser, bevor die Diebe meine Sachen gestohlen haben!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Brigette Russ is my name, though please don't tell anyone.")
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
talkEntry:addResponse("Brigette Russ heiße ich... aber erzählt es bitte nicht herum.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Path of the Fox I"))
talkEntry:addConsequence(consequence_quest(543, "=", 1))
talkEntry:addResponse("I've been robbed! It's unbelievable! I'm giving a reward to the one what be bringing me back my things! The rotten thief stole my hat, two rings, a plate and a goblet, along with my flute, which he has likely hidden in the chests below *points north*. Bring them back to me for your reward.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Der Pfad des Fuchses I"))
talkEntry:addConsequence(consequence_quest(543, "=", 1))
talkEntry:addResponse("Ich bin bestohlen worden! Unglaublich! Ich gebe demjenigen eine Belohnung, der mir meine Sachen wiederbringt! Der verfaulte Dieb stahl meinen Hut, zwei Ringe, einen Teller und einen Kelch, außerdem meine Flöte. Er oder sie hat den Kram vermutlich in einer Kiste im Untergrund versteckt. *Sie zeigt nach Norden* Beschafft mir alles für eine Belohnung wieder.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] The Path of the Fox I"))
talkEntry:addConsequence(consequence_quest(543, "=", 1))
talkEntry:addResponse("I've been robbed! It's unbelievable! I'm giving a reward to the one what be bringing me back my things! The rotten thief stole my hat, two rings, a plate and a goblet, along with my flute, which he has likely hidden in the chests below *points north*. Bring them back to me for your reward.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Der Pfad des Fuchses I"))
talkEntry:addConsequence(consequence_quest(543, "=", 1))
talkEntry:addResponse("Ich bin bestohlen worden! Unglaublich! Ich gebe demjenigen eine Belohnung, der mir meine Sachen wiederbringt! Der verfaulte Dieb stahl meinen Hut, zwei Ringe, einen Teller und einen Kelch, außerdem meine Flöte. Er oder sie hat den Kram vermutlich in einer Kiste im Untergrund versteckt. *Sie zeigt nach Norden* Beschafft mir alles für eine Belohnung wieder.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Have you found my belongings yet? I look for my hat, two rings, a flute, plate, and a goblet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Habt Ihr meine Sachen bereits gefunden? Es fehlt mein Hut, zwei Ringe, eine Flöte und ein Teller und ein Krug.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Have you found my belongings yet? I look for my hat, two rings, a flute, plate, and a goblet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Habt Ihr meine Sachen bereits gefunden? Es fehlt mein Hut, zwei Ringe, eine Flöte und ein Teller und ein Krug.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(235, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("My spies tell me you have my things. So where are they? I want my Grey hat, a gold ring, a ruby ring, a flute, a plate, and a goblet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(68, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("My spies tell me you have my things. So where are they? I want my Grey hat, a gold ring, a ruby ring, a flute, a plate, and a goblet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(1840, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("My spies tell me you have my things. So where are they? I want my Grey hat, a gold ring, a ruby ring, a flute, a plate, and a goblet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(830, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("My spies tell me you have my things. So where are they? I want my Grey hat, a gold ring, a ruby ring, a flute, a plate, and a goblet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(1001, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("My spies tell me you have my things. So where are they? I want my Grey hat, a gold ring, a ruby ring, a flute, a plate, and a goblet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(90, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("My spies tell me you have my things. So where are they? I want my Grey hat, a gold ring, a ruby ring, a flute, a plate, and a goblet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(235, "all", "<", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Meine Spione sagen, Ihr habt meine Sachen gefunden. Aber wo sind sie jetzt? Es fehlt mein Hut, zwei Ringe, eine Flöte und ein Teller und ein Krug.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(68, "all", "<", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Meine Spione sagen, Ihr habt meine Sachen gefunden. Aber wo sind sie jetzt? Es fehlt mein Hut, zwei Ringe, eine Flöte und ein Teller und ein Krug.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(1840, "all", "<", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Meine Spione sagen, Ihr habt meine Sachen gefunden. Aber wo sind sie jetzt? Es fehlt mein Hut, zwei Ringe, eine Flöte und ein Teller und ein Krug.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(830, "all", "<", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Meine Spione sagen, Ihr habt meine Sachen gefunden. Aber wo sind sie jetzt? Es fehlt mein Hut, zwei Ringe, eine Flöte und ein Teller und ein Krug.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(1001, "all", "<", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Meine Spione sagen, Ihr habt meine Sachen gefunden. Aber wo sind sie jetzt? Es fehlt mein Hut, zwei Ringe, eine Flöte und ein Teller und ein Krug.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(90, "all", "<", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Meine Spione sagen, Ihr habt meine Sachen gefunden. Aber wo sind sie jetzt? Es fehlt mein Hut, zwei Ringe, eine Flöte und ein Teller und ein Krug.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(235, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(68, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(1840, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(830, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(1001, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(90, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded fifty silver coins and a gold ring."))
talkEntry:addConsequence(consequence_deleteitem(235, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(68, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(1840, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(830, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(1001, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(90, 1, nil))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_item(235, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(543, "=", 3))
talkEntry:addResponse("You found them all! Here's your reward and a little something extra for not asking me how I came by them all in the first place. *she winks at you as she hands you 50 silver and the golden ring*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 2))
talkEntry:addCondition(condition_item(235, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(68, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(1840, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(830, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(1001, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(90, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünfzig Silberstücke und einen Goldring."))
talkEntry:addConsequence(consequence_deleteitem(235, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(68, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(1840, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(830, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(1001, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(90, 1, nil))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_item(235, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(543, "=", 3))
talkEntry:addResponse("Ihr habt alles gefunden! Hier ist Eure Belohnung und ein kleines Extra, da Ihr so diskret wart und nicht gefragt habt, wo ich die Sachen ursprünglich her habe. *Sie zwinkert dir zu, als Sie dir 50 Silberlinge und einen Goldring überreicht*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Path of the Fox II"))
talkEntry:addConsequence(consequence_quest(543, "=", 4))
talkEntry:addResponse("Those thieving traitors. They have turned from the path of Ronagan. I have heard in their home they have a 'Mysterious Document' that contains some information I need. Please find it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Der Pfad des Fuchses II"))
talkEntry:addConsequence(consequence_quest(543, "=", 4))
talkEntry:addResponse("Diese diebischen Verräter. Sie haben sich vom Weg Ronagans entfernt. Ich habe gehört, dass sie ein mysteriöses Dokument besitzen, welches einige Informationen enthält, die ich brauche. Bitte findet das Dokument für mich! Es sollte unten in ihrem Versteck sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] The Path of the Fox II"))
talkEntry:addConsequence(consequence_quest(543, "=", 4))
talkEntry:addResponse("Those thieving traitors. They have turned from the path of Ronagan. I have heard in their home they have a 'Mysterious Document' that contains some information I need. Please find it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Der Pfad des Fuchses II"))
talkEntry:addConsequence(consequence_quest(543, "=", 4))
talkEntry:addResponse("Diese diebischen Verräter. Sie haben sich vom Weg Ronagans entfernt. Ich habe gehört, dass sie ein mysteriöses Dokument besitzen, welches einige Informationen enthält, die ich brauche. Bitte findet das Dokument für mich! Es sollte unten in ihrem Versteck sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I really need the information contained on the 'Mysterious document' that they have below in their dungeon. Locate it and tell me at once!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich brauchte wirklich die Informationen aus dem mysteriösen Dokument, welches die Diebe unten in ihrem Versteck haben. Findet es und berichtet mir dann sofort!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I really need the information contained on the 'Mysterious document' that they have below in their dungeon. Locate it and tell me at once!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich brauchte wirklich die Informationen aus dem mysteriösen Dokument, welches die Diebe unten in ihrem Versteck haben. Findet es und berichtet mir dann sofort!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 75 silver coins."))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_quest(543, "=", 6))
talkEntry:addResponse("That is curious information *her eyes glint*. Thank you for finding that for me. Ask for another task if you wish one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 5))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 75 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_quest(543, "=", 6))
talkEntry:addResponse("Das sind wirklich aufregende Informationen. *Ihre Augen funkeln* Danke, dass Ihr sie für mich gefunden habt. Ich habe noch eine Aufgabe für Euch, wenn Ihr Interesse habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Path of the Fox III"))
talkEntry:addConsequence(consequence_item(1323, 1, 333, {["descriptionEn"] = "Mysterious Violet Bottle", ["descriptionDe"] = "Geheimnisvolle violette Flasche"}))
talkEntry:addConsequence(consequence_quest(543, "=", 7))
talkEntry:addResponse("We need to weaken their resolve through their bellies. Take this vial and slip it into their food. It should keep them running for the pit latrine for hours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Der Pfad des Fuchses III"))
talkEntry:addConsequence(consequence_item(1323, 1, 333, {["descriptionEn"] = "Mysterious Violet Bottle", ["descriptionDe"] = "Geheimnisvolle violette Flasche"}))
talkEntry:addConsequence(consequence_quest(543, "=", 7))
talkEntry:addResponse("Wir müssen die Entschlossenheit dieser Bande durch ihren Magen schwächen. Hier, nehmt dieses Fläschchen und entleert es auf ihrem Essen. Sie dürften danach eine Weile auf der Latrine beschäftigt sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] The Path of the Fox III"))
talkEntry:addConsequence(consequence_item(1323, 1, 333, {["descriptionEn"] = "Mysterious Violet Bottle", ["descriptionDe"] = "Geheimnisvolle violette Flasche"}))
talkEntry:addConsequence(consequence_quest(543, "=", 7))
talkEntry:addResponse("We need to weaken their resolve through their bellies. Take this vial and slip it into their food. It should keep them running for the pit latrine for hours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Der Pfad des Fuchses III"))
talkEntry:addConsequence(consequence_item(1323, 1, 333, {["descriptionEn"] = "Mysterious Violet Bottle", ["descriptionDe"] = "Geheimnisvolle violette Flasche"}))
talkEntry:addConsequence(consequence_quest(543, "=", 7))
talkEntry:addResponse("Wir müssen die Entschlossenheit dieser Bande durch ihren Magen schwächen. Hier, nehmt dieses Fläschchen und entleert es auf ihrem Essen. Sie dürften danach eine Weile auf der Latrine beschäftigt sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I have a plan. They keep recruiting more and more thieves. But if they can't eat, they can't talk! Take this vial, and slip it into the 'Thieves dinner'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 7))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Mein Plan zielt darauf ab, dass die Bande nicht immer weiter neue Diebe rekrutiert! Aber wenn sie nach dem Essen auf der Latrine festsitzen, können sie mit niemandem sprechen. Nehmt das Fläschchen und behandelt das 'Abendessen der Diebe' damit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 7))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I have a plan. They keep recruiting more and more thieves. But if they can't eat, they can't talk! Take this vial, and slip it into the 'Thieves dinner'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 7))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Mein Plan zielt darauf ab, dass die Bande nicht immer weiter neue Diebe rekrutiert! Aber wenn sie nach dem Essen auf der Latrine festsitzen, können sie mit niemandem sprechen. Nehmt das Fläschchen und behandelt das 'Abendessen der Diebe' damit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five strawberry cakes."))
talkEntry:addConsequence(consequence_item(354, 5, 333, nil))
talkEntry:addConsequence(consequence_quest(543, "=", 9))
talkEntry:addResponse("Excellent work, here are a few cakes I 'acquired' from the halfling in the south. I am sure they have not been tampered with.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 8))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünf Erdbeertorten."))
talkEntry:addConsequence(consequence_item(354, 5, 333, nil))
talkEntry:addConsequence(consequence_quest(543, "=", 9))
talkEntry:addResponse("Hervorragende Arbeit. Hier, einige Kuchen, die ich von einem Halbling im Süden.. ähm.. 'beschafft' habe. Oh und.. ich bin sicher, man kann diese Kuchen gefahrlos essen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Path of the Fox IV"))
talkEntry:addConsequence(consequence_quest(543, "=", 10))
talkEntry:addResponse("Now is the time to act quickly. Take out the mass of the renegades while they are weak, killing at least ten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 9))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Der Pfad des Fuchses IV"))
talkEntry:addConsequence(consequence_quest(543, "=", 10))
talkEntry:addResponse("Es gilt jetzt, schnell zu handeln. Tötet den Großteil der Bande, während sie geschwächt sind, zehn von ihnen, um genau zu sein!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 9))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] The Path of the Fox IV"))
talkEntry:addConsequence(consequence_quest(543, "=", 10))
talkEntry:addResponse("Now is the time to act quickly. Take out the mass of the renegades while they are weak, killing at least ten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 9))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Der Pfad des Fuchses IV"))
talkEntry:addConsequence(consequence_quest(543, "=", 10))
talkEntry:addResponse("Es gilt jetzt, schnell zu handeln. Tötet den Großteil der Bande, während sie geschwächt sind, zehn von ihnen, um genau zu sein!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, ">", 9))
talkEntry:addCondition(condition_quest(543, "<", 20))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Now is the time to act quickly. Take out the mass of the renegades while they are weak, killing at least ten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, ">", 9))
talkEntry:addCondition(condition_quest(543, "<", 20))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Es gilt jetzt, schnell zu handeln. Tötet den Großteil der Bande, während sie geschwächt sind, zehn von ihnen, um genau zu sein!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, ">", 9))
talkEntry:addCondition(condition_quest(543, "<", 20))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Now is the time to act quickly. Take out the mass of the renegades while they are weak, killing at least ten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, ">", 9))
talkEntry:addCondition(condition_quest(543, "<", 20))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Es gilt jetzt, schnell zu handeln. Tötet den Großteil der Bande, während sie geschwächt sind, zehn von ihnen, um genau zu sein!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 20))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 100 silver coins."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(543, "=", 21))
talkEntry:addResponse("Excellent news. We only have left to take out their leader, they should be properly broken by then.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 20))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 100 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(543, "=", 21))
talkEntry:addResponse("Sehr gute Neuigkeiten. Nun müssen wir nur noch ihren Anführer ausschalten, dann dürfte die Bande ordentlich zermürbt sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Path of the Fox IV"))
talkEntry:addConsequence(consequence_quest(543, "=", 22))
talkEntry:addResponse("This is enough of their turncoat ways. Get in there, take out their leader, and if you happen to find an especially nice dagger for me, I've a special bonus for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 21))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Der Pfad des Fuchses IV"))
talkEntry:addConsequence(consequence_quest(543, "=", 22))
talkEntry:addResponse("Es reicht mit der Bande und ihrem verräterischen Verhalten. Geht hin und Tötet ihren Anführer. Und wenn Ihr dabei noch einen besonderen Dolch für mich findet, habe ich eine besondere Belohnung für Euch..")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 21))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] The Path of the Fox IV"))
talkEntry:addConsequence(consequence_quest(543, "=", 22))
talkEntry:addResponse("This is enough of their turncoat ways. Get in there, take out their leader, and if you happen to find an especially nice dagger for me, I've a special bonus for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 21))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Der Pfad des Fuchses IV"))
talkEntry:addConsequence(consequence_quest(543, "=", 22))
talkEntry:addResponse("Es reicht mit der Bande und ihrem verräterischen Verhalten. Geht hin und Tötet ihren Anführer. Und wenn Ihr dabei noch einen besonderen Dolch für mich findet, habe ich eine besondere Belohnung für Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 22))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("This is enough of their turncoat ways. Get in there, take out their leader, and if you happen to find an especially nice dagger for me, I've a special bonus for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 22))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Es reicht mit der Bande und ihrem verräterischen Verhalten. Geht hin und Tötet ihren Anführer. Und wenn Ihr dabei noch einen besonderen Dolch für mich findet, habe ich eine besondere Belohnung für Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 22))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("This is enough of their turncoat ways. Get in there, take out their leader, and if you happen to find an especially nice dagger for me, I've a special bonus for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 22))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Es reicht mit der Bande und ihrem verräterischen Verhalten. Geht hin und Tötet ihren Anführer. Und wenn Ihr dabei noch einen besonderen Dolch für mich findet, habe ich eine besondere Belohnung für Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 23))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 100 silver coins."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(543, "=", 24))
talkEntry:addResponse("The elven warrior is dead but you didn't manage to bring me a glowing dagger? Such a shame, but thank you for clearing the way for me! *She tosses you some coins before quickly sneaking into the hole*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 23))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 100 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(543, "=", 24))
talkEntry:addResponse("Der Elfenkrieger ist tot, aber Ihr konntet keinen besonderen schimmernden Dolch finden? Wie schade, aber Danke trotzdem, dass Ihr mir den Weg freigeräumt habt! *Sie wirft dir einen kleinen Sack mit Münzen zu, bevor sie schnell und leise im Loch verschwindet*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 24))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You have done well and now I may plunder them at my leisure.  You have succeed where the others failed. I have no more need of you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 24))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ihr habt Eure Sache gut gemacht, ich kann sie jetzt ausrauben, soviel ich will. Ihr habt gesiegt, wo andere versagt haben. Ich brauche Eure Dienste nicht länger.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 24))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You have done well and now I may plunder them at my leisure.  You have succeed where the others failed. I have no more need of you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(543, "=", 24))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ihr habt Eure Sache gut gemacht, ich kann sie jetzt ausrauben, soviel ich will. Ihr habt gesiegt, wo andere versagt haben. Ich brauche Eure Dienste nicht länger.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("A true thief of Ronagan am I, I steal from the rich and give to the poor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Beruf")
talkEntry:addResponse("Ich bin ein wahrer Dieb Ronagans, ich stehle von den Reichen und gebe es den Armen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("A true thief of Ronagan am I, I steal from the rich and give to the poor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Job")
talkEntry:addResponse("Ich bin ein wahrer Dieb Ronagans, ich stehle von den Reichen und gebe es den Armen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Brigette Russ is my name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Mein Name ist Brigette Russ.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("coin")
talkEntry:addResponse("A true thief of Ronagan am I, I steal from the rich and give to the poor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Münze")
talkEntry:addResponse("Als wahrer Dieb Ronagans der ich bin, muss man von den Reichen nehmen und den Armen etwas geben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("fox")
talkEntry:addResponse("Ronagan is known as the fox.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fuchs")
talkEntry:addResponse("Ronagan ist auch bekannt als der Fuchs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan is the patron god of thieves and shadows. The thieves below do not follow his beliefs. I am the true believer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan ist der Schutzpatron der Diebe und Schatten. Die Diebesbande im Untergrund folgte seinen Wegen nicht. Ich selbst bin eine wahre Gläubige.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I do not sell or buy anything.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich kaufe und verkaufe nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Ehrt den Fuchs.", "Honour the Fox.")
talkingNPC:addCycleText("#me verschiebt sich in den Schatten und beobachtet die Gegend.", "#me shifts into the shadows and scans the area.")
talkingNPC:addCycleText("Vertraue nie einem Dieb.", "Never trust a thief.")
talkingNPC:addCycleText("#me murmelt leise zu sich selbst, 'Kann es kaum erwarten, selbst dorthin zu gelangen.'", "#me talks to herself quietly, 'Can't wait to get in there myself.'")
talkingNPC:addCycleText("Schatz... meins.", "Treasure... mine.")
talkingNPC:addCycleText("#me versucht sich im Schatten des Berges zu verstecken.", "#me tries to hide in the shadow of the mountain.")
talkingNPC:addCycleText("Ein Fuchs ist immer pfiffig.", "A fox is always clever.")
talkingNPC:addCycleText("#me grummelt zu sich selbst: 'Ich werde sie dazu bringen, mir zu glauben.'", "#me mutters to herself.'I will get them to believe me.'")
talkingNPC:addCycleText("Wie soll ich da nur reinkommen?", "How to get inside?")
talkingNPC:addCycleText("Niemand ist ärmer dran als ich.", "None are poorer than me.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist die Diebin Brigette Russ.", "This NPC is the thief Brigette Russ.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(3, 819)
mainNPC:setEquipment(11, 194)
mainNPC:setEquipment(5, 2668)
mainNPC:setEquipment(4, 384)
mainNPC:setEquipment(9, 826)
mainNPC:setEquipment(10, 1054)
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
