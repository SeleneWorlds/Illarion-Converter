local consequence_item = require("npc.base.consequence.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Aelfinn the Ranger. Keywords: hello, quest, Milly, job, cult."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Aelfinn der Ranger. Schlüsselwörter: hallo, quest, Milly, job, kult."))
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
talkEntry:addResponse("Oh thank the gods! I need your help!")
talkEntry:addResponse("I really don't have time for small talk right now.")
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
talkEntry:addResponse("Oh danke den Göttern! Ich brauche deine Hilfe!")
talkEntry:addResponse("Ich habe jetzt wirklich keine Zeit für Small Talk.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Oh thank the gods! I need your help!")
talkEntry:addResponse("I really don't have time for small talk right now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Oh danke den Göttern! Ich brauche deine Hilfe!")
talkEntry:addResponse("Ich habe jetzt wirklich keine Zeit für Small Talk.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("No! Don't go! I need your help!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Nein! Geh nicht! Ich brauche deine Hilfe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("No! Don't go! I need your help!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Nein! Geh nicht! Ich brauche deine Hilfe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("How am I?! They have taken my Milly! How do you think I am?!")
talkEntry:addResponse("This isn't the time for social niceties. I need your help!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Wie es mir geht?! Sie haben meine Milly genommen! Was denkst du, wie es mir geht?!")
talkEntry:addResponse("Dies ist nicht die Zeit für Mitleid. Ich brauche deine Hilfe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Aelfinn! I need your help!")
talkEntry:addResponse("This really isn't the best time for introductions.")
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
talkEntry:addResponse("Ich bin Aelfinn! Ich brauche deine Hilfe!")
talkEntry:addResponse("Das ist wirklich nicht die beste Zeit unverbindliche Vorstellungen.")
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
talkEntry:addResponse("I don't have time for such nonsense.")
talkEntry:addResponse("If you're so set on finding a merchant, go back to Cadomyr!")
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
talkEntry:addResponse("Ich habe keine Zeit für solchen Unsinn.")
talkEntry:addResponse("Wenn du auf der Suche nach einem Händler bist, gehe zurück nach Cadomyr!")
talkEntry:addResponse("Hier draußen wirst du keine Händler finden. Versuch es in der Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Rescue Milly"))
talkEntry:addConsequence(consequence_quest(515, "=", 1))
talkEntry:addResponse("Milly and I were searching for rare desert herbs. We were attacked by orcs who carried her off! I tracked them this far, but I can't find an entrance. It's in the encampment north of here. Go see if you can find it and come back to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neuer Quest] Rette Milly!"))
talkEntry:addConsequence(consequence_quest(515, "=", 1))
talkEntry:addResponse("Milly und ich suchten nach seltenen Wüstenkräutern. Orks griffen uns an und entführten sie. Ich habe Sie verfolgt, aber ich kann die Höhle nicht finden. Sie müsste beim Lager nördlich von hier sein. Geh, sieh nach ob du ihn findest, komme dann zurück zu mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Rescue Milly"))
talkEntry:addConsequence(consequence_quest(515, "=", 1))
talkEntry:addResponse("Milly and I were searching for rare desert herbs. We were attacked by orcs who carried her off! I tracked them this far, but I can't find an entrance. It's in the encampment north of here. Go see if you can find it and come back to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neuer Quest] Rette Milly!"))
talkEntry:addConsequence(consequence_quest(515, "=", 1))
talkEntry:addResponse("Milly und ich suchten nach seltenen Wüstenkräutern. Orks griffen uns an und entführten sie. Ich habe Sie verfolgt, aber ich kann die Höhle nicht finden. Sie müsste beim Lager nördlich von hier sein. Geh, sieh nach ob du ihn findest, komme dann zurück zu mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Have you found the way in yet? I have seen them going in and out of the cave on the eastern side of the camp. There is a pair of columns. I think one of them is the key to getting in.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Hast du schon den Weg hinein gefunden? Ich have gesehen wie sie in eine Höhle auf der östlichen Seite des Lagers verschwinden. Dort gibt es ein paar Säulen. Ich denke eine von ihnen ist der Schlüssel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Have you found the way in yet? I have seen them going in and out of the cave on the eastern side of the camp. There is a pair of columns. I think one of them is the key to getting in.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Hast du schon den Weg hinein gefunden? Ich have gesehen wie sie in eine Höhle auf der östlichen Seite des Lagers verschwinden. Dort gibt es ein paar Säulen. Ich denke eine von ihnen ist der Schlüssel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest Solved] You have been awarded 30 Silver Coins."))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(515, "=", 3))
talkEntry:addResponse("You found the way in? Thank the Five! I've been watching the orcs while you were gone. These are Dragorog cultists. You'll need to prepare for the next part. Take these coins and come back when you are ready.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 30 Silberstücke"))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(515, "=", 3))
talkEntry:addResponse("Du hast den Eingang gefunden? Den Fünf sei Dank! Ich habe die Orks beobachtet, während du weg warst. Das sind Dragorog-Kultisten. Du musst dich gut für den nächsten Schritt vorbereiten. Nimm diese Münzen und komm zurück, wenn du bereit bist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Rescue Milly II"))
talkEntry:addConsequence(consequence_quest(515, "=", 4))
talkEntry:addResponse("Now that you have got in, you need to clear a path so that you can find her. I have been watching the entrance carefully to determine their numbers. Killing 10 orc cultists should do it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neuer Quest] Rette Milly! II"))
talkEntry:addConsequence(consequence_quest(515, "=", 4))
talkEntry:addResponse("Jetzt wo du den Weg hinein gefunden hast, solltest du ihn frei machen.  Ich habe den Eingang sorgfältig beobachtet um ihre Stärke herauszubekommen. Töte 10 Orc-Kultisten, das sollte reichen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Rescue Milly II"))
talkEntry:addConsequence(consequence_quest(515, "=", 4))
talkEntry:addResponse("Now that you have got in, you need to clear a path so that you can find her. I have been watching the entrance carefully to determine their numbers. Killing 10 orc cultists should do it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("bereit")
talkEntry:addConsequence(consequence_inform("[Neuer Quest] Rette Milly! II"))
talkEntry:addConsequence(consequence_quest(515, "=", 4))
talkEntry:addResponse("Jetzt wo du den Weg hinein gefunden hast, solltest du ihn frei machen.  Ich habe den Eingang sorgfältig beobachtet um ihre Stärke herauszubekommen. Töte 10 Orc-Kultisten, das sollte reichen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Have you taken out 10 orcs yet?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Hast du die 10 Orcs getötet?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Have you taken out 10 orcs yet?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Hast du die 10 Orcs getötet?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 14))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest Solved] You have been awarded 50 Silver Coins."))
talkEntry:addConsequence(consequence_quest(515, "=", 15))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addResponse("Their ranks are looking thin! Nice work! Now that you have cleared a path we can look for Milly. Use these coins to get supplies.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 14))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 50 Silberstücke"))
talkEntry:addConsequence(consequence_quest(515, "=", 15))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addResponse("Ihre Reihen sind gelichtet! Gute Arbeit! Nun da der Weg frei ist, können wir nach Milly suchen. Nimm dieses Münzen um Proviant zu besorgen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 15))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Rescue Milly III"))
talkEntry:addConsequence(consequence_quest(515, "=", 16))
talkEntry:addResponse("I need you to search for Milly. She is in there and alive, I am sure of it! Please bring her back to me safe and in one piece.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 15))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neuer Quest] Rette Milly! III"))
talkEntry:addConsequence(consequence_quest(515, "=", 16))
talkEntry:addResponse("Ich brauche dich, um nach Milly zu suchen. Sie ist dort und am Leben, ich bin mir sicher! Bitte bring sie mir sicher und in einem Stück zurück.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 15))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Rescue Milly III"))
talkEntry:addConsequence(consequence_quest(515, "=", 16))
talkEntry:addResponse("I need you to search for Milly. She is in there and alive, I am sure of it! Please bring her back to me safe and in one piece.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 15))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neuer Quest] Rette Milly! III"))
talkEntry:addConsequence(consequence_quest(515, "=", 16))
talkEntry:addResponse("Ich brauche dich, um nach Milly zu suchen. Sie ist dort und am Leben, ich bin mir sicher! Bitte bring sie mir sicher und in einem Stück zurück.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 16))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Have you found Milly? You have to find her for me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 16))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Hast du Milly gefunden? Du musst sie für mich finden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 16))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Have you found Milly? You have to find her for me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 16))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Hast du Milly gefunden? Du musst sie für mich finden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 17))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest Solved] You have been given a Silver Ruby Amulet."))
talkEntry:addConsequence(consequence_quest(515, "=", 18))
talkEntry:addConsequence(consequence_item(3541, 1, 999, nil))
talkEntry:addResponse("You found Milly? She... She's dead? By the Five. I... I need some time to think. Here, take this amulet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 17))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst ein Silbernes Rubinamulett."))
talkEntry:addConsequence(consequence_quest(515, "=", 18))
talkEntry:addConsequence(consequence_item(3541, 1, 999, nil))
talkEntry:addResponse("Du hast Milly gefunden? Sie... sie ist tot? Bei den Fünf. Ich ... Ich brauche etwas Zeit zum nachdenken. Warte! Hier. Nimm diese Halskette. Ich wollte sie... ich wollte... nur, nimm du sie. Wenn du zurück kommst, haben wir einiges an Arbeit vor uns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 18))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Rescue Milly IV"))
talkEntry:addConsequence(consequence_quest(515, "=", 19))
talkEntry:addResponse("We have to do something. We have to stop them. If not the Dragorog Cult will kill others! There must be an orc shaman leading these unholy rituals. Go kill him!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 18))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neuer Quest] Rette Milly! IV"))
talkEntry:addConsequence(consequence_quest(515, "=", 19))
talkEntry:addResponse("Wir müssen etwas tun. Wir müssen sie aufhalten. Wenn nicht wird der Dragorog-Kult noch mehr Opfer kosten! Es muss einen Ork-Schamanen geben, der diese unheiligen Rituale durchführt. Töte ihn!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 18))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Rescue Milly IV"))
talkEntry:addConsequence(consequence_quest(515, "=", 19))
talkEntry:addResponse("We have to do something. We have to stop them. If not the Dragorog Cult will kill others! There must be an orc shaman leading these unholy rituals. Go kill him!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 18))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neuer Quest] Rette Milly! IV"))
talkEntry:addConsequence(consequence_quest(515, "=", 19))
talkEntry:addResponse("Wir müssen etwas tun. Wir müssen sie aufhalten. Wenn nicht, wird der Dragorog-Kult noch mehr Opfer kosten! Es muss einen Ork-Schamanen geben, der diese unheiligen Rituale durchführt. Töte ihn!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 19))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Is the shaman dead yet?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 19))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ist der Schamane schon tot?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 19))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Is the shaman dead yet?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 19))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ist der Schamane schon tot?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 20))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest Solved] You have been awarded 20 Silver Coins"))
talkEntry:addConsequence(consequence_quest(515, "=", 21))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addResponse("You have killed him? Good. This is the last of my coins. Take it and prepare yourself. There is more work to be done.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 20))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_quest(515, "=", 21))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addResponse("Du hast ihn getötet? Gut. Hier sind meine letzten Münzen. Nimm sie und bereite dich vor. Es gibt noch mehr Arbeit zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Rescue Milly V"))
talkEntry:addConsequence(consequence_quest(515, "=", 22))
talkEntry:addResponse("I don't think the shaman's death is the end of this madness. There is something darker inside that cave that leads the cult. Go and end whatever dark abomination is inside that cave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 21))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neuer Quest] Rette Milly! V"))
talkEntry:addConsequence(consequence_quest(515, "=", 22))
talkEntry:addResponse("Ich glaube nicht, dass der Tod des Schamanen das Ende dieses Wahnsinns ist. Es ist etwas Dunkles in dieser Höhle, das den Kult führt. Geh und beende, was auch immer für ein dunkler Greuel in dieser Höhle haust.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Rescue Milly V"))
talkEntry:addConsequence(consequence_quest(515, "=", 22))
talkEntry:addResponse("I don't think the shaman's death is the end of this madness. There is something darker inside that cave that leads the cult. Go and end whatever dark abomination is inside that cave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 21))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neuer Quest] Rette Milly! V"))
talkEntry:addConsequence(consequence_quest(515, "=", 22))
talkEntry:addResponse("Ich glaube nicht, dass der Tod des Schamanen das Ende dieses Wahnsinns ist. Es ist etwas Dunkles in dieser Höhle, das den Kult führt. Geh und beende, was auch immer für ein dunkler Greuel in dieser Höhle haust.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 22))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Have you destroyed the dark force inside that cave?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 22))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Hast du die dunkle Kraft in dieser Höhle zerstört?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 22))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Have you destroyed the dark force inside that cave?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 22))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Hast du die dunkle Kraft in dieser Höhle zerstört?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 23))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest Solved] You have been awarded an elven shortbow and a magic ruby"))
talkEntry:addConsequence(consequence_quest(515, "=", 24))
talkEntry:addConsequence(consequence_item(3521, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_item(2685, 1, 666, nil))
talkEntry:addResponse("It is done? There was a dark paladin inside and you have killed him? Thank the Five, Milly will not have died in vain! Please, take my bow. I have no need for it anymore. And this magical ruby. Thank you for everything.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 23))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst ein Elfen-Kurzbogen und einer magischen Rubin."))
talkEntry:addConsequence(consequence_quest(515, "=", 24))
talkEntry:addConsequence(consequence_item(3521, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_item(2685, 1, 666, nil))
talkEntry:addResponse("Es ist vollbracht? Da war ein dunker Paladin und du hast ihn getötet? Den Fünf sei Dank, Milly wird nicht umsonst gestorben sein! Bitte, nimm meinen Bogen. Ich brauche ihn nicht mehr. Und dieser magischen Rubin. Vielen Dank für alles.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 24))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("No, I don't require anything else from you. Thank you. I am going to go find a monastery to live out the rest of my life without Milly.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 24))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nein. Ich brauche nichts  von dir. Vielen Dank. Ich werde ein Kloster finden, indem ich den Rest meines Lebens ohne Milly leben kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 24))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("No, I don't require anything else from you. Thank you. I am going to go find a monastery to live out the rest of my life without Milly.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(515, "=", 24))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Nein. Ich brauche nichts  von dir. Vielen Dank. Ich werde ein Kloster finden, indem ich den Rest meines Lebens ohne Milly leben kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("If you really must insist on knowing! I am a ranger and spend my time collecting herbs with Milly.")
talkEntry:addResponse("Is now really the time to ask useless questions?")
talkEntry:addResponse("My job was to protect Milly! And now they have taken her!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Wenn du wirklich darauf bestehst es zu wissen! Ich bin ein Ranger und verbringe meine Zeit damit, Kräuter mit Milly zu sammeln.")
talkEntry:addResponse("Ist nun wirklich die Zeit, unnütze Fragen zu stellen?")
talkEntry:addResponse("Mein Job war, Milly zu schützen! Und jetzt haben sie sie mitgenommen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("If you really must insist on knowing! I am a ranger and spend my time collecting herbs with Milly.")
talkEntry:addResponse("Is now really the time to ask useless questions?")
talkEntry:addResponse("My job was to protect Milly! And now they have taken her!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Wenn du wirklich darauf bestehst es zu wissen! Ich bin ein Ranger und verbringe meine Zeit damit, Kräuter mit Milly zu sammeln.")
talkEntry:addResponse("Ist nun wirklich die Zeit, unnütze Fragen zu stellen?")
talkEntry:addResponse("Mein Job war, Milly zu schützen! Und jetzt haben sie sie mitgenommen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Milly")
talkEntry:addResponse("She has been kidnapped! I need your help to get her back!")
talkEntry:addResponse("She is my love and my life, and I don't know what I would do without her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Dragorog")
talkEntry:addResponse("He is one of the Blood God's dark minions.")
talkEntry:addResponse("He is master of dark paladins and dark dragons. If I were you, I'd avoid them at all costs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cult")
talkEntry:addResponse("It is a Dragorog cult. They are an evil sect that sacrifices people to their dark demi-god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Altar")
talkEntry:addResponse("I don't want to know what horrors lay on their blood soaked altar.")
talkEntry:addResponse("It is where the members of Dragorog's cult sacrifice people during their unholy rituals. Just thinking about it gives me chills.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Milly")
talkEntry:addResponse("Sie wurde gekidnappt! Ich brauche Deine Hilfe, um sie zurück zu bekommen!")
talkEntry:addResponse("Sie ist meine Liebe und mein Leben, und ich weiß nicht, was ich ohne sie tun würde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dragorog")
talkEntry:addResponse("Er ist einer der dunklen Diener des Blutgottes.")
talkEntry:addResponse("Er ist Meister dunkler Paladine und dunkler Drachen. Wenn ich du wäre, würde ich sie um jeden Preis meiden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kult")
talkEntry:addResponse("Es ist Dragorogs Kult. Sie sind eine böse Sekte, die die Menschen ihrem dunklen Halbgott opfern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Altar")
talkEntry:addResponse("Ich will nicht wissen, welche Schrecken auf ihrem blutgetränkten Altar stattfinden.")
talkEntry:addResponse("Dor opfern während ihrer unheiligen Rituale die Mitglieder der Dragorog Kult Menschen. Allein darüber nachzudenken, macht mir Kopfschmerzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Shh! Do not say his name so loud.")
talkEntry:addResponse("He is the god of blood and bones. His followers spread chaos in his name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Shh! Sag seinen Namen nicht so laut.")
talkEntry:addResponse("Er ist der Gott des Blutes und der Knochen. Seine Anhänger verbreiteten Chaos in seinem Namen.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Hilfe! Irgendjemand helft!", "Help! Somebody help! ")
talkingNPC:addCycleText("Hilfe! Sie haben sie genommen! Sie haben meine Milly mitgenommen!", "Help! They've taken her! They've taken my Milly!")
talkingNPC:addCycleText("Diese Orks werden dafür bezahlen,und  wenn es das Letzte ist, was ich tue!", "Those orcs are going to pay for this if it's the last thing I do!")
talkingNPC:addCycleText("Ich hoffe, sie haben Milly nicht weh getan!", "I hope they haven't hurt Milly!")
talkingNPC:addCycleText("Ich wünschte, ich hätte Milly nie aus den Augen gelassen! Dann wäre das nie passiert!", "I wish I never let Milly out of my sight! This never would have happened!")
talkingNPC:addCycleText("#me starrt in die Ferne und beobachtet etwas aufmerksam.", "#me stares off into the distance, watching something intently.")
talkingNPC:addCycleText("#me zieht einen Pfeil aus seinem Köcher und legt auf seine Bogenschnur.", "#me pulls an arrow from his quiver, nocking it on his bow string.")
talkingNPC:addCycleText("#me murmelt unter seinem Atemzug.", "#me mutters under his breath.")
talkingNPC:addCycleText("#me späht vorsichtig um die Felsen.", "#me peers round the rocks cautiously.")
talkingNPC:addCycleText("#me wandert ängstlich hin und her, den  Bogen gezogen.", "#me paces anxiously back and forth, bow drawn.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(3)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Aelfinn der Ranger.", "This NPC is Aelfinn the ranger.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 362)
mainNPC:setEquipment(11, 2416)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 1458)
mainNPC:setEquipment(9, 2113)
mainNPC:setEquipment(10, 1505)
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
