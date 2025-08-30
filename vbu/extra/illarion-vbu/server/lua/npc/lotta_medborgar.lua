local consequence_item = require("npc.base.consequence.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Lotta Medborgar the hunter. Keywords: Question, information, Galmair, places."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Lotta Medborgar die Jägerin. Schlüsselwörter: Auskunft, Information, Galmair, Orte."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(634, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest End 'Find Lotta 2'] You receive 10 silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(155, 10, nil))
talkEntry:addConsequence(consequence_quest(634, "=", 2))
talkEntry:addResponse("Good day. Finally you found me! I had already been informed about your visit. There, have some silver coins for finding me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(634, "=", 1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest Ende 'Find Lotta 2'] Du hast 10 Silberstücke erhalten."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(155, 10, nil))
talkEntry:addConsequence(consequence_quest(634, "=", 2))
talkEntry:addResponse("Tach. Endlich hast du mich gefunden. Ich wurde bereits informiert über deinen Besuch. Hier hast du deine wohlverdienten Münzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(630, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest End 'Find Lotta'] You receive 10 silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(630, "=", 2))
talkEntry:addResponse("Good day. Finally you found me! Iradona has already informed me about your visit. There, you have some silver coins for finding me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(630, "=", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Questende 'Finde Lotta'] Du hast 10 Silberstücke erhalten."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(630, "=", 2))
talkEntry:addResponse("Tach. Endlich hast du mich gefunden. Iradona hat mich bereits informiert über deinen Besuch. Hier hast du deine wohlverdienten Münzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(630, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest End 'Find Lotta'] You receive 10 silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(630, "=", 2))
talkEntry:addResponse("Good day. Finally you found me! Iradona has already informed me about your visit. There, you have some silver coins for finding me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(630, "=", 1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Questende 'Finde Lotta'] Du hast 10 Silberstücke erhalten."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(630, "=", 2))
talkEntry:addResponse("Tach. Endlich hast du mich gefunden. Iradona hat mich bereits informiert über deinen Besuch. Hier hast du deine wohlverdienten Münzen.")
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
talkEntry:addResponse("Good day, my dear. Can I help you with some information?")
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
talkEntry:addResponse("Tach, die Herrschaft, darf ich behilflich sein mit einer Auskunft?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Good day, my dear. Can I help you with some information?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Tach, die Herrschaft, darf ich behilflich sein mit einer Auskunft?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("See ya soon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Und servus, bis bald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("See ya soon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Und servus, bis bald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("My head hurts, because of these thousands of questions from the people of Galmair here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mein Kopf schmerzt von der vielen Fragerei der Leute von Galmair hier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Lotta Medborgar, the hunter.")
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
talkEntry:addResponse("Lotta Medborgar die Jägerin")
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
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"))
talkEntry:addResponse("I can give you information about places near Galmair. Just ask me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Illarion, Nordosten, Nordwesten, Südwesten, Südosten"))
talkEntry:addResponse("Ich kann dir Informationen zu den Orten in der Nähe von Galmair geben. Frag einfach!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("question")
talkEntry:addConsequence(consequence_inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"))
talkEntry:addResponse("I can give you information about places near Galmair. Just ask me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frage")
talkEntry:addTrigger("Auskunft")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Illarion, Nordosten, Nordwesten, Südwesten, Südosten"))
talkEntry:addResponse("Ich kann dir Informationen zu den Orten in der Nähe von Galmair geben. Frag einfach!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("place")
talkEntry:addConsequence(consequence_inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"))
talkEntry:addResponse("Places? Which places do you mean? These could be in the northeast, northwest, southwest or southeast of Illarion?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Orte")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Illarion, Nordosten, Nordwesten, Südwesten, Südosten"))
talkEntry:addResponse("Orte? Welche Orte meinst du? Diese könnten sein im Nordosten, Nordwesten, Südwesten oder Südosten von Illarion?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Iradona")
talkEntry:addTrigger("Goldschein")
talkEntry:addResponse("You can find her outside the town, close to the teleporter. She has a lot of information and some tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Iradona")
talkEntry:addTrigger("Goldschein")
talkEntry:addResponse("Du findest sie draußen vor der Stadt, nahe am Teleporter. Sie hat eine Menge Informationen und Aufträge für dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Illarion")
talkEntry:addConsequence(consequence_inform("[Keywords] Northeast, northwest, southwest, southeast"))
talkEntry:addResponse("This land is called Illarion and I divide it into the northeast, northwest, southwest and southeast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Illarion")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Nordosten, Nordwesten, Südwesten, Südosten"))
talkEntry:addResponse("Dieses Land wird Illarion genannt und ich unterteile sie in in Nordost, Nordwest, Südwest und Südost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("northeast")
talkEntry:addConsequence(consequence_inform("[Keywords] Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, Insurmountable Limes, Evilrock, Three Fingertips, Wulfgorda."))
talkEntry:addResponse("I know following places: Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, The Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, The Insurmountable Limes, Evilrock, Three Fingertips, but for more detailed information ask Wulfgorda at the Hemp Necktie Inn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nordost")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Elsbaumwald, Elsbaumebene, Ostland, Schulterplatteninsel, Todessumpf, Spinnenmaul, Gasthof zur Hanfschlinge, Grenzstrom, Glühender Fluss, Ebenen der Stille, Nördliche Wälder, Unüberwindbarer Limes, Böser Fels, Dreifingerspitzen, Wulfgorda."))
talkEntry:addResponse("Dort gibt es: Elsbaumwald, Elsbaumebene, Ostland, Schulterplatte Insel, Todessumpf, Spinnenmaul, Gasthof zur Hanfschlinge, Grenzstrom, Glühender Fluss, Ebenen der Stille, Nördliche Wälder, Unüberwindbarer Limes, Böser Fels, Dreifingerspitzen. Aber für ausführlichere Informationen frage Wulfgorda beim Gasthof zur Hanfschlinge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("northwest")
talkEntry:addConsequence(consequence_inform("[Keywords] Syrita Bay, Nargun's Plain, The Swamp, Temple of the Five, Lonely Mountains, Galmair Plateau, Malachite creek, Malachite Island, Golden Rumil, Fort Schnellbeil, Fortress Hammerfall"))
talkEntry:addResponse("I know following places: Syrita Bay, Nargun's Plain, The Swamp, Temple of the Five, Lonely Mountains, Galmair Plateau, Malachite creek, Malachite Island, Galmair Plateau, Golden Rumil, Fort Schnellbeil, Fortress Hammerfall.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nordwest")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Syritabucht, Nargunebene, Der Sumpf, Tempel der Fünf, Einsame Berge, Galmair Hochebene, Malachitbach, Malachitinsel, Goldener Rumil, Fort Schnellbeil, Festung Hammerfall"))
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: Syritabucht, Narguns Ebene, Der Sumpf, Tempel der Fünf, Einsame Berge, Galmair Hochebene, Malachitbach, Malachitinsel, Galmair Plateau, Goldener Rumil, Fort Schnellbeil, Festung Hammerfall.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("southwest")
talkEntry:addConsequence(consequence_inform("[Keywords] Shadowland, Wight Canal, Sentry Forest, Great Ocean, Border Mountains, Kantabi Desert, Kantabi Delta, Western Kantabi Desert, Ruzussss."))
talkEntry:addResponse("I know following places: Shadowland, Wight Canal, Sentry Forest, Great Ocean, Border Mountains, Kantabi Desert, Kantabi Delta, Western Kantabi Desert, but for more detailed information ask Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Südwest")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Schattenland, Wichtkanal, Wachtwald, Großer Ozean, Grenzberge, Kantabiwüste, Kantabidelta, Westliche Kantabiwüste, Ruzussss."))
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: Schattenland, Wichtkanal, Wachtwald, Großer Ozean, Grenzberge, Kantabiwüste, Kantabidelta, Westliche Kantabiwüste. Aber für ausführlichere Informationen frage Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("southeast")
talkEntry:addConsequence(consequence_inform("[Keywords] Snakehead Bay, Lonely Islands, Death's Stench, Dragon's Lair, Dewy Swamps, Yewdale, Numila Irunnleh."))
talkEntry:addResponse("I know following places: Snakehead Bay, Lonely Islands, Death's Stench, Dragon's Lair, Dewy Swamps, Yewdale, but for more detailed information ask Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Südost")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Schlangenkopfbucht, Einsame Inseln, Todesgestank, Drachenhöhle, Morgentausumpf, Eibenthal, Numila Irunnleh."))
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: Schlangenkopfbucht, Einsame Inseln, Todesgestank, Drachenhöhle, Morgentausumpf, Eibenthal. Aber für ausführlichere Informationen frage Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elstree Forest")
talkEntry:addResponse("Well, as I said, it is in the northeast and you would be better asking someone who lives there, for example, Wulfgorda. However, fairies can be found there, who might drop some magical gems.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elsbaumwald")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda. Wie dem auch sei, Feen können dort gefunden werden, welche womöglich magische Steine fallen lassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elstree Plain")
talkEntry:addResponse("Well, as I said, it is in the northeast and you would be better asking someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elsbaumebene")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eastland")
talkEntry:addResponse("Well, as I said, it is in the northeast and you would be better asking someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ostland")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Pauldron")
talkEntry:addResponse("Well, as I said, it is in the northeast and you would be better asking someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schulterplatte")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dead Marsh")
talkEntry:addResponse("Well, as I said, it is in the northeast and you would be better asking someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Todessumpf")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("spider")
talkEntry:addTrigger("mouth")
talkEntry:addResponse("Well, as I said, it is in the northeast and you would be better asking someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Spinnenmaul")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hemp Necktie Inn")
talkEntry:addResponse("The Hemp Necktie Inn is a neutral tavern in the Spider's Mouth and many adventurers are resting there, amongst others, Wulfgorda. You can use the teleporter to get there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gasthof Hanfschlinge")
talkEntry:addResponse("Der Gasthof zur Hanfschlinge ist eine neutrale Taverne im Spinnen Mund und viele Abenteuerer rasten dort. Unteranderem Wulfgorda. Du kannst den Teleporter verwenden um dort hinzukommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(650, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Wulfgorda")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Wulfgorda' started] Try to find Wulfgorda and take her the sibanac leaves to get your reward."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(650, "=", 1))
talkEntry:addResponse("Wulfgorda is a hunter who knows almost every place in the northeast. You can find her in front of the Hemp Necktie Inn. Furthermore, you should take her these leaves here. *hands over some sibanac leaves*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(650, "<", 1))
talkEntry:addTrigger("Wulfgorda")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Wulfgorda' gestartet] Finde Wulfgorda und bringe ihr die Sibanacblätter um deine Belohnung zur erhalten."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(650, "=", 1))
talkEntry:addResponse("Wulfgorda ist eine Jägerin, welche beinahe jeden Platz im Nordosten kennt. Du findest sie vor dem Gasthof zur Hanfschlinge. Des weiteren kannst du ihr auch gleich diese Blätter hier bringen. *überreicht Sibanac Blätter*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Wulfgorda")
talkEntry:addResponse("Wulfgorda is a hunter who knows almost every place in the northeast. You can find her in front of the Hemp Necktie Inn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wulfgorda")
talkEntry:addResponse("Wulfgorda ist eine Jägerin, welche beinahe jeden Platz im Nordosten kennt. Du findest sie vor dem Gasthof zur Hanfschlinge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bounding Stream")
talkEntry:addResponse("Well, as I said, it is in the northeast and you would be better asking someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grenzstrom")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Glowing River")
talkEntry:addResponse("Well, as I said, it is in the northeast and you would be better asking someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Glühender Fluss")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Plains Silence")
talkEntry:addResponse("Well, as I said, they are in the northeast and you would be better asking someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ebene Stille")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Northern Woods")
talkEntry:addResponse("Well, as I said, they are in the northeast and you would be better asking someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nördlich")
talkEntry:addTrigger("Wald")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Insurmountable")
talkEntry:addResponse("Well, as I said, it is in the northeast and you would be better asking someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Limes")
talkEntry:addCondition(condition_language("english"))
talkEntry:addResponse("Well, as I said, it is in the northeast and you would be better asking someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Unüberwindbar")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Limes")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Evilrock")
talkEntry:addResponse("Well, as I said, it is in the northeast and you would be better asking someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Böse Fels")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Three Finger")
talkEntry:addResponse("Well, as I said, they are in the northeast and you would be better asking someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dreifingerspitzen")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Snakehead Bay")
talkEntry:addResponse("Well, as I said, it is in the southeast and you would be better asking someone who lives there, for example, Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schlangenkopfbucht")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lonely Islands")
talkEntry:addResponse("Well, as I said, they are in the southeast and you would be better asking someone who lives there, for example, Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Einsame Inseln")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Death Stench")
talkEntry:addResponse("Well, as I said, it is in the southeast and you would be better asking someone who lives there, for example, Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Todesgestank")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dragon lair")
talkEntry:addResponse("Well, as I said, it is in the southeast and you would be better asking someone who lives there, for example, Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Drachenhöhle")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dewy Swamps")
talkEntry:addResponse("Well, as I said, they are in the southeast and you would be better asking someone who lives there, for example, Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Morgentausumpf")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Yewdale")
talkEntry:addResponse("Well, as I said, it is in the southeast and you would be better asking someone who lives there, for example, Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eibenthal")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südosten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(624, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Numila 2' started] Try to find Numila and take her the sibanac leaves to get your reward."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(624, "=", 1))
talkEntry:addResponse("You can find her in Runewick and she knows several places in the southeast, thus around Runewick. Furthermore, you should take her these leaves here. *hands over some sibanac leaves*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(624, "<", 1))
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Numila 2' gestartet] Finde Numila und bringe ihr die Sibanacblätter um deine Belohnung zur erhalten."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(624, "=", 1))
talkEntry:addResponse("Die findet man in Runewick und die kennt sämtliche Orte im Südwesten, sprich um Runewick. Des weiteren kannst du ihr auch gleich diese Blätter hier bringen. *überreicht Sibanac Blätter*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addResponse("You can find her in Runewick and she knows several places in the southeast, thus around Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addResponse("Die findet man in Runewick und die kennt sämtliche Orte im Südosten, sprich um Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Syrita")
talkEntry:addCondition(condition_language("english"))
talkEntry:addResponse("Syrita Bay is north from here, where you can find the harbour of Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Syrita")
talkEntry:addResponse("Die Syritabucht ist im Norden von hier, wo du den Hafen von Galmair finden kannst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("harbour")
talkEntry:addTrigger("harbor")
talkEntry:addResponse("The harbour is west of the swamp and north of Nargun's Plain.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hafen")
talkEntry:addResponse("Der Hafen ist westlich vom Sumpf und nördlich von der Narguns Ebene.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("nargun plain")
talkEntry:addResponse("This is the area east, after the Copper bridge over the Malachite Creek, between Galmair and the Spider's Mouth.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun Ebene")
talkEntry:addResponse("Das ist das Gebiet östlich der Kupferbrücke über den Malachitbach zwischen Galmair und dem Spinnen Mund.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Swamp")
talkEntry:addResponse("This is the area north from here, after the Black bridge over the Bounding Stream, where you can also find the harbour of Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sumpf")
talkEntry:addResponse("Das ist das Gebiet nördlich der Schwarzbrücke über den Grenzstrom, wo du auch den Hafen von Galmair finden kannst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("five")
talkEntry:addResponse("The Temple of the Five is east of the swamp.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fünf")
talkEntry:addResponse("Der Tempel der Fünf ist östlich vom Sumpf")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lonely Mountain")
talkEntry:addResponse("These are the mountains around us.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Einsame Berg")
talkEntry:addResponse("Das sind die Berge um uns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Plateau")
talkEntry:addResponse("The Galmair Plateau is south from Galmair and west of the Malachite Mine. You will find the bandits from Fort Schnellbeil there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hochebene")
talkEntry:addResponse("Die Galmair Hochebene ist südlich von Galmair und westlich der Malachitmine. Du findest dort die Banditen vom Fort Schnellbeil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachite creek")
talkEntry:addResponse("The Malachite creek is the water between Galmair and Nargun's Plain. The Copper bridge will help you to cross it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachitbach")
talkEntry:addResponse("Der Malachitbach ist das Gewässer zwischen Galmair und der Narguns Ebene. Die Kupferbrücke wird dir helfen es zu überqueren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachite Island")
talkEntry:addResponse("This island is in the south, in the middle of the Malachite creek.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachitinsel")
talkEntry:addResponse("Diese Insel is südlich von hier in der Mitte des Malachitbach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Rumil")
talkEntry:addResponse("The Golden Rumil met a bad end once. The bandits of Fort Schnellbeil threw good old Rumil into liquid gold. You can find him on the way to Fort Schnellbeil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Rumil")
talkEntry:addResponse("Der Goldene Rumil fand einst ein böses Ende. Die Banditen vom Fort Schnellbeil warfen den guten alten Rumil in flüssiges Gold. Du kannst ihn an deinem Weg zum Fort Schnellbeil finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Fort Schnellbeil")
talkEntry:addResponse("The home of bandits at the Galmair Plateau, led by Uri Schnellbeil. They interrupt our business at the Malachite mine now and then.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fort Schnellbeil")
talkEntry:addResponse("Das Heim von Banditen auf der Glamair Hochebene, geführt von Uri Schnellbeil. Sie behindern unsere Geschäfte in der Malachitmine von Zeit zu Zeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fortress Hammerfall")
talkEntry:addResponse("This fortress has been built by the betrayer Dwyn Axtblatt. You can find it at the north end of the Kantabi Desert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Festung Hammerfall")
talkEntry:addResponse("Diese Festung wurde erbaut von dem Veräter Dwyn Axtblatt. Du kannst sie im Norden der Kantabiwüste finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shadowland")
talkEntry:addResponse("Well, as I said, it is in the southwest and you would be better asking someone who lives there, for example, Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schattenland")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südwesten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wight Canal")
talkEntry:addResponse("Well, as I said, it is in the southwest and you would be better asking someone who lives there, for example, Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wichtkanal")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südwesten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sentry Forest")
talkEntry:addResponse("Well, as I said, it is in the southwest and you would be better asking someone who lives there, for example, Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wachtwald")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südwesten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Great Ocean")
talkEntry:addResponse("Well, as I said, it is in the southwest and you would be better asking someone who lives there, for example, Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Großer Ozean")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südwesten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Border Mountains")
talkEntry:addResponse("Well, as I said, they are in the southwest and you would be better asking someone who lives there, for example, Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grenzberge")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südwesten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Western Kantabi Desert")
talkEntry:addResponse("Well, as I said, it is in the southwest and you would be better asking someone who lives there, for example, Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Westliche Kantabiwüste")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südwesten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kantabi Desert")
talkEntry:addResponse("Well, as I said, it is in the southwest and you would be better asking someone who lives there, for example, Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kantabiwüste")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südwesten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Kantabi Delta")
talkEntry:addResponse("Well, as I said, it is in the southwest and you would be better asking someone who lives there, for example, Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kantabidelta")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Südwesten zu finden. Bezüglich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(644, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ruzussss")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Ruzussss 2' started] Try to find Ruzussss and take him the sibanac leaves to get your reward."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(644, "=", 1))
talkEntry:addResponse("You can find him in Cadomyr and he knows several places in the southwest, thus around Cadomyr. Furthermore, you should take him these leaves here. *hands over some sibanac leaves*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(644, "<", 1))
talkEntry:addTrigger("Ruzussss")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Ruzussss 2' gestartet] Finde Ruzussss und bringe ihm die Sibanacblätter um deine Belohnung zur erhalten."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(644, "=", 1))
talkEntry:addResponse("Den findet man in Cadomyr und der kennt sämtliche Orte im Südwesten, sprich um Cadomyr. Des weiteren kannst du ihm auch gleich diese Blätter hier bringen. *überreicht Sibanac Blätter*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ruzus")
talkEntry:addResponse("You can find him in Cadomyr and he knows several places in the southwest, thus around Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ruzus")
talkEntry:addResponse("Den findet man in Cadomyr und der kennt sämtliche Orte im Südwesten, sprich um Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Chapel")
talkEntry:addResponse("The Chapel of the Five is at the southern end of the Border Mountains, at the eastern border of the Kantabi Desert. Ask Ruzusss in Cadomyr if you cannot find it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kapelle")
talkEntry:addResponse("Die Kapelle der Fünf ist am südlichen Ende der Grenzberge und an der östlichen Grenze der Kantabiwüste. Frage Ruzusss in Cadomyr falls du sie nicht finden kannst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, "<", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_quest(632, "=", 1))
talkEntry:addConsequence(consequence_item(61, 1, 777, nil))
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Don Valerio Guilianni' started] Find Don Valerio Guilianni and take him your gift."))
talkEntry:addResponse("Have you already met our Don? If not, you could introduce yourself with a gift to him. He will appreciate this gift here, since he loves gold. *hands over a gold coin.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, "<", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_quest(632, "=", 1))
talkEntry:addConsequence(consequence_item(61, 1, 777, nil))
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Don Valerio Guilianni' gestartet] Finde Don Valerio Guilianni und bringe ihm dein Geschenk."))
talkEntry:addResponse("Hast du bereits den Don kennengelernt? Falls nicht, dann solltest du dich bei ihm mit einem Geschenk vorstellen. Er wird dieses Geschenk hier bestimmt mögen, da er ein Auge auf Gold geworfen hat. *überreicht eine Goldmünze*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, "<", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_quest(632, "=", 1))
talkEntry:addConsequence(consequence_item(61, 1, 777, nil))
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Don Valerio Guilianni' started] Find Don Valerio Guilianni and take him your gift."))
talkEntry:addResponse("Have you already met our Don? If not, you could introduce yourself with a gift to him. He will appreciate this gift here, since he loves gold. *hands over a gold coin.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, "<", 1))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_quest(632, "=", 1))
talkEntry:addConsequence(consequence_item(61, 1, 777, nil))
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Don Valerio Guilianni' gestartet] Finde Don Valerio Guilianni und bringe ihm dein Geschenk."))
talkEntry:addResponse("Hast du bereits den Don kennengelernt? Falls nicht, dann solltest du dich bei ihm mit einem Geschenk vorstellen. Er wird dieses Geschenk hier bestimmt mögen, da er ein Auge auf Gold geworfen hat. *überreicht eine Goldmünze*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I have nothing for you to do yet, but soon I will have plenty of tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe nichts für dich zu tun momentan aber bald habe ich einige Aufgaben für dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I have nothing for you to do yet, but soon I will have plenty of tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe nichts für dich zu tun momentan aber bald habe ich einige Aufgaben für dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The Archmage owns two stones of power, these are an emerald and a ruby. They protect Runewick against being beaten by our forces.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Erzmagier besitzt zwei Steine der Macht. Einen Smaragd und einen Rubin. Die beschützen Runewick vor der Übernahme durch unsere Streitkräfte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The Archmage owns two stones of power, these are an emerald and a ruby. They protect Runewick against being beaten by our forces.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Erzmagier besitzt zwei Steine der Macht. Einen Smaragd und einen Rubin. Die beschützen Runewick vor der Übernahme durch unsere Streitkräfte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("That's in the southeast. Follow the road through Nargun's Plain to the Hemp Necktie Inn in the Spider's Mouth, and then head further southeast. Look for the signposts, but be careful. It's a dangerous way, better use the teleporter outside town to be safe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Das liegt im Südosten. Einfach der Straße entlang durch die Narguns Ebene zum Gasthof zur Hanfschlinge im Spinnenmaul und dann weiter südöstlich. Schau nach Wegschildern. Ist aber ein gefährlicher Weg. Verwende besser den Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("The Don owns two stones of power, these are a sapphire and an obsidian. They protect us against Runewick and Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don besitzt zwei Steine der Macht. Einen Saphir und einen Obsidian. Die beschützen uns vor Runewick und Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("That is here and if you want to know more about it ask Iradona Goldschein at the teleporter outside for further information.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Das ist hier und wenn du mehr darüber wissen möchtest, dann frag Iradona Goldschein beim Teleporter draußen nach weiterer Information.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("The Queen owns two stones of power, these are a topaz and an amethyst. They protect Cadomyr against being beaten by our forces.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Der Königin besitzt zwei Steine der Macht. Einen Topas und einen Amethyst. Die beschützen Cadomyr vor der Übernahme durch unsere Streitkräfte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("The Queen owns two stones of power, these are a topaz and an amethyst. They protect Cadomyr against being beaten by our forces.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Der Königin besitzt zwei Steine der Macht. Einen Topas und einen Amethyst. Die beschützen Cadomyr vor der Übernahme durch unsere Streitkräfte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("That's in the southwest. Follow the road through Nargun's Plain to the Hemp Necktie Inn in the Spider's Mouth, and then head further southwest. Look for the signposts, but be careful. It's a dangerous way, better use the teleporter outside the town to be safe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Das liegt im Südwesten. Einfach der Straße entlang durch die Narguns Ebene zum Gasthof zur Hanfschlinge im Spinnenmaul und dann weiter südwestlich. Schau nach Wegschildern. Ist aber ein gefährlicher Weg. Verwende besser den Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Primarily, we pray to three gods here in Galmair. They are Irmorom, Nargun, and Ronagan of course, my favourite god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Bevorzugt betten wir drei Götter in Galmair an. Die wären Irmorom, Nargun und natürlich Ronagan, meine bevorzugte Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("If you would like to know more about this god ask someone else, for example, Iradona Goldschein outside at the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Wenn du mehr über diese Gottheit zu wissen möchtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein draußen beim Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("If you would like to know more about this god ask someone else, for example, Iradona Goldschein outside at the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Wenn du mehr über diese Gottheit zu wissen möchtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein draußen beim Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("If you would like to know more about this god ask someone else, for example, Iradona Goldschein outside at the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Wenn du mehr über diese Gottheit zu wissen möchtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein draußen beim Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("If you would like to know more about this god ask someone else, for example, Iradona Goldschein outside at the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Wenn du mehr über diese Gottheit zu wissen möchtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein draußen beim Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("If you would like to know more about this god ask someone else, for example, Iradona Goldschein outside at the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Wenn du mehr über diese Gottheit zu wissen möchtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein draußen beim Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("If you would like to know more about this god ask someone else, for example, Iradona Goldschein outside at the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Wenn du mehr über diese Gottheit zu wissen möchtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein draußen beim Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("You can find a Temple dedicated to him at the west side of Galmair. Just go through Galmair, towards the Well of Dreams, and shortly before Villa Goldvein you will find it to the North. You will see a signpost there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Du kannst den Tempel von ihm auf der Westseite von Galmair finden. Gehe einfach durch Galmair zur Quelle der Träume und kurz vor der Villa Goldader findest du ihn im Norden. Du wirst es am Wegschild sehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("If you would like to know more about this god ask someone else, for example, Iradona Goldschein outside at the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Wenn du mehr über diese Gottheit zu wissen möchtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein draußen beim Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("You can find a Temple dedicated to him down here in the Scoria Mine. You have to walk through Flicker Swale and at the very end you will find a room with a ladder, climb up and there you are. You will also find signposts to help you on your way, but be careful!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Du kannst den Tempel von ihm hier unten in der Schlackengrube finden. Du gehst einfach durch die Schimmersenke zu einem Raum am bitteren Ende, die Leiter dort hoch und schon bist du da. Wegschilder sollten zu sehen sein. Und vorsichtig sein!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("If you would like to know more about this god ask someone else, for example, Iradona Goldschein outside at the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Wenn du mehr über diese Gottheit zu wissen möchtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein draußen beim Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("You can find a Temple for him down here at the Scoria Mine. Usually, you would just follow the signpost there, but unfortunately the corridor is flooded.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Du kannst den Tempel von ihm hier unten in der Schlackengrube finden. Im Prinzip einfach dem Wegschild dort nach. Nur leider ist der Gang gerade geflutet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("If you would like to know more about this god ask someone else, for example, Iradona Goldschein outside at the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Wenn du mehr über diese Gottheit zu wissen möchtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein draußen beim Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("If you would like to know more about this god ask someone else, for example, Iradona Goldschein outside at the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Wenn du mehr über diese Gottheit zu wissen möchtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein draußen beim Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("If you would like to know more about this god ask someone else, for example, Iradona Goldschein outside at the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Wenn du mehr über diese Gottheit zu wissen möchtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein draußen beim Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("If you would like to know more about this god ask someone else, for example, Iradona Goldschein outside at the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Wenn du mehr über diese Gottheit zu wissen möchtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein draußen beim Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("My name sounds better! I hope your questions sound better!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Mein Name klingt besser! Ich hoffe deine Fragen klingen besser!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addResponse("Yes, that is my name. What places do you want information about?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addResponse("Ja, das ist mein Name. Über was wollt ihr Information?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Wer etwas über die Orte hier in der Umgebung wissen will, soll mich nur nach diesen Orten fragen.", "If someone wants to know something about the places around here, they just need to ask me about those places.")
talkingNPC:addCycleText("#me kratzt sich im Gesicht.", "#me scratches her face.")
talkingNPC:addCycleText("#me blickt herum mit ihren weit geöffneten Augen.", "#me looks around with wide opened eyes.")
talkingNPC:addCycleText("#me untersucht ihre Rüstung.", "#me examines her armour.")
talkingNPC:addCycleText("#me streichelt ihren Bauch.", "#me rubs her belly.")
talkingNPC:addCycleText("#me isst eine Wurst.", "#me eats a sausage.")
talkingNPC:addCycleText("Im Adras rutschen einem die Getränke nur so die Kehle herunter.", "In Adras the drinks flow freely.")
talkingNPC:addCycleText("#me verstaut eine Flasche in ihrem Beutel.", "#me stores a bottle in her bag.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Lotta Medborgar die Jägerin.", "This NPC is Lotta Medborgar the hunter.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 2302)
mainNPC:setEquipment(3, 364)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 2727)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 826)
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
