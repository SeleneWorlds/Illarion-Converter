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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Eleanor Fairbanks the Priestess of Oldra. Keywords: Hello, Oldra, Quest, Yewdale, god, favour, sacrifice."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Eleanor Fairbanks die Priesterin von Oldra. Schlüsselwörter: Hallo, Oldra, Quest, Yewdale, Gott, Gunst, Opfergabe."))
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
talkEntry:addResponse("Hiho! Isn't it a lovely day?")
talkEntry:addResponse("Hiho! Welcome to Oldra's Columns.")
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
talkEntry:addResponse("Hiho! Ist es nicht ein schöner Tag?")
talkEntry:addResponse("Hiho! Willkommen an Oldras Säule.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho! Isn't it a lovely day?")
talkEntry:addResponse("Hiho! Welcome to Oldra's Columns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho! Ist es nicht ein schöner Tag?")
talkEntry:addResponse("Hiho! Willkommen an Oldras Säule.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell! May Oldra's blessings be upon you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Auf Wiedersehen! Möge Oldras Segen auf euch sein!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Farewell! May Oldra's blessings be upon you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Auf Wiedersehen! Möge Oldras Segen auf euch sein!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I am absolutely wonderful! Thank you for asking!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mir geht es wunderbar! Danke der Nachfrage!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Eleanor Fairbanks. Priestess of Oldra.")
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
talkEntry:addResponse("Ich bin Eleanor Fairbanks. Priesterin von Oldra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] A Good Deed for Oldra"))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(514, "=", 1))
talkEntry:addResponse("Oh! I do have something you could help me with. It seems my wooden spoon has seen better days. Could you go visit the market place in Runewick and get me a new one? Here, take these coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Ein Gute Tat für Oldra"))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(514, "=", 1))
talkEntry:addResponse("Oh! Ich habe etwas wobei du mir helfen kannst. Mein Kochlöffel hat schon bessere Tage gesehen. Kannst du den Marktplatz in Runewick besuchen und mir einen neuen bringen? Hier, nimm diese Münzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] A Good Deed for Oldra"))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(514, "=", 1))
talkEntry:addResponse("Oh! I do have something you could help me with. It seems my wooden spoon has seen better days. Could you go visit the market place in Runewick and get me a new one? Here, take these coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Ein Gute Tat für Oldra"))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(514, "=", 1))
talkEntry:addResponse("Oh! Ich habe etwas wobei du mir helfen kannst. Mein Kochlöffel hat schon bessere Tage gesehen. Kannst du den Marktplatz in Runewick besuchen und mir einen neuen bringen? Hier, nimm diese Münzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 1))
talkEntry:addCondition(condition_item(227, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Have you gotten me that spoon yet?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 1))
talkEntry:addCondition(condition_item(227, "all", "<", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Hast du mir den Kochlöffel mitgebracht?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 1))
talkEntry:addCondition(condition_item(227, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest Solved] You are awarded a wooden spoon."))
talkEntry:addConsequence(consequence_deleteitem(227, 1, nil))
talkEntry:addConsequence(consequence_item(227, 1, 566, nil))
talkEntry:addConsequence(consequence_quest(514, "=", 2))
talkEntry:addResponse("Thank you! Now I can get this stew started! Here, why don't you take my old one. It may yet still have some use left in it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 1))
talkEntry:addCondition(condition_item(227, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst einen Kochlöffel."))
talkEntry:addConsequence(consequence_deleteitem(227, 1, nil))
talkEntry:addConsequence(consequence_item(227, 1, 566, nil))
talkEntry:addConsequence(consequence_quest(514, "=", 2))
talkEntry:addResponse("Danke! Jetzt kann ich den Eintopf machen! Hier, nimm meinen alten Kochlöffel. Er könnte noch von Nutzen sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] A Good Deed for Oldra II"))
talkEntry:addConsequence(consequence_quest(514, "=", 3))
talkEntry:addResponse("It seems I may have misread my recipe and did not buy enough cabbages the other day. Would you be so kind as to pick up the remaining twenty five for me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Ein Gute Tat für Oldra II"))
talkEntry:addConsequence(consequence_quest(514, "=", 3))
talkEntry:addResponse("Anscheinend habe ich mein Rezept falsch gelesen und nicht genug Kohl gekauft als ich auf dem Markt war. Könnt ihr mir noch fünfundzwanzig Kohlköpfe bringen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] A Good Deed for Oldra II"))
talkEntry:addConsequence(consequence_quest(514, "=", 3))
talkEntry:addResponse("It seems I may have misread my recipe and did not buy enough cabbages the other day. Would you be so kind as to pick up the remaining twenty five for me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Ein Gute Tat für Oldra II"))
talkEntry:addConsequence(consequence_quest(514, "=", 3))
talkEntry:addResponse("Anscheinend habe ich mein Rezept falsch gelesen und nicht genug Kohl gekauft als ich auf dem Markt war. Könnt ihr mir noch fünfundzwanzig Kohlköpfe bringen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 3))
talkEntry:addCondition(condition_item(290, "all", "<", 25, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("The stew is almost ready, I am just waiting for those 25 cabbages.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 3))
talkEntry:addCondition(condition_item(290, "all", "<", 25, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Der Eintopf ist fast fertig , ich warte nur auf die 25 Kohlköpfe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 3))
talkEntry:addCondition(condition_item(290, "all", ">", 24, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest Solved] You are rewarded 30 silver coins."))
talkEntry:addConsequence(consequence_deleteitem(290, 25, nil))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(514, "=", 4))
talkEntry:addResponse("Wonderful! Please take these coins for your trouble. Now, if only I could get the fire hot enough to cook over.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 3))
talkEntry:addCondition(condition_item(290, "all", ">", 24, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 30 Silberstücke."))
talkEntry:addConsequence(consequence_deleteitem(290, 25, nil))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(514, "=", 4))
talkEntry:addResponse("Wunderbar! Bitte nehmt diese Münzen für deine Mühe. Wenn ich nur genug Holz für das Feuer hätte um weiter zu kochen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] A Good Deed for Oldra III"))
talkEntry:addConsequence(consequence_quest(514, "=", 5))
talkEntry:addConsequence(consequence_item(74, 1, 566, nil))
talkEntry:addResponse("I forgot to stock up on firewood yesterday, so I am having trouble getting the fire hot enough to cook over. Could you take that hatchet over there and split a few logs for me? Twenty naldor wood logs should suffice.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Ein Gute Tat für Oldra III"))
talkEntry:addConsequence(consequence_quest(514, "=", 5))
talkEntry:addConsequence(consequence_item(74, 1, 566, nil))
talkEntry:addResponse("Ich habe gestern vergessen Brennholz zu besorgen. So kann ich das Feuer nicht heiß genug halten um zu kochen. Könnt ihr das  Beil dort nehmen und Brennholz für mich holen? Zwanzig Scheite Naldorholz sollten genügen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] A Good Deed for Oldra III"))
talkEntry:addConsequence(consequence_quest(514, "=", 5))
talkEntry:addConsequence(consequence_item(74, 1, 566, nil))
talkEntry:addResponse("I forgot to stock up on firewood yesterday, so I am having trouble getting the fire hot enough to cook over. Could you take that hatchet over there and split a few logs for me? Twenty naldor wood logs should suffice.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Ein Gute Tat für Oldra III"))
talkEntry:addConsequence(consequence_quest(514, "=", 5))
talkEntry:addConsequence(consequence_item(74, 1, 566, nil))
talkEntry:addResponse("Ich habe gestern vergessen Brennholz zu besorgen. So kann ich das Feuer nicht heiß genug halten um zu kochen. Könnt ihr das  Beil dort nehmen und Brennholz für mich holen? Zwanzig Scheite Naldorholz sollten genügen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 5))
talkEntry:addCondition(condition_item(544, "all", "<", 20, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("How is it coming with the firewood? Have you gotten me twenty logs of naldor wood yet? The coals are threatening to go out.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 5))
talkEntry:addCondition(condition_item(544, "all", "<", 20, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Hast du das Brennholz? Hast du die zwanzig Scheite Naldorholz besorgt? Die Kohle wird langsam kalt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 5))
talkEntry:addCondition(condition_item(544, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest Solved] You are rewarded 20 silver coins and a magical obsidian."))
talkEntry:addConsequence(consequence_deleteitem(544, 20, nil))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_item(3524, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(514, "=", 6))
talkEntry:addResponse("There we go. Nice and hot. Oh! I did find this magic gem while trying to keep the coals hot. I have no idea how that got in there. Why don't you take it and have a few coins for your work! While that is cooking, could you help me with something else?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 5))
talkEntry:addCondition(condition_item(544, "all", ">", 19, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke und ein magischen Obsidian."))
talkEntry:addConsequence(consequence_deleteitem(544, 20, nil))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_item(3524, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(514, "=", 6))
talkEntry:addResponse("Geht doch. Schön und heiß. Oh! Ich fand diesen magischen Edelstein beim Versuch die Kohlen heiß zu halten. Warum nimmst du ihn nicht, und noch ein paar Münzen für deine Arbeit. Ach und während das hier kocht, kannst du mir mit etwas Anderem helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] A Good Deed for Oldra IV"))
talkEntry:addConsequence(consequence_quest(514, "=", 7))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addResponse("I don't know what happened, but I seem to be short on bowls. It would be much appreciated if you could get ten more for me. Here are a few coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Ein Gute Tat für Oldra IV"))
talkEntry:addConsequence(consequence_quest(514, "=", 7))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addResponse("Ich weiß nicht, was passiert ist, aber ich scheine zu wenig Schüsseln zu haben. Könntest du mir zehn Stück holen? Hier, nimm diese Münzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] A Good Deed for Oldra IV"))
talkEntry:addConsequence(consequence_quest(514, "=", 7))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addResponse("I don't know what happened, but I seem to be short on soup bowls. It would be much appreciated if you could get ten more for me. Here are a few coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Ein Gute Tat für Oldra IV"))
talkEntry:addConsequence(consequence_quest(514, "=", 7))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addResponse("Ich weiß nicht, was passiert ist, aber ich scheine zu wenig Schüsseln zu haben. Könntest du mir zehn Stück holen? Hier, nimm diese Münzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 7))
talkEntry:addCondition(condition_item(2935, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Have you had any luck obtaining ten bowls for me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 7))
talkEntry:addCondition(condition_item(2935, "all", "<", 10, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Hast du Glück gehabt und zehn Schüsseln für mich gefunden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 7))
talkEntry:addCondition(condition_item(2935, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest Solved] You have been rewarded with a mulligan stew."))
talkEntry:addConsequence(consequence_deleteitem(2935, 10, nil))
talkEntry:addConsequence(consequence_item(2276, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(514, "=", 8))
talkEntry:addResponse("Oh, thank you! I can finish passing out the last of the stew. You must be hungry after all that work. Here, have a bowl of stew and may Oldra bless you for your help.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 7))
talkEntry:addCondition(condition_item(2935, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst einen Eintopf."))
talkEntry:addConsequence(consequence_deleteitem(2935, 10, nil))
talkEntry:addConsequence(consequence_item(2276, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(514, "=", 8))
talkEntry:addResponse("Oh! Danke! Jetzt kann ich den Eintopf fertig kochen. Du musst hungrig sein, nach all dieser Arbeit. Hier, eine Schüssel mit Eintopf und möge Oldra dich segnen für deine Hilfe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I don't have any other task for you. Thank you for all your help. I wouldn't have finished that stew without you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 8))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe keine anderen Aufgaben für dich. Danke für die ganze Hilfe. Ich hätte diesen Eintopf ohne dich nicht fertiggebracht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 8))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I don't have any other task for you. Thank you for all your help. I wouldn't have finished that stew without you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(514, "=", 8))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe keine anderen Aufgaben für dich. Danke für die ganze Hilfe. Ich hätte diesen Eintopf ohne dich nicht fertiggebracht.")
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
talkEntry:addResponse("I am not a merchant. Look for them in the marketplace in Runewick.")
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
talkEntry:addResponse("Ich bin kein Kaufmann. Such auf dem Markt in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a priestess of Oldra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin eine Priesterin der Oldra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a priestess of Oldra, but I would hardly call it a job.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin eine Priesterin der Oldra, aber ich würde es nicht Arbeit nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Yewdale")
talkEntry:addResponse("We are a small halfling farm town just west of Runewick. Those mages would starve without us.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Yewdale")
talkEntry:addResponse("Wir sind ein kleines Halblingsdorf westlich von Runewick. Diese Magier würden ohne uns verhungern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I honour the younger gods, but I do Oldra's work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Ich ehre die Jüngeren Götter, aber ich mache Oldras Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("religion")
talkEntry:addResponse("I honour the younger gods, but I do Oldra's work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("religion")
talkEntry:addResponse("Ich ehre die Jüngeren Götter, aber ich mache Oldras Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("faith")
talkEntry:addResponse("I honour the younger gods, but I do Oldra's work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Glaube")
talkEntry:addResponse("Ich ehre die Jüngeren Götter, aber ich mache Oldras Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("He is the god of wine and festivities! Great feasts have been had in Adron's name. Well, perhaps not quite as bountiful as those for Oldra! You can find Adron altar in the tavern in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Er ist der Gott des Weines und der Feste. Große Feste wurden in Adrons Namen gefeiert. Nun, vielleicht nicht ganz so reichlich wie für Oldra! Du kannst einen Adron-Altar in der Taverne in Runewick finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("One of the elder gods. Brágon is the god of fire and of warriors. He is a noble and just god. Those who used to follow him now follow Malachín.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Brágon ist einer der Alten Götter. Er ist der Gott des Feuers und der Krieger, ein edler und gerechter Gott. Diejenigen, die ihm folgten, folgen nun zumeist Malachín.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Cherga is the goddess of spirits and the underworld. She guides the spirits of the dead to their respective places in the afterlife, or sends them back to finish their work. Her altar is on Pauldron Isle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Cherga ist die Göttin der Geister und der Unterwelt. Sie führt die Geister der Toten zu ihren angestammten Plätzen im Jenseits oder schickt sie zurück, um ihre Taten zu vollenden. Ihr Altar ist auf der Schulterplatteninsel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara is the goddess of wisdom. Her followers spend too much time with their nose in a book and not enough time enjoying the life around them, if you ask me. Elara's altar can be found in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara ist die Göttin der Weisheit. Ihre Anhänger verbringen zu viel Zeit mit ihrer Nase in einem Buch und nicht genug Zeit, das Leben um sie herum zu genießen, wenn Sie mich fragen. Elaras Altar findet man in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("He is the elder god of the spirit. Eldan likes his peace and quiet. Him and his few followers would rather be studying in solitude than be around a city. Those followers who haven't converted to following Elara at least.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Eldan ist der Alte Gott des Geistes. Eldan mag seine Ruhe und Frieden. Er und seine wenigen Anhänger würden lieber in Einsamkeit studieren als in einer Stadt zu sein. Also, jene Anhänger, die nicht zu Elara konvertiert haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("She is the Elder Goddess of air. Findari is a chaotic spirit at heart. Her winds bring cool breezes and fierce storms. Without wind boats wouldn't sail and without rain, crops wouldn't grow. Her followers now follow Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Sie ist die Alte Göttin der Luft. Findari ist im Herzen ein chaotischer Geist. Ihre Winde bringen kühle Brisen und heftige Stürme. Ohne Wind würden Boote nicht segeln und ohne Regen würden die Pflanzen nicht wachsen. Ihre Anhänger folgen nun Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("God of business and fine craftsmanship. Irmorom is followed by those who care more for coin than for others. You can find his altar in the mountainous region of Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom ist der Gott des Handels und des Handwerks. Irmorom folgen jene, die sich mehr für Münzen interessieren als für Andere. Du kannst seinen Altar in der Bergregion Galmairs finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Malachín is the god of the hunt and of battle. His followers are obsessed with war and order. Malachín's altar is found above the mine in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Malachín ist der Gott der Jagd und der Schlachten. Seine Anhänger sind von Krieg und Ordnung besessen. Malachíns Altar ist über der Mine in Cadomyr zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me shrinks back in fear as the name is spoke. 'Do not speak that name here. He might hear you.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me zuckt ängstlich zurück, als der Name gesprochen wird. 'Sprich hier nicht diesen Namen. Er könnte dich hören.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("I wouldn't speak his name too loudly. He is the god of chaos. He might hear you and decide to pay you a visit. He is a god of fortune. Or is it misfortune? His altar is in the Galmair underground.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Ich würde seinen Namen nicht zu laut sprechen. Er ist der Gott des Chaos. Er könnte dich hören und beschließen, dich zu besuchen. Er ist ein Glücksgott. Oder ist es Unglück? Sein Altar ist im Untergrund Galmairs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("She is the goddess of life and fertility. Without her blessing, nothing would grow.")
talkEntry:addResponse("Oldra is prayed to by farmers, peasants, and cooks to bless their crops and tables. Midwives and healers seek her to help mend others. She guides birthing and raising of children. And she is known as the All-mother to halflings.")
talkEntry:addResponse("Oldra teaches us that if you give a man bread he will eat for a day, but if you teach him how to sow seeds and bake bread, he will feed a village.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Sie ist die Göttin des Lebens und der Fruchtbarkeit. Ohne ihren Segen würde nichts wachsen.")
talkEntry:addResponse("Landwirte, Bauern und Köche beten zu Oldra damit sie ihre Ernte und Tische segnet. Die Hebamme und Heiler suchen ihre Hilfe um andere zu heilen. Sie leitet Geburten und die Erziehung von Kindern. Sie ist bekannt als die große Mutter der Halblinge.")
talkEntry:addResponse("Oldra lehrt uns, wenn du einem Mann ein Brot gibst, hat er einen Tag zu essen. Aber wenn du einem Mann Samen gibst und ihn lehrst Brot zu backen, wird er ein ganzes Dorf ernähren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan is the god of thieves and shadows. His followers seem friendly, but really they are attempting to con you out of your coins. He does take pity on orphans and the poor. His altar is hidden deep in Galmair's underground.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan ist der Gott der Diebe und der Schatten. Seine Anhänger scheinen freundlich zu sein, aber in Wirklichkeit versuchen sie, an deine Münzen zu kommen. Er hat Mitleid mit Waisen und den Armen. Sein Altar ist tief im Untergrund Galmairs verborgen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Sirani is the goddess of love and beauty. She blesses marriages and enjoys fine festivals. Her followers may seem pretty, but are compassionate and skilled in healing. Her altar in an oasis near Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Sirani ist die Göttin der Liebe und der Freude. Sie segnet Ehen und genießt feine Feste. Ihre Anhänger mögen schön sein, sind aber mitfühlend und geschickt in der Heilung. Ihr Altar ist in einer Oase bei Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("She is the Elder Goddess of water. Mother to the lizardfolk who still faithfully follow her. Tanora is the one Elder God who still walks among us. She is prayed to by sailors for safe voyages.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Tanora ist die Alte Göttin des Wassers. Sie ist die Mutter der Echsenmenschen, die ihr immer noch treu folgen. Tanora ist die Alte Göttin, der immer noch unter uns wandelt. Sie wird von Seeleuten für sichere Reisen angebetet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Elder Goddess of the earth and life. She is wise and motherly. Her followers are rare, but tend to be old elves and wise druids. All others now follow Oldra in her place.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara ist die Alte Göttin der Erde und des Lebens. Sie ist klug und mütterlich. Ihre Anhänger sind selten und meist alte Elfen und weise Druiden. Alle anderen folgen nun Oldra an ihrer Stelle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("God of friendship and loyalty. His followers are selfless in battle and are true to their word. He is as much of a god of war as he is of diplomacy and law. Zhambra's altar can be found close to the palace in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra ist der Gott der Freundschaft und des Vertrauens. Seine Anhänger sind selbstlos im Kampf und sind ihrem Wort treu. Er ist Gott des Krieges, wie auch der Diplomatie und des Gesetzes. Der Altar Zhambras befindet sich in der Nähe des Palastes in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(411, "=>", function(number) return (250); end))
talkEntry:addResponse("Oldra is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(411, "=>", function(number) return (200); end))
talkEntry:addResponse("Oldra is delighted with you and your righteous life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(411, "=>", function(number) return (150); end))
talkEntry:addResponse("Oldra is charmed by your good deeds.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(411, "=>", function(number) return (100); end))
talkEntry:addResponse("Oldra is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(411, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 9))
talkEntry:addResponse("Oldra is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(411, "=>", function(number) return (50); end))
talkEntry:addResponse("Oldra is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(411, ">", function(number) return (-50); end))
talkEntry:addResponse("Oldra is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(411, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 9))
talkEntry:addResponse("Oldra is displeased with you, if you go on this way you will not be able to call yourself devoted to Oldra anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(411, ">", function(number) return (-100); end))
talkEntry:addResponse("Oldra is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(411, ">", function(number) return (-150); end))
talkEntry:addResponse("Oldra is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(411, ">", function(number) return (-200); end))
talkEntry:addResponse("Oldra is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(411, ">", function(number) return (-250); end))
talkEntry:addResponse("Oldra is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addResponse("Oldra is wrathful about you. Can't you feel it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(411, "=>", function(number) return (250); end))
talkEntry:addResponse("Oldra ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(411, "=>", function(number) return (200); end))
talkEntry:addResponse("Oldra ist außerordentlich zufrieden mit dir und deiner vorbildlichen Lebensweise.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(411, "=>", function(number) return (150); end))
talkEntry:addResponse("Oldra ist begeistert von deinen guten Taten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(411, "=>", function(number) return (100); end))
talkEntry:addResponse("Oldra ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(411, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 9))
talkEntry:addResponse("Oldra ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(411, "=>", function(number) return (50); end))
talkEntry:addResponse("Oldra ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(411, ">", function(number) return (-50); end))
talkEntry:addResponse("Oldra ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(411, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 9))
talkEntry:addResponse("Oldra ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Oldras zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(411, ">", function(number) return (-100); end))
talkEntry:addResponse("Oldra ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(411, ">", function(number) return (-150); end))
talkEntry:addResponse("Oldra ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(411, ">", function(number) return (-200); end))
talkEntry:addResponse("Oldra ist wütend auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(411, ">", function(number) return (-250); end))
talkEntry:addResponse("Oldra ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addResponse("Oldra ist rasend vor Zorn auf dich. Kannst du es nicht fühlen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sacrifice")
talkEntry:addResponse("Nothing can symbolize life better then a good meal does.")
talkEntry:addResponse("Farmers are used to sacrifice part of their crops to show gratitude to Oldra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("opfer")
talkEntry:addTrigger("opfergabe")
talkEntry:addResponse("Nichts kann das Leben besser symbolisieren als eine gute Mahlzeit.")
talkEntry:addResponse("Bauern sind daran gewöhnt einen Teil ihrer Ernte an Oldra zu opfern, um ihre Dankbarkeit zu beweisen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("He runs the mages academy in Runewick. A bit of a recluse, that one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Er führt die Magierakademie in Runewick. Er ist ein bisschen ein Einsiedler.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("He runs the mages academy in Runewick. A bit of a recluse, that one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Er führt die Magierakademie in Runewick. Er ist ein bisschen ein Einsiedler.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick and the mages academy is just east of here. Don't be surprised if you hear explosions in the middle of the night.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick und die Magierakademie liegt genau östlich von hier. Sei nicht überrascht, wenn du mitten in der Nacht Explosionen hörst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Greedy dwarf, that one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Dieser gierige Zwerg!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("It is a bit cold for me. Although many of its citizens are crafters, and there are a good number of farmers and fine cooks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Es ist ein bisschen zu kalt für mich. Obwohl viele Bürger Handwerker sind, gibt es einige Landwirte und und gute Köche.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("It is said that she is blessed by the gods. Many years ago, when she was young, a plague struck Cadomyr. She was one of the few to survive.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Es wird gesagt, dass sie von den Göttern gesegnet ist. Vor vielen Jahren, als sie jung war, befiel Cadomyr eine Seuche. Sie war eine der Wenigen, welche überlebten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("It is said that she is blessed by the gods. Many years ago, when she was young, a plague struck Cadomyr. She was one of the few to survive.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Es wird gesagt, dass sie von den Göttern gesegnet ist. Vor vielen Jahren, als sie jung war, befiel Cadomyr eine Seuche. Sie war eine der Wenigen, welche überlebten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I find it to be a tad unpleasant. It is hot and nothing grows in the sandy soil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ich find es ungemütlich dort. Viel zu heiß und in dem Sand wächst nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Ohne Oldras Segen würde es kein Leben geben. Die Welt wäre öde  wie die Kantabi Wüste.", "There would be no life without Oldra's blessing,  the world would be as barren as the Kantabi Desert")
talkingNPC:addCycleText("Geld mag das Brot kaufen was deinen Magen füllt. Aber das Brot mit Anderen zu teilen wird deine Seele nähren.", "Money may buy the bread to feed your stomach, but sharing it with others will feed your soul.")
talkingNPC:addCycleText("Oldra möge dich in der Ewigkeit begrüßen, wo du in ihrem Garten mit alten und neuen Freunden schmausen wirst.", "May Oldra greet you in eternity, where you may feast in her garden with friends new and old!")
talkingNPC:addCycleText("Mögen deine Felder fruchtbar sein, dein Essen reichlich und deine Kinder stark werden.", "May your fields be fertile, your meals be bountiful, and your children grow strong")
talkingNPC:addCycleText("Vor allem sollte das Leben einfach und demütig sein. Eine reiche Ernte gefolgt von einem hausgemachten Essen mit Freunden und der Familie ist ein Segen.", "Above all, life should be simple and humble. A bountiful harvest followed by a home cooked meal with friends and family is a blessing")
talkingNPC:addCycleText("#me zählt Samen in einer kleinen Tasche.", "#me counts out seeds into a small pouch.")
talkingNPC:addCycleText("#me summt eine fröhliche Melodie, als sie einen dampfenden Kessel mit Suppe rührt.", "#me hums a merry tune as she stirs a steaming caldron of soup.")
talkingNPC:addCycleText("#me zieht Gemüse aus einem Leinensack und schneidet es mit einem scharfen Messer.", "#me pulls vegetables out of a canvas sack and chops them with a sharp knife.")
talkingNPC:addCycleText("#me mischt Mehl und Wasser zusammen in einer Schüssel. Dann zieht sie den Teig aus und formt ihn zu einem Laib, damit er später gebacken werden kann.", "#me mixes flour and water together in a bowl. She then pulls the dough out and form it into a loaf to be baked later.")
talkingNPC:addCycleText("#me legt Brote in einem Weidenkorb.", "#me places loaves of bread in a wicker basket.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(6)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Eleanor Fairbanks die Priesterin von Oldra.", "This NPC is Eleanor Fairbanks the Priestess of Oldra.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 831)
mainNPC:setEquipment(3, 817)
mainNPC:setEquipment(11, 55)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 842)
mainNPC:setEquipment(10, 1500)
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
