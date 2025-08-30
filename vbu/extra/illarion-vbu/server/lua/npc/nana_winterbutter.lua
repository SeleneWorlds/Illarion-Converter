local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_skill = require("npc.base.condition.skill")
local condition_language = require("npc.base.condition.language")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_skill = require("npc.base.consequence.skill")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the cook Nana Winterbutter. Keywords: Hello, quest, bowl, cook, cooking, berries."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist die Köchin Nana Winterbutter. Schlüsselwörter: Hallo, Quest, Schüssel, Koch, Kochen, Beeren."))
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
talkEntry:addResponse("Greetings! Maybe you could help me with a recipe?")
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
talkEntry:addResponse("Seid gegrüßt! Vielleicht könntet Ihr mir bei einem Rezept helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetings! Maybe you could help me with a recipe?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Seid gegrüßt! Vielleicht könntet Ihr mir bei einem Rezept helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell!")
talkEntry:addResponse("Oldra's blessing!")
talkEntry:addResponse("Come back soon!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Auf Wiedersehen!")
talkEntry:addResponse("Oldras Segen!")
talkEntry:addResponse("Kommt bald wieder!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Farewell!")
talkEntry:addResponse("Oldra's blessing!")
talkEntry:addResponse("Come back soon!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Auf Wiedersehen!")
talkEntry:addResponse("Oldras Segen!")
talkEntry:addResponse("Kommt bald wieder!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I'm fine.")
talkEntry:addResponse("Thank you very much!")
talkEntry:addResponse("Well, I have this recipe in mind, which I would like to try.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Mir geht es gut.")
talkEntry:addResponse("Vielen Dank!")
talkEntry:addResponse("Nun, ich habe dieses Rezept im Kopf, welches ich gerne ausprobieren würde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Nana Winterbutter.")
talkEntry:addResponse("I'm a cook as you might have noticed, and a good one I might add")
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
talkEntry:addResponse("Ich bin Nana Winterbutter.")
talkEntry:addResponse("Ich bin eine Köchin, wie Ihr vielleicht bereits bemerkt habt. Und eine gute, wenn ich das hinzufügen darf.")
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
talkEntry:addCondition(condition_quest(70, "=", 0))
talkEntry:addTrigger("recipe")
talkEntry:addResponse("I have this special recipe in mind. I don't want to reveal too much about it but I would be grateful if you could help me with a quest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 0))
talkEntry:addTrigger("Rezept")
talkEntry:addResponse("Ich habe dieses besondere Rezept im Kopf. Ich möchte nicht zu viel darüber verraten, aber ich wäre dankbar, wenn Ihr mir bei einer Aufgabe helfen würdet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 0))
talkEntry:addTrigger("bowl")
talkEntry:addResponse("I'm preparing some dough but it won't last. Maybe you can help me with this quest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 0))
talkEntry:addTrigger("Schüssel")
talkEntry:addResponse("Ich rühre etwas Teig an aber der wird nicht reichen. Vielleicht könnt Ihr mir ja bei dieser Aufgabe helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Yewdale I"))
talkEntry:addConsequence(consequence_item(271, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 1))
talkEntry:addResponse("For my recipe, I need wheat. Please take this scythe and get me ten bundles of grain. I will then hand pick the grain from the ears myself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eibenthal I"))
talkEntry:addConsequence(consequence_item(271, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 1))
talkEntry:addResponse("Für mein Rezept brauche ich Weizen. Bitte nehmt diese Sense und bringt mir zehn Getreidebündel. Ich werde dann selbst die Samen von Hand aus den Ähren lesen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Yewdale I"))
talkEntry:addConsequence(consequence_item(271, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 1))
talkEntry:addResponse("For my recipe, I need wheat. Please take this scythe and get me ten bundles of grain. I will then hand pick the grain from the ears myself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eibenthal I"))
talkEntry:addConsequence(consequence_item(271, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 1))
talkEntry:addResponse("Für mein Rezept brauche ich Weizen. Bitte nehmt diese Sense und bringt mir zehn Getreidebündel. Ich werde dann selbst die Samen von Hand aus den Ähren lesen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins and your farming skill increases."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 2))
talkEntry:addResponse("Yes, this should give plenty of fine grain. Thank you very much! Please take these silver coins as a sign of my gratitude.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 2))
talkEntry:addResponse("Yes, this should give plenty of fine grain. Thank you very much! Please take these silver coins as a sign of my gratitude.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünf Silberstücke und deine Landwirtschaftsfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 2))
talkEntry:addResponse("Ja, das sollte ausreichend feines Getreide sein. Vielen herzlichen Dank! Bitte nehmt diese Kupfermünzen als Zeichen meiner Dankbarkeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünf Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 2))
talkEntry:addResponse("Ja, das sollte ausreichend feines Getreide sein. Vielen herzlichen Dank! Bitte nehmt diese Silbermünzen als Zeichen meiner Dankbarkeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins and your farming skill increases."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 2))
talkEntry:addResponse("Yes, this should give plenty of fine grain. Thank you very much! Please take these silver coins as a sign of my gratitude.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 2))
talkEntry:addResponse("Yes, this should give plenty of fine grain. Thank you very much! Please take these silver coins as a sign of my gratitude.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünf Silberstücke und deine Landwirtschaftsfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 2))
talkEntry:addResponse("Ja, das sollte ausreichend feines Getreide sein. Vielen herzlichen Dank! Bitte nehmt diese Silbermünzen als Zeichen meiner Dankbarkeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünf Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 2))
talkEntry:addResponse("Ja, das sollte ausreichend feines Getreide sein. Vielen herzlichen Dank! Bitte nehmt diese Kupfermünzen als Zeichen meiner Dankbarkeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addTrigger("recipe")
talkEntry:addTrigger("bowl")
talkEntry:addResponse("It is very kind of you to get me ten bundles of grain. Please return to me and tell me when you are finished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addTrigger("Rezept")
talkEntry:addTrigger("Schüssel")
talkEntry:addResponse("Es ist sehr nett von Euch mir zehn Getreidebündel zu besorgen. Kehrt bitte zu mir zurück und sagt mir, wenn Ihr fertig seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("It is very kind of you to get me ten bundles of grain. Please return to me and tell me when you are finished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Es ist sehr nett von Euch mir zehn Getreidebündel zu besorgen. Kehrt bitte zu mir zurück und sagt mir, wenn Ihr fertig seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("It is very kind of you to get me ten bundles of grain. Please return to me and tell me when you are finished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Es ist sehr nett von Euch mir zehn Getreidebündel zu besorgen. Kehrt bitte zu mir zurück und sagt mir, wenn Ihr fertig seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 2))
talkEntry:addTrigger("recipe")
talkEntry:addTrigger("bowl")
talkEntry:addResponse("Well, since you helped me before I might even tell you about the recipe. I am thinking about a fish in a crust with tomato sauce, but I don't have enough tomatoes and might need your help with this task again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 2))
talkEntry:addTrigger("Rezept")
talkEntry:addTrigger("Schüssel")
talkEntry:addResponse("Nun, da Ihr mir schon zuvor geholfen habt, kann ich Euch auch etwas über das Rezept sagen. Ich denke da an Fisch im Teigmantel mit Tomatensoße. Aber ich habe nicht genug Tomaten und könnte erneut Eure Hilfe bei dieser Aufgabe gebrauchen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Yewdale II"))
talkEntry:addConsequence(consequence_quest(70, "=", 3))
talkEntry:addResponse("I'd like to cook a fish in a crust with tomato sauce. I need twenty tomatoes for the sauce though. Care to help me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eibenthal II"))
talkEntry:addConsequence(consequence_quest(70, "=", 3))
talkEntry:addResponse("I möchte Fisch im Teigmantel mit Tomatensoße kochen. Ich brauchen zwanzig Tomaten für die Soße. Könnt ihr mir helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Yewdale II"))
talkEntry:addConsequence(consequence_quest(70, "=", 3))
talkEntry:addResponse("I'd like to cook a fish in a crust with tomato sauce. I need twenty tomatoes for the sauce though. Care to help me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eibenthal II"))
talkEntry:addConsequence(consequence_quest(70, "=", 3))
talkEntry:addResponse("I möchte Fisch im Teigmantel mit Tomatensoße kochen. Ich brauchen zwanzig Tomaten für die Soße. Könnt ihr mir helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 3))
talkEntry:addCondition(condition_item(200, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and your farming skill increases."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(200, 20, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 4))
talkEntry:addResponse("Great! Twenty ripe tomatoes. That will make a very fine sauce indeed. Please take these silver coins, but my recipe is still not finished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 3))
talkEntry:addCondition(condition_item(200, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(200, 20, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 4))
talkEntry:addResponse("Great! Twenty ripe tomatoes. That will make a very fine sauce indeed. Please take these silver coins, but my recipe is still not finished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 3))
talkEntry:addCondition(condition_item(200, "all", ">", 19, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst zehn Silberstücke und deine Landwirtschaftsfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(200, 20, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 4))
talkEntry:addResponse("Großartig! Zwanzig reife Tomaten. Das wird in der Tat eine feine Soße ergeben. Bitte nehmt diese Kupfermünzen. Aber mein Gericht ist noch nicht fertig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 3))
talkEntry:addCondition(condition_item(200, "all", ">", 19, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst zehn Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(200, 20, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 4))
talkEntry:addResponse("Großartig! Zwanzig reife Tomaten. Das wird in der Tat eine feine Soße ergeben. Bitte nehmt diese Kupfermünzen. Aber mein Gericht ist noch nicht fertig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 3))
talkEntry:addCondition(condition_item(200, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and your farming skill increases."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(200, 20, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 4))
talkEntry:addResponse("Great! Twenty ripe tomatoes. That will make a very fine sauce indeed. Please take these silver coins, but my recipe is still not finished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 3))
talkEntry:addCondition(condition_item(200, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(200, 20, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 4))
talkEntry:addResponse("Great! Twenty ripe tomatoes. That will make a very fine sauce indeed. Please take these silver coins, but my recipe is still not finished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 3))
talkEntry:addCondition(condition_item(200, "all", ">", 19, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst zehn Silberstücke und deine Landwirtschaftsfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(200, 20, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 4))
talkEntry:addResponse("Großartig! Zwanzig reife Tomaten. Das wird in der Tat eine feine Soße ergeben. Bitte nehmt diese Kupfermünzen. Aber mein Gericht ist noch nicht fertig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 3))
talkEntry:addCondition(condition_item(200, "all", ">", 19, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst zehn Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(200, 20, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 4))
talkEntry:addResponse("Großartig! Zwanzig reife Tomaten. Das wird in der Tat eine feine Soße ergeben. Bitte nehmt diese Kupfermünzen. Aber mein Gericht ist noch nicht fertig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Please bring me twenty tomatoes for my sauce.")
talkEntry:addResponse("Would you please bring me twenty tomatoes? I thank you very much!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bitte bringt mir zwanzig Tomaten für meine Soße.")
talkEntry:addResponse("Würdet Ihr mir bitte zwanzig Tomaten bringen? Ich danke Euch vielmals!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("recipe")
talkEntry:addTrigger("bowl")
talkEntry:addResponse("Please bring me twenty tomatoes for my sauce.")
talkEntry:addResponse("Would you please bring me twenty tomatoes? I thank you very much!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Rezept")
talkEntry:addTrigger("Schüssel")
talkEntry:addResponse("Bitte bringt mir zwanzig Tomaten für meine Soße.")
talkEntry:addResponse("Würdet Ihr mir bitte zwanzig Tomaten bringen? Ich danke Euch vielmals!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 4))
talkEntry:addTrigger("recipe")
talkEntry:addTrigger("bowl")
talkEntry:addResponse("You've helped with my recipe quite a lot so far. Please, don't think that I'm ungrateful, but I might have another task for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 4))
talkEntry:addTrigger("Rezept")
talkEntry:addTrigger("Schüssel")
talkEntry:addResponse("Ihr habt mir schon sehr bei meinem Rezept geholfen. Bitte, denkt nicht, dass ich undankbar bin, aber ich hätte da noch eine Aufgabe für Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Yewdale III"))
talkEntry:addConsequence(consequence_quest(70, "=", 5))
talkEntry:addResponse("I think some onions would spice up the sauce. See if you can find at least five onions, please.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eibenthal III"))
talkEntry:addConsequence(consequence_quest(70, "=", 5))
talkEntry:addResponse("Ich denke, ein paar Zwiebeln würden die Soße etwas aufpeppen. Versucht bitte, mindestens fünf Zwiebeln zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Yewdale III"))
talkEntry:addConsequence(consequence_quest(70, "=", 5))
talkEntry:addResponse("I think some onions would spice up the sauce. See if you can find at least five onions, please.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eibenthal III"))
talkEntry:addConsequence(consequence_quest(70, "=", 5))
talkEntry:addResponse("Ich denke, ein paar Zwiebeln würden die Soße etwas aufpeppen. Versucht bitte, mindestens fünf Zwiebeln zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 5))
talkEntry:addCondition(condition_item(201, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and your farming skill increases."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(201, 5, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 6))
talkEntry:addResponse("Fantastic! You've really managed to come up with five onions. Here, have some silver coins, but how embarrassing, I have a problem with the recipe now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 5))
talkEntry:addCondition(condition_item(201, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(201, 5, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 6))
talkEntry:addResponse("Fantastic! You've really managed to come up with five onions. Here, have some silver coins, but how embarrassing, I have a problem with the recipe now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 5))
talkEntry:addCondition(condition_item(201, "all", ">", 4, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst zehn Silberstücke und deine Landwirtschaftsfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(201, 5, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 6))
talkEntry:addResponse("Fantastisch! Ihr habt wirklich fünf Zwiebeln auftreiben können. Hier, nehmt ein paar Kupferstücke im Austausch. Aber wie peinlich, ich habe nun ein Problem mit dem Rezept.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 5))
talkEntry:addCondition(condition_item(201, "all", ">", 4, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst zehn Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(201, 5, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 6))
talkEntry:addResponse("Fantastisch! Ihr habt wirklich fünf Zwiebeln auftreiben können. Hier, nehmt ein paar Kupferstücke im Austausch. Aber wie peinlich, ich habe nun ein Problem mit dem Rezept.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 5))
talkEntry:addCondition(condition_item(201, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and your farming skill increases."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(201, 5, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 6))
talkEntry:addResponse("Fantastic! You've really managed to come up with five onions. Here, have some silver coins, but how embarrassing, I have a problem with the recipe now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 5))
talkEntry:addCondition(condition_item(201, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(201, 5, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 6))
talkEntry:addResponse("Fantastic! You've really managed to come up with five onions. Here, have some silver coins, but how embarrassing, I have a problem with the recipe now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 5))
talkEntry:addCondition(condition_item(201, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst zehn Silberstücke und deine Landwirtschaftsfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(201, 5, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 6))
talkEntry:addResponse("Fantastisch! Ihr habt wirklich fünf Zwiebeln auftreiben können. Hier, nehmt ein paar Kupferstücke im Austausch. Aber wie peinlich, ich habe nun ein Problem mit dem Rezept.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 5))
talkEntry:addCondition(condition_item(201, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst zehn Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(201, 5, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 6))
talkEntry:addResponse("Fantastisch! Ihr habt wirklich fünf Zwiebeln auftreiben können. Hier, nehmt ein paar Kupferstücke im Austausch. Aber wie peinlich, ich habe nun ein Problem mit dem Rezept.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I hope you are able to find at least five onions so that I can spice up my sauce.")
talkEntry:addResponse("I know that they are hard to find, but I would need at least five onions.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 5))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich hoffe Ihr könnt mindestens fünf Zwiebeln finden, so dass ich meine Soße etwas aufpeppen kann.")
talkEntry:addResponse("Ich weiß, dass sie schwer zu finden sind, aber ich bräuchte mindestens fünf Zwiebeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 5))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("recipe")
talkEntry:addTrigger("bowl")
talkEntry:addResponse("I hope you are able to find at least five onions so that I can spice up my sauce.")
talkEntry:addResponse("I know that they are hard to find, but I would need at least five onions.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 5))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Rezept")
talkEntry:addTrigger("Schüssel")
talkEntry:addResponse("Ich hoffe Ihr könnt mindestens fünf Zwiebeln finden, so dass ich meine Soße etwas aufpeppen kann.")
talkEntry:addResponse("Ich weiß, dass sie schwer zu finden sind, aber ich bräuchte mindestens fünf Zwiebeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("problem")
talkEntry:addResponse("How embarrassing! I was not careful enough when storing the fish for my recipe and now it is rotten. I hope that you can help me one last time with the task of getting some new fish.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 6))
talkEntry:addTrigger("Problem")
talkEntry:addResponse("Wie peinlich! Ich war bei der Lagerung des Fisch, den ich verwenden will, nicht sorgfältig genug und nun ist er verdorben. Ich hoffe, Ihr helft mir ein letztes Mal bei der Besorgung von neuem Fisch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 6))
talkEntry:addTrigger("recipe")
talkEntry:addTrigger("bowl")
talkEntry:addResponse("How embarrassing! I was not careful enough when storing the fish for my recipe and now it is rotten. I hope that you can help me one last time with the task of getting some new fish.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 6))
talkEntry:addTrigger("Rezept")
talkEntry:addTrigger("Schüssel")
talkEntry:addResponse("Wie peinlich! Ich war bei der Lagerung des Fisch, den ich verwenden will, nicht sorgfältig genug und nun ist er verdorben. Ich hoffe, Ihr helft mir ein letztes Mal bei der Besorgung von neuem Fisch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Yewdale IV"))
talkEntry:addConsequence(consequence_quest(70, "=", 7))
talkEntry:addResponse("I usually buy fish from Zerarisa. I am really sorry, but I always forget what the fish is called. I need ten of those fish again though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eibenthal IV"))
talkEntry:addConsequence(consequence_quest(70, "=", 7))
talkEntry:addResponse("Normalerweise kaufe ich Fisch von Zerarisa. Tut mir wirklich leid, aber ich vergesse immer, wie dieser Fisch heißt. Aber ich bräuchte wieder zehn von diesen Fischen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Yewdale IV"))
talkEntry:addConsequence(consequence_quest(70, "=", 7))
talkEntry:addResponse("I usually buy fish from Zerarisa. I am really sorry, but I always forget what the fish is called. I need ten of those fish again though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eibenthal IV"))
talkEntry:addConsequence(consequence_quest(70, "=", 7))
talkEntry:addResponse("Normalerweise kaufe ich Fisch von Zerarisa. Tut mir wirklich leid, aber ich vergesse immer, wie dieser Fisch heißt. Aber ich bräuchte wieder zehn von diesen Fischen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addCondition(condition_item(355, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins and your farming skill increases."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(355, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 8))
talkEntry:addResponse("Wonderful! Yes, this is exactly the fish I need. Here, this is more than what it is worth in silver. I'm so happy that I have everything for my recipe now. May Oldra bless you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addCondition(condition_item(355, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(355, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 8))
talkEntry:addResponse("Wonderful! Yes, this is exactly the fish I need. Here, this is more than what it is worth in silver. I'm so happy that I have everything for my recipe now. May Oldra bless you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addCondition(condition_item(355, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke und deine Landwirtschaftsfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(355, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 8))
talkEntry:addResponse("Wunderbar! Ja, dies ist genau der Fisch, den ich brauche. Hier, sie sind jedes Kupferstück wert. Ich bin so glücklich, dass ich jetzt alles für meine Rezept habe. Möge Oldra Euch segnen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addCondition(condition_item(355, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(355, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 8))
talkEntry:addResponse("Wunderbar! Ja, dies ist genau der Fisch, den ich brauche. Hier, sie sind jedes Kupferstück wert. Ich bin so glücklich, dass ich jetzt alles für meine Rezept habe. Möge Oldra Euch segnen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addCondition(condition_item(355, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins and your farming skill increases."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(355, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 8))
talkEntry:addResponse("Wonderful! Yes, this is exactly the fish I need. Here, this is more than what it is worth in silver. I'm so happy that I have everything for my recipe now. May Oldra bless you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addCondition(condition_item(355, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(355, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 8))
talkEntry:addResponse("Wonderful! Yes, this is exactly the fish I need. Here, this is more than what it is worth in silver. I'm so happy that I have everything for my recipe now. May Oldra bless you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.farming, "<", 90))
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addCondition(condition_item(355, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke und deine Landwirtschaftsfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.farming, "+", 1))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(355, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 8))
talkEntry:addResponse("Wunderbar! Ja, dies ist genau der Fisch, den ich brauche. Hier, sie sind jedes Kupferstück wert. Ich bin so glücklich, dass ich jetzt alles für meine Rezept habe. Möge Oldra Euch segnen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addCondition(condition_item(355, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(355, 10, nil))
talkEntry:addConsequence(consequence_quest(70, "=", 8))
talkEntry:addResponse("Wunderbar! Ja, dies ist genau der Fisch, den ich brauche. Hier, sie sind jedes Kupferstück wert. Ich bin so glücklich, dass ich jetzt alles für meine Rezept habe. Möge Oldra Euch segnen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zerarisa")
talkEntry:addResponse("Oh, Zerarisa, she is one of the lizard people who live in Galmair at Da Fishin Spot. She comes to Runewick once a month to sell fish.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addTrigger("Zerarisa")
talkEntry:addResponse("Oh, Zerarisa, sie ist eine von den Echsenleuten, die in Galmair an der Angelstelle leben. Sie kommt einmal im Monat nach Runewick um Fisch zu verkaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Did you already speak to Zerarisa about the fish I usually buy from her? I really need ten of those fish to try out my recipe.")
talkEntry:addResponse("I really need ten of the fish that Zerarisa usually sells me. Would you please get them for me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Habt Ihr schon mit Zerarisa über die Fische gesprochen, die ich normalerweise bei ihr kaufe? Ich brauche wirklich zehn von diesen Fischen, um mein Rezept auszuprobieren.")
talkEntry:addResponse("Ich brauche wirklich zehn von diesen Fischen, die mir Zerarisa normalerweise verkauft. Könntet Ihr die bitte für mich besorgen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("recipe")
talkEntry:addTrigger("bowl")
talkEntry:addResponse("Did you already speak to Zerarisa about the fish I usually buy from her? I really need ten of those fish to try out my recipe.")
talkEntry:addResponse("I really need ten of the fish that Zerarisa usually sells me. Would you please get them for me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Rezept")
talkEntry:addTrigger("Schüssel")
talkEntry:addResponse("Habt Ihr schon mit Zerarisa über die Fische gesprochen, die ich normalerweise bei ihr kaufe? Ich brauche wirklich zehn von diesen Fischen, um mein Rezept auszuprobieren.")
talkEntry:addResponse("Ich brauche wirklich zehn von diesen Fischen, die mir Zerarisa normalerweise verkauft. Könntet Ihr die bitte für mich besorgen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addCondition(condition_item(355, "all", "<", 10, nil))
talkEntry:addTrigger("salmon")
talkEntry:addResponse("Salmon? Yes, that could be the name of the fish. Now that you mention it, I think Zerarisa said that name. I need ten salmon for my recipe though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 7))
talkEntry:addCondition(condition_item(355, "all", "<", 10, nil))
talkEntry:addTrigger("Lachs")
talkEntry:addResponse("Lachs? Ja, das könnte der Name des Fisches sein. Jetzt wo Ihr es erwähnt. Ich denke Zerarisa hat mal diesen Namen erwähnt. Aber ich brauche zehn Lachse für mein Rezept.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 8))
talkEntry:addTrigger("recipe")
talkEntry:addTrigger("bowl")
talkEntry:addResponse("Thanks to you I finally have all the ingredients I need to try out my new recipe. I thank you with all my heart!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 8))
talkEntry:addTrigger("Rezept")
talkEntry:addTrigger("Schüssel")
talkEntry:addResponse("Dank Euch habe ich endlich alle Zutaten zusammen, um mein neues Rezept auszuprobieren. Ich danke Euch von ganzem Herzen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You have already done way too much for me. I will always remember you fondly. You are truly a hero to me! May Oldra bless you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 8))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ihr habt bereits viel zu viel für mich getan. Ich werde Euch immer in guter Erinnerung behalten. Ihr seid wahrlich ein Held für mich! Möge Oldra Euch segnen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 8))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You have already done way too much for me. I will always remember you fondly. You are truly a hero to me! May Oldra bless you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(70, "=", 8))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ihr habt bereits viel zu viel für mich getan. Ich werde Euch immer in guter Erinnerung behalten. Ihr seid wahrlich ein Held für mich! Möge Oldra Euch segnen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Yes, I'm a good cook. I just use the best ingredients for cooking. Right now I would like to try out this new recipe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin eine gute Köchin. Ich verwende nur die besten Zutaten zum Kochen. Im Moment würde ich gerne dieses neue Rezept ausprobieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Yes, I'm a good cook. I just use the best ingredients for cooking. Right now I would like to try out this new recipe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin eine gute Köchin. Ich verwende nur die besten Zutaten zum Kochen. Im Moment würde ich gerne dieses neue Rezept ausprobieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I do not want to talk about that... Let's talk about my latest recipe, yes?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Darüber möchte ich jetzt nicht reden... Lasst uns über mein neuestes Rezept reden, ja?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Oh, hello, I am Nana. Did I mention that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Oh, hallo, ich bin Nana. Oder hab ich das schon gesagt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("cook")
talkEntry:addResponse("Yes, I'm a good cook. I just use the best ingredients for cooking. Right now I would like to try out this new recipe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Koch")
talkEntry:addTrigger("Köchin")
talkEntry:addResponse("Ich bin eine gute Köchin. Ich verwende nur die besten Zutaten zum Kochen. Im Moment würde ich gerne dieses neue Rezept ausprobieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Yewdale")
talkEntry:addResponse("Yewdale is a peaceful place. Not too many yews grow here, but it is a lovely name, isn't it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eibenthal")
talkEntry:addTrigger("Eibental")
talkEntry:addResponse("Eibenthal ist ein friedlicher Ort. Hier wachsen zwar nicht viele Eiben, aber der Name ist doch wunderschön, oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("grain")
talkEntry:addResponse("Grain can be used as seed or you can grind it to make flour. Put the grain on fertile land and the crop will grow.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Getreide")
talkEntry:addTrigger("Korn")
talkEntry:addTrigger("Körner")
talkEntry:addResponse("Getreidekörner können als Saatgut verwendet werden oder man zermahlt sie zu Mehl. Gib die Saat auf fruchtbares Land und das Getreide wird wachsen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tomato")
talkEntry:addResponse("You can plant tomato seeds in fertile soil. Be sure to fasten the growing plants to poles so that they grow straight up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tomate")
talkEntry:addResponse("Ihr könnt Tomatensamen in fruchtbaren Boden geben. Geht sicher die heranwachsenden Pflanzen an Stangen zu befestigen, damit sie senkrecht nach oben wachsen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mushroom")
talkEntry:addResponse("Mushrooms love shadowy places and can be found in forests. You will need a sharp sickle to gather them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Pilz")
talkEntry:addTrigger("Champignon")
talkEntry:addResponse("Pilze lieben schattige Plätze und können in Wäldern gefunden werden. Ihr werdet eine scharfe Sichel brauchen, um sie zu sammeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("fish")
talkEntry:addResponse("I know how to prepare fish but it seems that I always forget what the fish are called. You better ask someone else if you want to know more about fish.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fisch")
talkEntry:addResponse("Ich weiß wie man Fisch zubereitet, aber es scheint, als würde ich immer vergessen, wie die Fischen heißen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("onion")
talkEntry:addResponse("Onions are tasty, aren't they? But your breath turns... bah!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zwiebel")
talkEntry:addResponse("Zwiebeln sind lecker, nicht wahr? Aber dein Atem... igitt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("scythe")
talkEntry:addResponse("You can use the scythe to reap wheat once it has turned a nice golden colour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sense")
talkEntry:addResponse("Ihr könnt eine Sense dafür verwenden, um Getreide zu mähen sobald es diese goldene Farbe hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sickle")
talkEntry:addResponse("You can use a sickle to collect vegetables once they are ready, or you can use it to collect herbs and mushrooms")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sichel")
talkEntry:addResponse("Ihr könnt eine Sichel verwenden um Gemüse einzusammeln sobald es reif ist. Oder Ihr verwendet sie um Kräuter und Pilze zu sammeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valandil")
talkEntry:addTrigger("Elensar")
talkEntry:addResponse("My best regards to Valandil!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valandil")
talkEntry:addTrigger("Elensar")
talkEntry:addResponse("Grüßt Valandil fein von mir!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Berry")
talkEntry:addTrigger("Berries")
talkEntry:addResponse("Mmmm, yes, grow them right here myself, in Yewdale. My own species developed just for the Archmage himself. Morganberries grow big and plump, but aren't too sweet, just like he likes them!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Beere")
talkEntry:addResponse("Mmmm, ja, ich baue sie hier selber an, in Yewdale. Meine eigene Sorte, nur für den Erzmagier gezüchtet. Morganbeeren wachsen groß und prall, aber sie sind nicht zu süß, genauso wie er sie mag!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Mr Morgan is a very nice man, elf, wizard, ruler... anyway, he is nice!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Herr Morgan ist ein netter Mann. Elf. Zauberer. Herrscher. Egal, er ist nett!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Mr Morgan is a very nice man, elf, wizard, ruler... anyway, he is nice!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Herr Morgan ist ein netter Mann. Elf. Zauberer. Herrscher. Egal, er ist nett!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick is wonderful, and I'm one of the best cooks around here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick ist wundervoll. Und ich bin eine der besten Köchinnen hier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("The Don stinks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don stinkt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Oh! Galmair is so smelly and dirty!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ohje! Galmair ist so stinkig und dreckig!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Oh, a Queen rules Cadomyr? I never knew...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Oh, in Cadomyr regiert eine Königin? Wusste ich noch gar nicht...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Oh, a Queen rules Cadomyr? I never knew...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Oh, in Cadomyr regiert eine Königin? Wusste ich noch gar nicht...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I have never visited Cadomyr myself, so far, but I have heard that it is to the south.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ich war noch nie in Cadomyr. Aber ich hab gehört, es liegt im Süden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Oooh, leave me alone with foreign countries, will you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ochje, lasst mich doch mit fernen Ländern in Ruhe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Oooh, leave me alone with foreign countries, will you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ochje, lasst mich doch mit fernen Ländern in Ruhe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Oooh, leave me alone with foreign countries, will you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Ochje, lasst mich doch mit fernen Ländern in Ruhe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I pray to Adron, Oldra and Sirani.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Ich bete zu Adron, Oldra und Sirani.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron is the God of good dishes! So, he is my God and I am his follower.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron ist der Gott der guten Gerichte! Und somit ist er mein Gott und ich bin seine Anhängerin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra gives me what I need for my recipes, so I thank her every day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra gibt mir, was ich für meine Rezepte brauche, also danke ich ihr jeden Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Why I pray to Sirani? Good friends become even better friends while dining together, and that's where a cook like me joins the scene!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Warum ich zu Sirani bete? Gute Freunde werden noch bessere Freunde, wenn sie zusammen speisen. Und das ist dann der Punkt, wo eine Köchin wie ich die Bühne betritt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("Sorry, I don't sell anything, but there are other people in Runewick. Some may even sell things to you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Tut mir leid, ich verkaufe nichts. Aber es gibt andere Leute in Runewick. Einige verkaufen Euch vielleicht auch etwas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I'm not much of a storyteller.")
talkEntry:addResponse("I'm just a cook. I would rather try out my new recipe instead of telling stories.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Ich bin nicht gerade eine gute Geschichtenerzählerin.")
talkEntry:addResponse("Ich bin nur eine Köchin. Ich würde viel lieber mein Rezept ausprobieren, als Geschichten zu erzählen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Darkman")
talkEntry:addResponse("Oh can you hear him coming, it's the darkman you better keep running.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nana")
talkEntry:addTrigger("Winterbutter")
talkEntry:addResponse("That's me!")
talkEntry:addResponse("Oh, indeed, I am Nana Winterbutter.")
talkEntry:addResponse("At your service.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nana")
talkEntry:addTrigger("Winterbutter")
talkEntry:addResponse("Das bin ich!")
talkEntry:addResponse("Oh, ja, ich bin Nana Winterbutter.")
talkEntry:addResponse("Stets zu Diensten.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me rührt etwas Teig in einer Schüssel in ihrem linken Arm um.", "#me stirs some dough in a bowl held in her left arm.")
talkingNPC:addCycleText("#me starrt besorgt in die Schüssel in ihrem linken Arm.", "#me stares worriedly into the bowl held in her left arm.")
talkingNPC:addCycleText("Das wird nie und nimmer reichen.", "This won't never ever last.")
talkingNPC:addCycleText("#me gießt vorsichtig etwas Wasser in Schüssel in ihrem linken Arm.", "#me carefully pours some water into the bowl held in her left arm.")
talkingNPC:addCycleText("Vielleicht sollte ich doch etwas anderes kochen.", "Maybe I should cook something else.")
talkingNPC:addCycleText("Willkommen im Eibenthal!", "Welcome to Yewdale!")
talkingNPC:addCycleText("#me nascht von einem Teig, den sie gerade anrührt.", "#me tastes the dough she's stirring.")
talkingNPC:addCycleText("Und noch etwas Knoblauch... oder besser nicht?", "And a little bit of garlic... or not?")
talkingNPC:addCycleText("Ohje, ohje.", "Oh, my dear.")
talkingNPC:addCycleText("Das wird lecker!", "That's going to be tasty!")
talkingNPC:addCycleText("#me schaut, mit Stolz, über sein Feld mit extra gezüchteten Morganbeeren.", "#me looks out with pride over her field of specially grown Morganberries.")
talkingNPC:addCycleText("#me hält sich eine Morganbeere nah vor das Gesicht um sie genauer zu betrachten.", "#me holds a Morganberry up close to her face as she examines it closely.")
talkingNPC:addCycleText("Ich hab fast vergessen, dass der Erzmagier will, dass ich ihm so schnell wie möglich noch einen Korb mit Morganbeeren schicke. *Sie packt ihren Kochlöffel zur Seite und beginnt hastig einen Korb mit den prallen Beeren zu packen.*", "I nearly forgot, the Archmage asked that I send over another basket of Morganberries right away! *She tucks her cooking spoon away and hastily begins to prepare a basket of the perfectly plump cherries.*")
mainNPC:addLanguage(0)
mainNPC:addLanguage(6)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist die Köchin Nana Winterbutter.", "This NPC is the cook Nana Winterbutter.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 808)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 227)
mainNPC:setEquipment(6, 2935)
mainNPC:setEquipment(4, 0)
mainNPC:setEquipment(9, 34)
mainNPC:setEquipment(10, 53)
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
