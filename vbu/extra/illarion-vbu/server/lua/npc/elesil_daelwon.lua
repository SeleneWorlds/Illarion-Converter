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
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Elesil Daelwon the informant. Keywords: Question, information, Runewick, building, mission, town."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Elesil Daelwon die Auskunftgeberin. Schlüsselwörter: Auskunft, Information, Runewick, Gebäude, Auftrag, Stadt."))
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
talkEntry:addConsequence(consequence_inform("[Hint] Have you already asked her for 'information' or her 'quest'?"))
talkEntry:addResponse("Hail Elara. *Closes her eyes*")
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
talkEntry:addConsequence(consequence_inform("[Hinweis] Hast du sie bereits nach 'Information' oder 'Quest' befragt?"))
talkEntry:addResponse("Heil Elara. *Schließt ihre Augen*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addConsequence(consequence_inform("[Hint] Have you already asked her for 'information' or her 'quest'?"))
talkEntry:addResponse("Hail Elara. *Closes her eyes*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addConsequence(consequence_inform("[Hinweis] Hast du sie bereits nach 'Information' oder 'Quest' befragt?"))
talkEntry:addResponse("Heil Elara. *Schließt ihre Augen*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Au revoir. *Closes her eyes*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Au revoir. *Schließt ihre Augen*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Au revoir. *Closes her eyes*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Au revoir. *Schließt ihre Augen*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Fine, fine. *Closes her eyes*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Fein, fein. *Schließt ihre Augen*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Elesil Daelwon. *Closes her eyes*")
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
talkEntry:addResponse("Elesil Daelwon. *Schließt ihre Augen*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick I"))
talkEntry:addConsequence(consequence_quest(223, "=", 1))
talkEntry:addResponse("You are fairly new to Runewick, aren't you? As a good student, you should make yourself familiar with the laws of Runewick. Visit the library and read the constitution thoroughly.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick I"))
talkEntry:addConsequence(consequence_quest(223, "=", 1))
talkEntry:addResponse("You are fairly new to Runewick, aren't you? As a good student, you should make yourself familiar with the laws of Runewick. Visit the library and read the constitution thoroughly.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Untersuche Runewick I"))
talkEntry:addConsequence(consequence_quest(223, "=", 1))
talkEntry:addResponse("Du bist neu hier, richtig? Als wackerer Student solltest du dich zuerst mit den Gesetzen Runewicks vertraut machen. Geh in die Bücherei und studiere die Verfassung der Stadt sorgfältig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You know the constitution."))
talkEntry:addConsequence(consequence_quest(223, "=", 3))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Very well, now you are ready for a more difficult research. The gained knowledge should be your reward.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 2))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du kennst die Verfassung."))
talkEntry:addConsequence(consequence_quest(223, "=", 3))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Soweit, so gut. Du bist nun bereit für schwierigere Studien. Und was du bisher gelernt hast, sollte dir Belohnung genug sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("How do you want to study if you do not even able to read our laws. They are clearly written in the constitution.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 1))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("How do you want to study if you do not even able to read our laws. They are clearly written in the constitution.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 1))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Wie willst du studieren, wenn du noch nicht einmal die Gesetze lesen kannst? Du findest sie niedergeschrieben in unserer Verfassung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick II"))
talkEntry:addConsequence(consequence_quest(223, "=", 4))
talkEntry:addConsequence(consequence_quest(224, "=", 0))
talkEntry:addResponse("Cleanliness is important! Your first mission is to patrol Runewick and report any pollution. Check the hospital, the isle of the Archmage and the town harbour, especially the adventure stone there. Some drunken sailors besmeared it recently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 3))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick II"))
talkEntry:addConsequence(consequence_quest(223, "=", 4))
talkEntry:addConsequence(consequence_quest(224, "=", 0))
talkEntry:addResponse("Cleanliness is important! Your first mission is to patrol Runewick and report any pollution. Check the hospital, the isle of the Archmage and the town harbour, especially the adventure stone there. Some drunken sailors besmeared it recently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 3))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Untersuche Runewick II"))
talkEntry:addConsequence(consequence_quest(223, "=", 4))
talkEntry:addConsequence(consequence_quest(224, "=", 0))
talkEntry:addResponse("Sauberkeit zuerst! Deine erste Mission besteht darin, in Runewick zu patroullieren und Verschmutzungen zu melden. Überprüf das Hospital, die Insel des Erzmagiers und den Stadthafen, dort besonders den Abenteuerstein. Irgendwelche besoffenen Matrosen hatten ihn letztens beschmiert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a Cider."))
talkEntry:addConsequence(consequence_item(2059, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(223, "=", 6))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Some of the planks of the bridges at the port are rotten. Let's cheers on it, that nobody luckily still has broken through.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 5))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst ein Glas Cider."))
talkEntry:addConsequence(consequence_item(2059, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(223, "=", 6))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Einige der Planken der Stege am Hafen sind morsch. Lass uns drauf anstoßen, dass zum Glück noch keine durchgebrochen ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("What are you waiting for? Patrol the hospital, the isle of the Archmage and the town harbour!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 4))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("What are you waiting for? Patrol the hospital, the isle of the Archmage and the town harbour!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 4))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Worauf wartest du? Überprüfe das Hospital, die Insel des Erzmagiers und den Stadthafen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick III"))
talkEntry:addConsequence(consequence_quest(223, "=", 7))
talkEntry:addResponse("You noticed on your patrol the rotten planks in the harbour. This has to be repaired before any teacher and his lesson falls into the water; bring me twenty naldor boards so we fix the bridge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 6))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick III"))
talkEntry:addConsequence(consequence_quest(223, "=", 7))
talkEntry:addResponse("You noticed on your patrol the rotten planks in the harbour. This has to be repaired before any teacher and his lesson falls into the water; bring me twenty naldor boards so we fix the bridge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 6))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Untersuche Runewick III"))
talkEntry:addConsequence(consequence_quest(223, "=", 7))
talkEntry:addResponse("Du hast ja berichtet, dass am Hafen einige Planken morsch sind. Ehe ein Lehrer und damit auch der Unterricht ins Wasser fällt müssen wir es reparieren; bring mir bitte zwanzig Naldorbretter zum Ausbessern der Stege.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 7))
talkEntry:addCondition(condition_item(546, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a quill."))
talkEntry:addConsequence(consequence_deleteitem(546, 20, nil))
talkEntry:addConsequence(consequence_item(463, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(223, "=", 8))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Twenty planks that mean the world! Take this quill and you can write a drama about.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 7))
talkEntry:addCondition(condition_item(546, "all", ">", 19, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst eine Schreibfeder."))
talkEntry:addConsequence(consequence_deleteitem(546, 20, nil))
talkEntry:addConsequence(consequence_item(463, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(223, "=", 8))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Zwanzig Bretter die die Welt bedeuten! Hier hast du eine Schreibfeder, schreib ruhig ein Theaterstück darüber.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Twenty naldor planks to fix the world ... or our harbour. If you need help, ask Lothar Piero at the market place.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 7))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Twenty naldor planks to fix the world ... or our harbour. If you need help, ask Lothar Piero at the market place.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 7))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addResponse("Zwanzig Naldorbretter die die Welt geraderücken ... oder unseren Hafen sicher machen. Wenn du Hilfe brauchst, frage auf dem Markt nach Lothar Piero.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick IV"))
talkEntry:addConsequence(consequence_quest(223, "=", 9))
talkEntry:addConsequence(consequence_quest(224, "=", 0))
talkEntry:addResponse("You have to leave the town now! Please patrol the Lunord Bridge, the Runewick Harbour, the chicken farm at the Merryglade and the Shadow Gate. We need to know what happens there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 8))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick IV"))
talkEntry:addConsequence(consequence_quest(223, "=", 9))
talkEntry:addConsequence(consequence_quest(224, "=", 0))
talkEntry:addResponse("You have to leave the town now! Please patrol the Lunord Bridge, the Runewick Harbour, the chicken farm at the Merryglade and the Shadow Gate. We need to know what happens there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 8))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Untersuche Runewick IV"))
talkEntry:addConsequence(consequence_quest(223, "=", 9))
talkEntry:addConsequence(consequence_quest(224, "=", 0))
talkEntry:addResponse("Du musst mal raus aus der Stadt! Patroulliere bitte die Lunordbrücke, den Hafen Runewicks, die Hühnerfarm auf der fröhlichen Lichtung und das Schattentor. Es ist wichtig zu wissen, was dort passiert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded an Norodaj horned helmet."))
talkEntry:addConsequence(consequence_item(1421, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(223, "=", 11))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("What? An outbreak of slime? Bad news, I'll report to the Archmage as soon as possible. Thank you! You deserve this helmet of Runewick's warriors.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 10))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst einen Hörnerhelm der Norodaj."))
talkEntry:addConsequence(consequence_item(1421, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(223, "=", 11))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Was? Ein Schleimausbruch? Schlimm, schlimm, das werde ich dem Erzmagier berichten müssen. Danke, das war wirklich wichtig! Du hast dir diesen Helm der Krieger Runewicks redlich verdient.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("The Lunord Bridge is on the way westward from the teleporter. Passing Yewdale you find the harbor. Using the road northeast from Yewdale you find short after Cowards Last Stand the Merryglade with the chicken boxes. Short after on the right side you find behind the rock Oldras Tower the Shadow Gate.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 9))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("The Lunord Bridge is on the way westward from the teleporter. Passing Yewdale you find the harbor. Using the road northeast from Yewdale you find short after Cowards Last Stand the Merryglade with the chicken boxes. Short after on the right side you find behind the rock Oldras Tower the Shadow Gate.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 9))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Die Lunordbrücke führt nach Westen und beginnt am Teleporter. Hinter Eibenthal findest du den Hafen. Folgst du der Straße von Eibenthal nach Nordwesten erreichst du kurz hinter Feiglings Letztes Gefecht die Glückliche Lichtung mit den Hühnerställen. Bald darauf liegt rechterhand hinter dem Fels Oldras Turm das Schattentor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 11))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick V"))
talkEntry:addConsequence(consequence_quest(223, "=", 12))
talkEntry:addConsequence(consequence_quest(224, "=", 0))
talkEntry:addResponse("Sometimes, intelligence can be vital for knowledge. We do not spy, but we want to know who our enemy is, if you know what I mean. I want you to reconnoitre the Hemp Necktie Inn, the Don's hideout in Galmair and the Queens palace in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 11))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick V"))
talkEntry:addConsequence(consequence_quest(223, "=", 12))
talkEntry:addConsequence(consequence_quest(224, "=", 0))
talkEntry:addResponse("Sometimes, intelligence can be vital for knowledge. We do not spy, but we want to know who our enemy is, if you know what I mean. I want you to reconnoitre the Hemp Necktie Inn, the Don's hideout in Galmair and the Queens palace in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 11))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Untersuche Runewick V"))
talkEntry:addConsequence(consequence_quest(223, "=", 12))
talkEntry:addConsequence(consequence_quest(224, "=", 0))
talkEntry:addResponse("Aufklärung bringt manchmal überraschende Erkenntnisse. Wir sind keine Spione, wollen aber wissen, wer unser Feind ist. Ich will, dass du den Gasthof zur Hanfschlinge, das Versteck des Dons in Galmair und den Palast der Königin von Cadomyr 'aufklärst'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 13))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a pair fur boots."))
talkEntry:addConsequence(consequence_item(697, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(223, "=", 14))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("You can write a report later. For now, I am happy you made it back in one peace and with almost all your coins. For your next patrol, I have fitting footwear for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 13))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst ein Paar Fellstiefel."))
talkEntry:addConsequence(consequence_item(697, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(223, "=", 14))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Du kannst später einen Bericht schreiben. Ich bin erstmal froh, dass du in einem Stück und mit fast all deinen Münzen zurück bist. Für deine nächste Patroullie habe ich passendes Schuhwerk für dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 12))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Please reconnoitre the Hemp Necktie Inn, the Don's hideout in Galmair and the Queen's palace in Cadomyr and see who is friend and who is foe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 12))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Please reconnoitre the Hemp Necktie Inn, the Don's hideout in Galmair and the Queen's palace in Cadomyr and see who is friend and who is foe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 12))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Bitte besuche den Gasthof zur Hanfschlinge, das Versteck des Dons in Galmair und den Palast der Königin von Cadomyr und finde heraus, wer Feind und wer Freund ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 14))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick VI"))
talkEntry:addConsequence(consequence_quest(223, "=", 15))
talkEntry:addResponse("Being a student means more than reading books. Fostering one's university requires hard labour, too. Runewick is short on iron supply, as you might know. Please provide twenty iron ingots for ... erm. Whatever, at least we need them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 14))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick VI"))
talkEntry:addConsequence(consequence_quest(223, "=", 15))
talkEntry:addResponse("Being a student means more than reading books. Fostering one's university requires hard labour, too. Runewick is short on iron supply, as you might know. Please provide twenty iron ingots for ... erm. Whatever, at least we need them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 14))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Untersuche Runewick VI"))
talkEntry:addConsequence(consequence_quest(223, "=", 15))
talkEntry:addResponse("Ein Student zu sein braucht es mehr als nur Bücher zu lesen. Die Universität muss auch in Stand gehalten werden. Runewick mangelt es bekanntermaßen an Eisen. Bring mir bitte zwanzig Eisnebarren für ... erm. Egal, wir brauchen sie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 15))
talkEntry:addCondition(condition_item(2535, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a coppered dagger."))
talkEntry:addConsequence(consequence_deleteitem(2535, 20, nil))
talkEntry:addConsequence(consequence_item(398, 1, 799, {["descriptionEn"] = "Knowledge is power!", ["descriptionDe"] = "Wissen ist Macht!"}))
talkEntry:addConsequence(consequence_quest(223, "=", 16))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("What a brilliant performance! The ingots are not even rusty. You did a good deed today. I award you this dagger which identifies you as a student of Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 15))
talkEntry:addCondition(condition_item(2535, "all", ">", 19, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst einen Kupferdolch."))
talkEntry:addConsequence(consequence_deleteitem(2535, 20, nil))
talkEntry:addConsequence(consequence_item(398, 1, 799, {["descriptionEn"] = "Knowledge is power!", ["descriptionDe"] = "Wissen ist Macht!"}))
talkEntry:addConsequence(consequence_quest(223, "=", 16))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Was für eine glänzende Leistung! Die Eisenbarren sind ja nicht einmal angerostet. Du hast heute eine gute Tat vollbracht. Ich verleihe dir hiermit diesen Dolch, welcher dich als Student Runewicks ausweist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 15))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Do you really cannot imagine what all the iron needs? Twenty ingots are just a drop on a hot stone.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 15))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Do you really cannot imagine what all the iron needs? Twenty ingots are just a drop on a hot stone.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 15))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addResponse("Kannst du dir wirklich nicht vorstellen wozu mal alles Eisen braucht? Zwanzig Eisenbarren sind nur ein Tropfen auf einen heißen Stein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 16))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick VII"))
talkEntry:addConsequence(consequence_quest(223, "=", 17))
talkEntry:addResponse("I have news from the university. A training wand was broken and the Archmage is short of wine. Provide a wand and a bottle of elven wine. Yes you can!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 16))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Investigate Runewick VII"))
talkEntry:addConsequence(consequence_quest(223, "=", 17))
talkEntry:addResponse("I have news from the university. A training wand was broken and the Archmage is short of wine. Provide a wand and a bottle of elven wine. Yes you can!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 16))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Untersuche Runewick VII"))
talkEntry:addConsequence(consequence_quest(223, "=", 17))
talkEntry:addResponse("Ich habe Neuigkeiten aus der Universität. Ein Zauberstanb zerbrach bei einer Übung und dem Erzmagier fehlt es an Wein. Bring mir bitte einen Zauberstanb und eine Flasche Elfenwein. Ja du schaffst das!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 17))
talkEntry:addCondition(condition_item(323, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(1318, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a knight shield and a magical ruby."))
talkEntry:addConsequence(consequence_deleteitem(323, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(1318, 1, nil))
talkEntry:addConsequence(consequence_item(20, 1, 999, {["descriptionEn"] = "This shield bears the crest of Runewick.", ["descriptionDe"] = "Dieser Schild trägt das Wappen Runewicks.", ["rareness"] = "3"}))
talkEntry:addConsequence(consequence_item(3521, 1, 333, {["gemLevel"] = "2"}))
talkEntry:addConsequence(consequence_quest(223, "=", 18))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("You made a very valuable contribution to the strengthening of Runewick. May you continue to pursue your studies with earnestness.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 17))
talkEntry:addCondition(condition_item(323, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(1318, "all", ">", 0, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst einen Ritterschild und einen magischen Rubin."))
talkEntry:addConsequence(consequence_deleteitem(323, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(1318, 1, nil))
talkEntry:addConsequence(consequence_item(20, 1, 999, {["descriptionEn"] = "This shield bears the crest of Runewick.", ["descriptionDe"] = "Dieser Schild trägt das Wappen Runewicks.", ["rareness"] = "3"}))
talkEntry:addConsequence(consequence_item(3521, 1, 333, {["gemLevel"] = "2"}))
talkEntry:addConsequence(consequence_quest(223, "=", 18))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Du hast dich um Runewick verdient gemacht. Mögest du deine Studien weiter mit Ersthaftigkeit verfolgen")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 17))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("The Archmage demands a bottle of elven wine and we have to replace a broken wand. Bring it to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 17))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("The Archmage demands a bottle of elven wine and we have to replace a broken wand. Bring it to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 17))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Der Erzmagier braucht eine Flasche Elfenwein und wir müssen einen zerbrochenen Zauberstab ersetzen. Bringt diese Dinge zu mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 18))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You might become one of Runewicks most famous scholars one day. But it's a hard work and a long way to go.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 18))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You might become one of Runewicks most famous scholars one day. But it's a hard work and a long way to go.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(223, "=", 18))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du kannst es sicher zu einem der berühmten Wissenschaftler Runewicks bringen. Aber bis dahin ist es ein langer Weg voller Arbeit und Mühe.")
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
talkEntry:addTrigger("profession")
talkEntry:addResponse("If necessary, I'm an informant. If asked, I will tell you about Runewick... the buildings, locations, events, people, history or gods. If you require even more, I have at least one task pending.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Wenn notwendig diene ich als Auskunftsgeberin. In diesem Fall würde ich euch über Runewick informieren, seine Gebäude, Orte, Ereignisse, Leute, Geschichte oder Götter. Und wenn erwünscht, wären auch mindestens eine Aufgabe zu lösen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("If necessary, I'm an informant. If asked, I will tell you about Runewick... the buildings, locations, events, people, history or gods. If you require even more, I have at least one task pending.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Wenn notwendig diene ich als Auskunftsgeberin. In diesem Fall würde ich euch über Runewick informieren, seine Gebäude, Orte, Ereignisse, Leute, Geschichte oder Götter. Und wenn erwünscht, wären auch mindestens eine Aufgabe zu lösen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("telep")
talkEntry:addResponse("The teleporter west of here can lead you to Cadomyr, Galmair or the Hemp Necktie Inn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("telep")
talkEntry:addResponse("Der Teleporter westlich von hier vermag euch nach Cadomyr, Galmair oder zum Gasthof zur Hanfschlinge bringen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Keywords] building, location, event, people, history, god, ruler, law."))
talkEntry:addResponse("I have information about the buildings, locations, events, people, history, our ruler, laws and gods of Runewick for you if you want to know about them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Gebäude, Orte, Ereignisse, Leute, Geschichte, Götter, Herrscher, Gesetz."))
talkEntry:addResponse("Ich habe Informationen über Gebäude, Orte, Ereignisse, Leute, Geschichte, unseren Herrscher, Gesetze und die Götter von Runewick für euch wenn ihr wünscht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("question")
talkEntry:addConsequence(consequence_inform("[Keywords] building, location, event, people, history, god, ruler, law."))
talkEntry:addResponse("I have information about the buildings, locations, events, people, history, our ruler, laws and gods of Runewick for you if you want to know about them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frage")
talkEntry:addTrigger("Auskunft")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Gebäude, Orte, Ereignisse, Leute, Geschichte, Götter, Herrscher, Gesetz."))
talkEntry:addResponse("Ich habe Informationen über Gebäude, Orte, Ereignisse, Leute, Geschichte, unseren Herrscher, Gesetze und die Götter von Runewick für euch wenn ihr wünscht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("building")
talkEntry:addConsequence(consequence_inform("[Keywords] Market, shrine, teleporter, census office, library, Tomb, islands, Island of Air, Island of Fire, Island of Water, Island of Earth"))
talkEntry:addResponse("Which building do you mean? I can tell you about the market, shrine, teleporter, census office, library, Tomb, or our islands: Island of Air, Island of Fire, Island of Water or Island of Earth?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gebäude")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Markt, Schrein, Teleporter, Zensusbüro, Bibliothek, Gruft, Inseln, Insel der Luft, Insel des Feuers, Insel des Wassers, Insel der Erde"))
talkEntry:addResponse("Welches Gebäude meint ihr? Markt, Schrein, Teleporter, Zensusbüro, Bibliothek, Gruft, oder unsere Inseln, sprich Insel der Luft, Insel des Feuers, Insel des Wassers, Insel der Erde?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("location")
talkEntry:addConsequence(consequence_inform("[Keywords] Hinterland, Numila Irunnleh"))
talkEntry:addResponse("Locations? Which locations of the hinterland do you mean? I recommend also talking to a geographer about them. I suggest Numila Irunnleh, who can be found in the Library of Earth.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ort")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Hinterland, Numila Irunnleh"))
talkEntry:addResponse("Orte? Welche Orte des Hinterlandes meint ihr? Ich empfehle auch mit einem Geograph darüber zu sprechen. Ich kann euch eine in der Bibliothek der Erde empfehlen. Sie wird Numila Irunnleh genannt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addResponse("She is a geographer and can be found in the Central Library. She will tell you information about locations outside of Runewick like Yewdale, Bear cave, Snakehead Bay, Illarion, Shadowland and other places you might like to know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addResponse("Sie ist eine Geographin und kann in der Zentralbibliothek gefunden werden. Sie wird euch über Orte wie Eibenthal, Bärenhöhle, Schlangekopfbucht, Illarion, Schattenland und andere Orte erzählen über die ihr gerne mehr wissen möchtet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("people")
talkEntry:addResponse("People? Whom else do you desire to talk with other than our Archmage? I do not think anyone else has more wisdom, therefore do not waste your time with other people and more importantly, do not bother me with questions about them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Leute")
talkEntry:addResponse("Leute? Mit wem außer dem Erzmagier möchtet ihr ansonsten sprechen? Ich kenne niemanden der größere Weisheit als er besitzt. Daher verschwendet nicht eure Zeit und ärgert mich nicht mit Fragen über andere Leute.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("history")
talkEntry:addResponse("I do not think that you have time to listen to all my knowledge about our history, therefore, I recommend the history book in our libraries.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Geschichte")
talkEntry:addResponse("Ich denke nicht, dass ihr die Zeit habt all meinem Wissen über unsere Geschichte euer Gehör zu schenken. Daher empfehle ich unser Geschichtsbuch in unseren Bibliotheken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("event")
talkEntry:addResponse("I do not think that you have time to listen to all my knowledge about events in this place, therefore, I recommend the history book in our libraries.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ereignis")
talkEntry:addTrigger("Geschehnis")
talkEntry:addResponse("Ich denke nicht, dass ihr die Zeit habt all meinem Wissen über sämtliche stattgefunden Ereignisse euer Gehör zu schenken. Daher empfehle ich unser Geschichtsbuch in unseren Bibliotheken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("law")
talkEntry:addResponse("If you can read, I suggest you read the law book in our libraries. If you cannot read, I suggest to move to either Galmair or Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gesetz")
talkEntry:addResponse("Wenn ihr des Lesens mächtig seid, dann empfehle ich unser Gesetzbuch in unseren Bibliotheken. Wenn ihr es nicht seid, dann empfehle ich euch nach Galmair oder Cadomyr umzuziehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ruler")
talkEntry:addResponse("Our highest advisor is Archmage Elvaine Morgan. He founded this place of wisdom and might be found either on his island - the Island of the Archmage - or in the Hall of Elara.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Herrscher")
talkEntry:addResponse("Unser höchster Ratgeber ist Erzmagier Elvaine Morgan. Er hat diesen Ort der Weisheit erschaffen und kann entweder auf seiner Inser - der Insel des Erzmagiers - oder in der Halle der Elara gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("market")
talkEntry:addResponse("The marktplace can be found in front of the building on the Island of Air. The Island of Ar is in the is the southeast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Markt")
talkEntry:addResponse("Der Marktplatz ist vor dem Haus auf der Insels der Luft. Die Insel der Luft ist im Südosten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("shrine")
talkEntry:addConsequence(consequence_inform("[Keywords] Shrine of Eldan, Shrine of Elara, Shrine of Findari, Shrine of Oldra, Shrine of Bragon, Shrine of Cherga, Shrine of Ushara, Shrine of Adron, Shrine of Tanora"))
talkEntry:addResponse("You can find nine here, of the gods: Eldan, Elara, Findari, Oldra, Brágon, Cherga, Ushara, Adron and Tanora.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schrein")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Schrein des Eldan, Schrein der Elara, Schrein der Findari, Schrein der Oldra, Schrein des Bragon, Schrein der Cherga, Schrein der Ushara, Schrein des Adron, Schrein der Tanora"))
talkEntry:addResponse("Ihr findet hier neun Schreine der Gottheiten: Eldan, Elara, Findari, Oldra, Brágon, Cherga, Ushara, Schrein und Schrein der Tanora.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Census")
talkEntry:addResponse("The census office can be found on the secound floor of the building on Island of Spirit. You will find Torina Scibrim there. She will help you further.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Zensusbüro")
talkEntry:addResponse("Das Zensusbüro im zweiten Stock im Gebäude auf der Insel des Geistes gefunden werden. Man findet dort Torina Scibrim. Sie wird euch weiterhelfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Census")
talkEntry:addResponse("The census office can be found on the secound floor of the building on Island of Spirit. You can join the realm of wisdom there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zensusbüro")
talkEntry:addResponse("Das Zensusbüro im zweiten Stock im Gebäude auf der Insel des Geistes gefunden werden. Dort könnt ihr dem Reich der Weisheit beitreten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Yewdale")
talkEntry:addResponse("Yewdale is the village west of Runewick. For more detailsask Numila Irunnleh.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eibenthal")
talkEntry:addResponse("Das Eibenthal ist das Dorf westlich von Runewick. Befragt Numila Irunnleh um nähere Information zu erhalten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shrine.*Oldra")
talkEntry:addTrigger("Findari Oldra")
talkEntry:addResponse("The Shrine of Oldra can be found in Yewdale.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schrein.*Oldra")
talkEntry:addTrigger("Findari Oldra")
talkEntry:addResponse("Der Schrein der Oldra kann in Eibenthal gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tomb")
talkEntry:addConsequence(consequence_inform("[Keywords] Room of Light, Room of Darkness, Room of  Twilight"))
talkEntry:addResponse("To reach the tomb you have to leave the town and go north. The tomb is divided in three rooms: Room of Light, Room of Darkness, and Room of Twilight.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gruft")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Raum des Lichts, Raum der Finsternis, Raum des Zwielichts"))
talkEntry:addResponse("Um die Gruft zu erreichen müsst ihr aus der Stadt wieder heraus und dann gleich nach Norden. Die Gruft ist unterteilt in drei Räume: Raum des Lichts, Raum der Finsternis, und Raum des Zwielichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Room.*Twilight")
talkEntry:addResponse("The Room of Twilight is the place for those who were neither at the top or on the bottom of the god given hierarchy. Gregor, a human whom you should find on your way to the tomb, will tell you more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Raum.*Zwielicht")
talkEntry:addResponse("Der Raum des Zwielichts ist der Ort für jene welche weder an der Spitze noch am unteren Ende der Hierarchie gelebt haben. Gregor, ein Mensch dem ihr auf eurem Weg zur Gruft begegnen werdet, wird euch mehr darüber erzählen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Room.*Light")
talkEntry:addResponse("The Room of Light is reserved for those who reached the top of the god given hierarchy. Eldan as well as Elara had a reason to set it this way. Our Archmage knows that and therefore rules according to this divine law.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Raum.*Lichts")
talkEntry:addResponse("Der Raum des Lichts ist für jene an der Spitze der gottgewollten Hierarchie bestimmt. Eldan wie auch Elara hatten ihre Gründe dafür. Unser Erzmagier ist sich dessen durchaus bewusst und regiert deswegen auch entsprechend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Room.*Darkness")
talkEntry:addResponse("The Room of Darkness is the place for the corpses of those who lived at the bottom of the god given hierarchy. Gregor, a human whom you should find on your way to the tomb, will tell you more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Raum.*Finsternis")
talkEntry:addResponse("Der Raum der Finsternis ist jener Ort an dem die Leichen jener aufgehoben werden, welche zuvor an der Sohle der Gesellschaft gelebt haben. Gregor, ein Mensch dem ihr auf euren Weg zur Gruft begegnen werdet, wird euch mehr darüber erzählen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Island.*Air")
talkEntry:addTrigger("Air.*Island")
talkEntry:addConsequence(consequence_inform("[Keywords] kitchen, marktplace, workshop, Shrine of Findari, craft teacher"))
talkEntry:addResponse("This is the south-easterly Island and is mainly for crafters and traders. You can find the following things: The kitchen, the Marktplace, the Workshop, Shrine of Findari and Craft Teachers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Insel.*Luft")
talkEntry:addTrigger("Luft.*Insel")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Küche, Marktplatz, Werkstatt, Schrein der Elara, Handwerkslehrer"))
talkEntry:addResponse("Dies ist die südöstliche Insel und ist hauptsächlich für Handwerker und Händler. Ihr findet folgende Dinge dort: Die Küche, den Marktplatz, die Werkstatt, Schrein der Findari und Handwerkslehrer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kitchen")
talkEntry:addResponse("The kitchen is based on the ground floor of the builing on the Island of Air. You can find cooks there or the possibility for cooking yourself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Küche")
talkEntry:addResponse("Die Küche ist im Erdgeschoss des Gebäudes auf der Insels der Luft zu finden. Man findet dort Köche beziehungsweise die Möglichkeit zum Kochen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("marktplace")
talkEntry:addResponse("The marktplace can be found in front of the building on the Island of Air. Do I have to explain what you can do there? I hope not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("marktplatz")
talkEntry:addResponse("Der Marktplatz ist vor dem Haus auf der Insels der Luft. Muss ich erklären, was man dort tun kann? Ich hoffe nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("workshop")
talkEntry:addResponse("The workshop is based on the ground floor of the main building of the Island of Air. There you can find tools for carpenters, tailors, glas blowers and candle makers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Werkstatt")
talkEntry:addResponse("Die Werkstatt befindet sich im Erdgeschoss des Gebäudes auf der Insels der Luft. Dort findet ihr Werkzeuge für Schreiner, Schneider, Glasbläser und Kerzenmacher.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("craft.*teacher")
talkEntry:addTrigger("teacher.*craft")
talkEntry:addResponse("The craf teachers train you in the arts of carpentry, cooking, tailoring, glas blowing and candle making. You find them in the workshop and kitchen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Handwerk.*lehrer")
talkEntry:addTrigger("Lehrer.*Handwerk")
talkEntry:addResponse("Die Handwerkslehrer lehren euch in der Kunst des Schreinerns, Schneiderns, glasblasens und Kerzenmachens. Ihr findet sie in Wekrstatt und Küche.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shrine.*Findari")
talkEntry:addTrigger("Findari.*Shrine")
talkEntry:addResponse("The Shrine of Findari can be found on the top of the building on the Island of Air.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schrein.*Findari")
talkEntry:addTrigger("Findari.*Shrine")
talkEntry:addResponse("Der Schrein der Findari kann auf dem Dach des Gebäudes auf Insels der Luft gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Island.*Fire")
talkEntry:addTrigger("Fire.*Island")
talkEntry:addConsequence(consequence_inform("[Keywords] Apartment House, Shrine of Bragon"))
talkEntry:addResponse("This is the north-easterly Island. You can find the two buildings there: a Apartment House and the Shrine of Bragon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Insel.*Feuer")
talkEntry:addTrigger("Feuer.*Insel")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Aparmenthaus, Schrein des Bragon"))
talkEntry:addResponse("Dies ist die nordöstliche Insel. Ihr findet folgende zwei gebäude dort: ein Apartmenthaus und den Schrein des Bragon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Apartment.*house")
talkEntry:addResponse("In the aparmenthouse are four apartments of differnt sizes for citizens of Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Apartment.*haus")
talkEntry:addTrigger("Haus.*Apartment")
talkEntry:addResponse("Im Apartmenthaus befinden sich vier Apartments unterschiedlicher Größe für die Bürger Runewicks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shrine.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*Shrine")
talkEntry:addResponse("The Shrine of Bragon is more a small temple on the Island of Fire.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schrein.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*Schrein")
talkEntry:addResponse("Der Schrein des Bragon ist mehr ein kleiner Tempel auf der Insels des Feuers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Island.*Water")
talkEntry:addTrigger("Water.*Island")
talkEntry:addConsequence(consequence_inform("[Keywords] Guard house, Tavern, Harbour, Shrines Tanora, Shrine Adron"))
talkEntry:addResponse("You are actual on the Island of Water. You can find here the Guard house, the Tavern, the inner Harbour and the Shrines of Tanora and Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Insel.*Wasser")
talkEntry:addTrigger("Wasser.*Insel")
talkEntry:addConsequence(consequence_inform("[Keywords] Wachhaus, Taverne, Hafen, Schrein Tanora, Schrein Adron"))
talkEntry:addResponse("Ihr seid gerade auf der Insel des Wassers. Ihr findet hier das Wachhaus, die Taverne, den inneren Hafen und die Schreine von Tanora und Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Guard.*house")
talkEntry:addTrigger("house.*guard")
talkEntry:addResponse("The guard house is the building to my right. It is the headquater of our Townguard. Furthermore you find a skilled trainer and a portal to the arena there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wach.*haus")
talkEntry:addTrigger("Haus.*Wache")
talkEntry:addResponse("Das Wachhaus ist das Gebäude zu meiner Rechten. Es ist das Hauptquatier unser Stadtwache. Darüber hinaus findert ihr dort drin ein guten Trainer und ein Portal zur Arena")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shrine.*Adron")
talkEntry:addTrigger("Adron.*Shrine")
talkEntry:addResponse("The Shrine of Adron is in the Tavern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schrein.*Adron")
talkEntry:addTrigger("Adron.*Schrein")
talkEntry:addResponse("Der Schreind des Adron ist in der Taverne zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tavern")
talkEntry:addTrigger("Taverna")
talkEntry:addResponse("The Tavern is the bright building behind me. You find also a bath and a sleeping hall in the secound floor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Taverne")
talkEntry:addTrigger("Schänke")
talkEntry:addResponse("Die Taverne ist das helle Gebäude hinter mir. Ihr findet dort auch ein Bad und ein Schlafsaal im zweiten Stock.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shrine.*Tanora")
talkEntry:addTrigger("Tanora.*Shrine")
talkEntry:addResponse("The Shrine of Tanora is in the cave south from here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shrein.*Tanora")
talkEntry:addTrigger("Tanora.*Schrein")
talkEntry:addResponse("Der Schreind der Tanora ist in der Höhle südlich zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("port")
talkEntry:addTrigger("harbour")
talkEntry:addResponse("The inner harbour is south of here. You can find the Major Domus there who needs ever help.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hafen")
talkEntry:addResponse("Der innere Hafen ist südlich von hier. Ihr könnt den major Domus dort finden der immer Hilfe gebrauchen kann")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Island.*Earth")
talkEntry:addTrigger("Earth.*Island")
talkEntry:addConsequence(consequence_inform("[Keywords] Library of Alchemy, Shrine of Ushara, Hospital, Faculty of Alchemy"))
talkEntry:addResponse("This is the island north of us. You find the Library of Alchemy, Shrine of Ushara, Hospital and Faculty of Alchemy there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Insel.*Erd")
talkEntry:addTrigger("Erd.*Insel")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Bibliothek der Alchemie, Schrein der Ushara, Hospital, Fakultät der Alchemie"))
talkEntry:addResponse("Dies ist die Insel nördlich von uns. Ihr findet dort die Bibliothek der Alchemie, den Schrein Usharas, das Hospital und die Fakultät der Alchemie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Library.*Alchemy")
talkEntry:addTrigger("Alchemy.*Library")
talkEntry:addResponse("The Library of Alchemy can be found on the ground floor of the Building on the Island of Earth. Do I have to explain what you can do there? I hope not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bibliothek.*Alchemie")
talkEntry:addTrigger("Alchemie.*Bibliothek")
talkEntry:addResponse("Die Bibliothek der Alchemie kann im Erdgeschoss des Gebäudes auf der Insels der Erde gefunden werden. Muss ich erklären, was man dort tun kann? Ich hoffe nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shrine.*Ushara")
talkEntry:addTrigger("Ushara.*Shrine")
talkEntry:addResponse("The Shrine of Ushara can be found in the garden of the Island of Earth.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schrein.*Ushara")
talkEntry:addTrigger("Ushara.*Schrein")
talkEntry:addTrigger("Usharas Schrein")
talkEntry:addTrigger("Schrein der Ushara")
talkEntry:addResponse("Der Schrein der Ushara kann im Garten auf der Insel der Erde gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hospital")
talkEntry:addResponse("The Hospial is in the east wing of the building on the Island of Earth.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hospital")
talkEntry:addTrigger("Krankenhaus")
talkEntry:addResponse("Das Hospital findet ihr im Ostflügel des Gebäudes auf der Insel der Erde")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Faculty.*Alchemy")
talkEntry:addTrigger("Alchemy.*Faculty")
talkEntry:addResponse("You find the Faculty of Alchemy in the west wing of the building on the Island of Earth.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fakultät.*Alchemie")
talkEntry:addTrigger("Alchemie.*Fakultät")
talkEntry:addResponse("Ihr findet die Fakultät der Alchemie im Westflügel des Gebäudes auf der Insel der Erde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Island.*Spirit")
talkEntry:addTrigger("Spirit.*Island")
talkEntry:addConsequence(consequence_inform("[Keywords] Central Library of Alchemy, Shrine of Elara, Town Administration, Faculty of Magic, Elara Hall"))
talkEntry:addResponse("This is the island east of us, between the Islands of Air and Fire. You find the Central Library, the Shrine of Elara, the Town Administraion, Faculty of Magic and the Elara Hall there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Insel.*Geistes")
talkEntry:addTrigger("Geistes.*Insel")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Zentralbibliothek, Schrein der Elara, Stadtverwaltung, Fakultät der Magie, Elarahalle"))
talkEntry:addResponse("Dies ist die Insel östlich von uns, zwischen den Inseln der Luft und des Feuers. Ihr findet dort die Zentralbibliothek, den Schrein Elaras, die Stadtverwaltung, die Fakultät der Magie und die Elrahalle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Central.*Library")
talkEntry:addTrigger("Library.*Central")
talkEntry:addResponse("The Central Library is the big east part of the building on the Island of Spirit. Do I have to explain what you can do there? I hope not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zentral.*bibliothek")
talkEntry:addTrigger("Zentral.*Bibliothek")
talkEntry:addResponse("Die Zentralbibliothek ist der große Ostteil des Gebäudes auf der Insels des Geistes. Muss ich erklären, was man dort tun kann? Ich hoffe nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shrine.*Elara")
talkEntry:addTrigger("Elara.*Shrine")
talkEntry:addResponse("The Shrine of Elara can be found in the first floor of the Central Library.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schrein.*Elara")
talkEntry:addTrigger("Elara.*Schrein")
talkEntry:addResponse("Der Schrein der Elara befindet sich im Obergeschoss der Zentralbibliothek.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Town.*Administration")
talkEntry:addTrigger("Administration.*Town")
talkEntry:addResponse("The Town Administration is in the first floor of the building on the Island of Spirit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stadt.*verwaltung")
talkEntry:addTrigger("Verwaltung.*Stadt")
talkEntry:addResponse("Die Stadtverwaltung befindet sich im Obergeschoss des Gebäudes auf der Insel des Geistes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Faculty.*Magic")
talkEntry:addTrigger("Magic.*Faculty")
talkEntry:addResponse("You find the Faculty of Magic in the big building on the Island of Spirit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fakultät.*Magie")
talkEntry:addTrigger("Magie.*Fakultät")
talkEntry:addResponse("Ihr findet die Fakultät der Magie im großen Gebäudes auf der Insel des Geistes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara.*Hall")
talkEntry:addTrigger("Hall.*Elara")
talkEntry:addResponse("You find the Elara hall on the ground floor of the big building on the Island of Spirit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara.*halle")
talkEntry:addTrigger("Halle.*Elara")
talkEntry:addResponse("Ihr findet die Elarahalle im Erdgeschoss des großen Gebäudes auf der Insel des Geistes")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Island")
talkEntry:addConsequence(consequence_inform("[Keywords] Island of Air, Island of Fire, Island of Earth, Island of Water, Island of Spirit"))
talkEntry:addResponse("There are five islands: Island of Air, Island of Fire, Island of Earth, Island of Water and Island of Spirit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Insel")
talkEntry:addTrigger("Inseln")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Insel der Luft, Insel des Feuers, Insel der Erde, Insel des Wassers, Insel des Geistes"))
talkEntry:addResponse("Es gibt vier Inseln: Insel der Luft, Insel des Feuers, Insel der Erde, Insel des Wassers und Insel des Geistes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Library")
talkEntry:addConsequence(consequence_inform("[Keywords] Central Library of Spirit, Library of Alchemy"))
talkEntry:addResponse("Actually, we have two of them, the Central Library on the Island of Spirit and the Library of Alchemy on the Island of Earth. Which one would you like to know more about?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bibliothek")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Zentralbibliothek, Bibliothek der Alchemie"))
talkEntry:addResponse("Eigentlich haben wir hier zwei Stück. Die zentralbibliothek auf der Insel des Geistes und die Bibliothek der Alchemie auf der Insel der Erde. Jede von ihnen ist im ersten Stock ihres Insel zu finden. Zu welcher wollt ihr mehr wissen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hinterland")
talkEntry:addConsequence(consequence_inform("[Keywords] Fire of Triumph, Holy Oak, Twin Eyes islands, Oldra's Column, Mermaid, Lurnord bridge"))
talkEntry:addResponse("The Hinterland of Runewick contains the following locations: Fire of Triumph, Holy Oak, Woodcutter's Camp, Twin Eyes islands, Oldra's Column, Lurnord bridge and Mermaid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hinterland")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Feuer des Triumphes, Heilige Eiche, Zwillingsaugeninseln, Oldras Säule, Meerjungfrau, Lurnord Brücke"))
talkEntry:addResponse("Das Hinterland von Runewick enthält folgende Orte: Feuer des Triumphes, Heilige Eiche, Holzfäller Lager, Zwillingsaugeninseln, Oldras Säule, Lurnord Brücke und Meerjungfrau.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fire Triumph")
talkEntry:addTrigger("Triumph Fire")
talkEntry:addResponse("It can be found on the north after the Lurnord Bridge and the Holy Oak. This place reminds us of our involvement and victory in a campaign between Cadomyr and Galmair. Unfortunately, some actions went wrong.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Feuer Triumph")
talkEntry:addTrigger("Triumph Feuer")
talkEntry:addResponse("Dieser Ort kann nördlich nach der Lurnord Brücke und der Heiligen Eiche gefunden werden und erinnert an unsere Einflussnahme und unseren Sieg in einer Auseinandersetzung zwischen Cadomyr und Galmair. Leider ging einiges schief.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Holy Oak")
talkEntry:addResponse("This is a holy and very old tree found to the north after the Lurnord Bridge. You will find more information there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Heilige Eiche")
talkEntry:addResponse("Das ist ein heiliger und sehr alter Baum nördlich nach der Lurnord Brücke. Dort werdet ihr weitere Informationen finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Twin Eyes")
talkEntry:addResponse("This place is far south of here. Two islands, which... uhh... I forget, but you will find what you want to know there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zwillingsaugen")
talkEntry:addResponse("Dieser Ort ist ganz im Süden. Zwei Inseln, welche...uhh... ich hab es vergessen, aber ihr werdet herausfinden was ihr zu wissen wünscht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra's Column")
talkEntry:addTrigger("Oldras Column")
talkEntry:addResponse("This place can be found to the south of here *points first to the bridge and then to the south*. Some information about Oldra and what she likes awaits you. Look for the column and trees over there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldras Säule")
talkEntry:addResponse("Dieser Ort kann im Süden von hier aus gefunden werden *zeigt erst zur Brücke und dann in den Süden*. Einige Informationen über Oldra und Dinge die sie mag warten dort auf euch. Haltet Ausschau nach der Säule und den Bäumen dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mermaid")
talkEntry:addResponse("Just follow the west coast to the south after the Lurnord Bridge and you will find this place with a statue of a beautiful woman. This place is also used by fishers who are waiting to get in touch with the mermaid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Meerjungfrau")
talkEntry:addResponse("Folget der Westküste in den Süden nach der Lurnord Brücke und ihr werdet diesen Ort mit einer Statue einer schönen Frau finden. Dieser Ort wird auch von vielen Fischern verwendet, die auf die Meerjungfrau warten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lurnord bridge")
talkEntry:addResponse("This is the bridge between Runewick and Yewdale. It was destroyed years ago after a war with Galmair and rebuilt by a friend of mine who left afterwards. Lunord was his name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lurnord Brücke")
talkEntry:addResponse("Das ist die Brücke zwischen Runewick und dem Eibenthal. Sie war einige Jahre zuvor zerstört durch einen Krieg mit Galmair und wurde von einen Freund von mir wiederaufgebaut, welcher nun gegangen ist. Sein Name war Lunord.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("town")
talkEntry:addResponse("There are three towns: Our town Runewick, ruled by our great leader Elvaine Morgan, then the two foolish towns of Galmair and Cadomyr, ruled by Don Valerio Guilianni and Queen Rosaline Edwards.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("stadt")
talkEntry:addResponse("Es gibt drei Städte: Unsere Stadt Runewick, geführt von unserem Herrscher Elvaine Morgan. Dann diese zwei närrischen Städte Galmair und Cadomyr, geführt von Don Valerio Guilianni und Königin Rosaline Edwards.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Our leader can be found on the Archmage Island if you want to talk to him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Unser Herrscher kann auf der Erzmagierinsel gefunden werden, wenn ihr ihn zu sprechen wünscht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Our leader can be found on the Archmage Island if you want to talk to him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Unser Herrscher kann auf der Erzmagierinsel gefunden werden, wenn ihr ihn zu sprechen wünscht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("That is here and if you want to know more about it ask me for further information.")
talkEntry:addResponse("Here at Runewick, we are interested in alchemists, candle makers, carpenters, lumberjacks, cooks and bakers, farmers, herb gatherers, or tailors, tanners and dyers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Das ist hier und wenn du mehr darüber wissen möchtest, dann frag mich nach weiterer Information.")
talkEntry:addResponse("Hier in Runewick suchen wir immer Alchemisten, Kerzenmacher, Schreiner, Holzfäller, Köche, Bäcker, Bauern, Kräutersammler, Schneider, Gerber oder Färber.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("I do not want to talk about him, but you will find him in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ich will nicht über ihn sprechen, aber er kann in Galmair gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("There are not many reasons to travel there. Exceptions are if you look for blacksmiths, brick makers, masons, miners, and brewers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Es gibt nicht viele Gründe dorthin zu reisen. Es sei den ihr sucht nach einem Schmied, Ziegelmacher, Steinmetz, Schürfer oder Brauer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("I do not want to talk about her, but you will find her in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Ich will nicht über ihn sprechen, aber sie kann in Cadomyr gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I do not want to talk about her, but you will find her in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ich will nicht über ihn sprechen, aber sie kann in Cadomyr gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("There are not many reasons to travel there. Exceptions are if you look for fishermen, glass blowers, diggers, finesmiths, and gem grinders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Es gibt nicht viele Gründe dorthin zu reisen. Es sei den ihr sucht nach einen Fischer, Glasblässer, Sandgräber, Goldschmied oder Edelsteinschleifer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("You better try your luck at our marketplace here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ihr versucht besser euer Glück auf unserem Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("If necessary I will inform you about Runewick, the buildings, places, events, people, history or gods. If you require even more, I have at least one task pending.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Falls notwendig würde ich euch über Runewick informieren, seine Gebäude, Orte, Ereignisse, Leute, Geschichte oder Götter. Und wenn erwünscht, wären auch mindestens eine Aufgabe zu lösen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Primarily, we pray to three gods in Runewick. They are Adron, Oldra and Elara of course, my favourite god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Bevorzugt beten wir drei Götter in Runewick an. Die wären Adron, Oldra und natürlich Elara, meine bevorzugte Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron's followers are mostly tavern keepers or vine growers, some bards as well. They believe that when they die, there will be an orgy that lasts forever. There is a shrine dedicated to him in the Tavern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Seine Anhänger sind meistens Gastwirte oder Weinbauern. Auch einigen Barden. Sie glauben, wenn sie sterben, wird es eine Orgie zu ihren Ehren geben, die niemals enden wird. Er hat einen Schrein in der Taverne.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("One of the Elder Gods, he is also known as the God of Fire. There is a shrine dedicated to him on the Island of Fire.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Einer der alten Götter. Er ist auch als Gott des Feuers bekannt. Es gibt einen Schrein auf der Insels des Feuers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("The Goddess of Spirits and the Underworld. She likes balance and justice. She does not care much about the living. There is a shrine dedicated to her in the graveyard forest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Die Göttin der Geister und der Unterwelt. Sie steht ein für ausgeglichene Gerechtigkeit. Sie gibt nicht viel auf das Leben an sich, der Tod ist ihr Reich. Es gibt im Friedwald einen Schrein ihr zu ehren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Her followers believe in the power of wisdom. Some of these people are praying to be told great secrets, or even the secret of life. As legend tells, one holy man has been told it after long prayers and discussions with the Goddess.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Ihre Anhänger glauben an die Macht der Weisheit. Einige dieser Anhänger beten, um geheimes und altes Wissen zu erlangen oder um den Sinn des Lebens zu erfahren. Eine Legende erzählt von einem Mann, der so lange betete, bis sich ihm dieser offenbarte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("One of the Elder Gods, he is also known as the God of Spirit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Einer der alten Götter. Er ist auch bekannt als Gott des Geistes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("One of the Elder Gods, she is also known as the Goddess of Air. There is a shrine dedicated to her on the Island of Air.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Eine der alten Götter. Sie ist auch als Göttin der Luft bekannt. Es gibt einen Schrein auf der Insels der Luft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("One of the unimportant Younger Gods. You can find followers in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Einer der unwichtigen jüngeren Götter. Man kann Anhänger in Galmair finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("One of the unimportant Younger Gods. You can find followers in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Einer der unwichtigen jüngeren Götter. Man kann Anhänger in Cadomyr finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me narrows her eyes and takes a blade which she swings immediately without a single word against her opposition.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me verengt ihre Augen, zieht ein Schwert und schlägt sogleich ohne ein einziges Wort damit herum.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("One of the unimportant Younger Gods. You can find followers in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Einer der unwichtigen jüngeren Götter. Man kann Anhänger in Galmair finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Most of her priests are female, who serve the Goddess into old age. They think that when they die, they will be brought to a big garden gate. If they have been good, they can enjoy the wonders of the never ending garden. There is a shrine dedicated to her here in Yewdale on the coast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Die meisten Ihrer Priester sind weiblich und dienen der Gottheit bis ins hohe Alter. Sie glauben wenn sie sterben, werden sie zu einem prachtvollen Gartentor gebracht, und wenn sie gut waren dürfen sie an diesem wunderbaren Ort leben. Wie dem auch sei, im Eibenthal an der Küste findet ihr einen Schrein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("One of the unimportant Younger Gods. You can find followers in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Einer der unwichtigen jüngeren Götter. Man kann Anhänger in Galmair finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("One of the unimportant Younger Gods. You can find followers in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Eine der unwichtigen jüngeren Götter. Man kann Anhänger in Cadomyr finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("One of the Elder Gods, she is also known as the Goddess of Water. There is a shrine dedicated to her in a cave on the Island of Water.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Eine der alten Götter. Sie ist auch als Göttin des Wassers bekannt. Es gibt ihr zu Ehren einen Schrein in einer Höhle auf der Insel des Wassers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("One of the Elder Gods, she is also known as the Goddess of Earth. There is a shrine dedicated to him on the Island of Earth.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Eine der alten Götter. Sie ist auch als Göttin der Erde bekannt. Es gibt einen Schrein der ihr geweiht ist auf der Insel der Erde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("One of the unimportant Younger Gods. You can find followers in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Eine der unwichtigen jüngeren Götter. Man kann Anhänger in Cadomyr finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Hmm...ask someone else if you want know about it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Hmm...fragt jemand anderen bezüglich dieses Ortes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Hmm...you want some information? But what about?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Hmm...und ihr wünscht nach Information? Aber welche?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elesil")
talkEntry:addTrigger("Daelwon")
talkEntry:addResponse("Yes, that is my name. What do you want information about?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elesil")
talkEntry:addTrigger("Daelwon")
talkEntry:addResponse("Ja, das ist mein Name. Worüber wollt ihr Information?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Willkommen in Runewick!", "Welcome to Runewick!")
talkingNPC:addCycleText("Ich bin die Auskunftsgeberin von Runewick. Fragt mich nach Informationen wenn ihr welche wissen wollt.", "I am the informant of Runewick. Ask me for information if you want some.")
talkingNPC:addCycleText("Wer etwas über die Orten hier wissen will, soll mich nach diesen Orten fragen.", "If you want to know something about the locations here, just ask me about these locations.")
talkingNPC:addCycleText("Wer etwas über die Gebäude hier wissen will, soll mich nach diesen Gebäuden fragen.", "If you want to know something about the buildings here, just ask me about these buildings.")
talkingNPC:addCycleText("Wer etwas über die Geschichte von Runewick wissen will, soll mich nach der Geschichte fragen.", "If you want to know something about the history of Runewick, just ask me about this history.")
talkingNPC:addCycleText("Wer etwas über die Leute hier wissen will, soll mich nach diesen Leuten fragen.", "If you want to know something about the people here, just ask me about these people.")
talkingNPC:addCycleText("Wer etwas über die Götter hier wissen will, soll mich nach diesen Gottheiten fragen.", "If you want to know something about the gods here, just ask me about these gods.")
talkingNPC:addCycleText("Wer etwas über die Ereignisse hier wissen will, soll mich nach diesen Ereignissen fragen.", "If you want to know something about the events here, just ask me about these events.")
talkingNPC:addCycleText("#me gähnt.", "#me yawns.")
talkingNPC:addCycleText("#me blickt herum mit ihren geschlossenen Augen.", "#me seems to look around, but her eyes are closed.")
talkingNPC:addCycleText("#me untersucht ihr Kleid.", "#me examines her dress.")
talkingNPC:addCycleText("#me kämmt ihr Haar.", "#me combs her hair.")
talkingNPC:addCycleText("#me isst einen Apfel.", "#me eats an apple.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(3)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Elesil Daelwon die Auskunftgeberin.", "This NPC is Elesil Daelwon the informant.")
mainNPC:setUseMessage("Ihr seid gut damit beraten mich nicht anzufassen.", "I recommend you do not touch me.")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 835)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 822)
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
