local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_skill = require("npc.base.condition.skill")
local condition_language = require("npc.base.condition.language")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local consequence_skill = require("npc.base.consequence.skill")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the carver Truciolo Pialla. Keywords: task, wood, adventure, carver, tell something, forest."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Schnitzer Truciolo Pialla. Schlüsselwörter: Aufgaben, Holz, Aufgabe, Schnitzer, Erzähl was, Wald."))
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
talkEntry:addResponse("Greeting, what do you want?")
talkEntry:addResponse("The Five with you, may I help you?")
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
talkEntry:addResponse("Grüße dich.")
talkEntry:addResponse("Die Fünf mit dir, kann ich dir irgendwie helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("What do you want? Oh sorry, Greetings!")
talkEntry:addResponse("Ja ja.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Was? Oh entschuldigt, natürlich. Grüßt Euch!")
talkEntry:addResponse("Ja ja.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Bye bye, take care.")
talkEntry:addResponse("The Five with you!")
talkEntry:addResponse("Until next time!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Tschüss.")
talkEntry:addResponse("Die Fünf mit dir!")
talkEntry:addResponse("Man sieht sich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Bye bye, take care.")
talkEntry:addResponse("The Five with you!")
talkEntry:addResponse("Until next time!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Tschüss.")
talkEntry:addResponse("Die Fünf mit dir!")
talkEntry:addResponse("Man sieht sich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I can't say anything is bothering me and you?")
talkEntry:addResponse("So-so, but I'm fine right now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Ich kann nicht klagen und du?")
talkEntry:addResponse("Ganz gut und selbst?")
talkEntry:addResponse("Mal so, mal so, aber gerade geht es mir ganz gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I'm Truciolo and who are you?")
talkEntry:addResponse("I'm called Truciolo, and what's your name?")
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
talkEntry:addResponse("Ich bin der Schnitzer Truciolo und wer bist du?")
talkEntry:addResponse("Man nennt mich Truciolo und wie nennt man dich?")
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
talkEntry:addCondition(condition_quest(670, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I could help you if you want to become a carver as well, but first bring me ten logs of apple wood, along with ten boughs, and don't forget to bring a saw. Here is a hatchet for you to get the wood.")
talkEntry:addConsequence(consequence_item(74, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich kann dir helfen, falls du Holzschnitzer werden willst. Aber zuerst brauchen wir 10 Scheite Apfelholz sowie 10 Äste. Und natürlich sollten wir eine Säge haben. Hier hast du ein Beil für das Holz.")
talkEntry:addConsequence(consequence_item(74, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I could help you if you want to become a carver as well, but first bring me ten logs of apple wood, along with ten boughs, and don't forget to bring a saw. Here is a hatchet for you to get the wood.")
talkEntry:addConsequence(consequence_item(74, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Ich kann dir helfen, falls du Holzschnitzer werden willst. Aber zuerst brauchen wir 10 Scheite Apfelholz sowie 10 Äste. Und natürlich sollten wir eine Säge haben. Hier hast du ein Beil für das Holz.")
talkEntry:addConsequence(consequence_item(74, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 1))
talkEntry:addCondition(condition_skill(Character.carpentry, "=>", 20))
talkEntry:addCondition(condition_item(2560, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(56, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(9, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest erfüllt!] Es gibt aber noch mehr zu tun. Du erhältst einhundert Silberstücke."))
talkEntry:addResponse("Sehr schön, gut gemacht!")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_deleteitem(2560, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(56, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(9, 1, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 1))
talkEntry:addCondition(condition_skill(Character.carpentry, "=>", 20))
talkEntry:addCondition(condition_item(2560, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(56, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(9, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest finished!] Further tasks are waiting for you. You are awarded one hundred silver coins."))
talkEntry:addResponse("Thank you, well done!")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_deleteitem(2560, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(56, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(9, 1, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 1))
talkEntry:addCondition(condition_skill(Character.carpentry, "<", 20))
talkEntry:addCondition(condition_item(2560, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(56, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(9, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest erfüllt!] Du hast das Gefühl als hättest du etwas dazu gelernt. Es gibt aber noch mehr zu tun. Du erhältst einhundert Silberstücke."))
talkEntry:addResponse("Sehr schön, gut gemacht. Jetzt schau mir gut zu, damit du auch etwas lernst!")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_skill(Character.carpentry, "+", 2))
talkEntry:addConsequence(consequence_deleteitem(2560, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(56, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(9, 1, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 1))
talkEntry:addCondition(condition_skill(Character.carpentry, "<", 20))
talkEntry:addCondition(condition_item(2560, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(56, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(9, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest finished!] You feel like you really learned something. Further tasks are waiting for you. You are awarded one hundred silver coins."))
talkEntry:addResponse("Well, good job. Now watch me, so that you actually learn something!")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_skill(Character.carpentry, "+", 2))
talkEntry:addConsequence(consequence_deleteitem(2560, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(56, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(9, 1, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 1))
talkEntry:addCondition(condition_item(2560, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Sorry, if you try to trick me, I won't help you. I want ten logs of apple wood, ten boughs and a saw!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 1))
talkEntry:addCondition(condition_item(2560, "all", "<", 10, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Na na, wenn du dir mit mir einen Spaß erlauben willst, werd ich dir nicht helfen. Ich wollte 10 Scheite Apfelholz, 10 Äste und eine Säge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 1))
talkEntry:addCondition(condition_item(56, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Sorry, if you try to trick me, I won't help you. I want ten logs of apple wood, ten boughs and a saw!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 1))
talkEntry:addCondition(condition_item(56, "all", "<", 10, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Na na, wenn du dir mit mir einen Spaß erlauben willst, werd ich dir nicht helfen. Ich wollte 10 Scheite Apfelholz, 10 Äste und eine Säge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 1))
talkEntry:addCondition(condition_item(9, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Sorry, if you try to trick me, I won't help you. I want ten logs of apple wood, ten boughs and a saw!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 1))
talkEntry:addCondition(condition_item(9, "all", "<", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Na na, wenn du dir mit mir einen Spaß erlauben willst, werd ich dir nicht helfen. Ich wollte 10 Scheite Apfelholz, 10 Äste und eine Säge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Sure, I have a task for you if you are interested. I need fifteen naldor boards, new carving tools, a cooking spoon and five conifer logs!")
talkEntry:addConsequence(consequence_quest(670, "=", 3))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 2))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addResponse("Sicher hätte ich etwas für dich zu tun, wenn du willst. 15 Naldorbretter, einen Satz neuer Schnitzmesser, einen Kochlöffel und 5 Nadelholzscheite brauch ich!")
talkEntry:addConsequence(consequence_quest(670, "=", 3))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 2))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Sure, I have a task for you if you are interested. I need fifteen naldor wooden boards, new carving tools, a cooking spoon and five conifer logs!")
talkEntry:addConsequence(consequence_quest(670, "=", 3))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 2))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Sicher hätte ich etwas für dich zu tun, wenn du willst. 15 Naldorbretter, einen Satz neuer Schnitzmesser, einen Kochlöffel und 5 Nadelholzscheite brauch ich!")
talkEntry:addConsequence(consequence_quest(670, "=", 3))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 3))
talkEntry:addCondition(condition_skill(Character.carpentry, "=>", 40))
talkEntry:addCondition(condition_item(546, "all", ">", 14, nil))
talkEntry:addCondition(condition_item(3, "all", ">", 4, nil))
talkEntry:addCondition(condition_item(227, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(2752, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest finished!] Further tasks are waiting for you. You are awarded one hundred silver coins."))
talkEntry:addResponse("Looks good, it's everything that I wanted you to bring me, well done!")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_deleteitem(546, 15, nil))
talkEntry:addConsequence(consequence_deleteitem(3, 5, nil))
talkEntry:addConsequence(consequence_deleteitem(227, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(2752, 1, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 4))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 3))
talkEntry:addCondition(condition_skill(Character.carpentry, "=>", 40))
talkEntry:addCondition(condition_item(546, "all", ">", 14, nil))
talkEntry:addCondition(condition_item(3, "all", ">", 4, nil))
talkEntry:addCondition(condition_item(227, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(2752, "all", ">", 0, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest erfüllt!] Es gibt aber noch mehr zu tun. Du erhältst einhundert Silberstücke."))
talkEntry:addResponse("Sieht gut aus. Alles, was ich brauche, ist dabei. Gut gemacht!")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_deleteitem(546, 15, nil))
talkEntry:addConsequence(consequence_deleteitem(3, 5, nil))
talkEntry:addConsequence(consequence_deleteitem(227, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(2752, 1, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 4))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 3))
talkEntry:addCondition(condition_skill(Character.carpentry, "<", 40))
talkEntry:addCondition(condition_item(546, "all", ">", 14, nil))
talkEntry:addCondition(condition_item(3, "all", ">", 4, nil))
talkEntry:addCondition(condition_item(227, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(2752, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest finished!] You feel like you really learned something. Further tasks are waiting for you. You are awarded one hundred silver coins."))
talkEntry:addResponse("Looks good. It's everything that I wanted you to bring. Looks as if you could really feel wood.")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_skill(Character.carpentry, "+", 2))
talkEntry:addConsequence(consequence_deleteitem(546, 15, nil))
talkEntry:addConsequence(consequence_deleteitem(3, 5, nil))
talkEntry:addConsequence(consequence_deleteitem(227, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(2752, 1, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 4))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 3))
talkEntry:addCondition(condition_skill(Character.carpentry, "<", 40))
talkEntry:addCondition(condition_item(546, "all", ">", 14, nil))
talkEntry:addCondition(condition_item(3, "all", ">", 4, nil))
talkEntry:addCondition(condition_item(227, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(2752, "all", ">", 0, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest erfüllt!] Du hast das Gefühl als hättest du etwas dazu gelernt. Es gibt aber noch mehr zu tun. Du erhältst einhundert Silberstücke."))
talkEntry:addResponse("Sehr schön. Alles da, was ich von dir verlangt hab. Du scheinst, mit Holz gut umgehen zu können.")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_skill(Character.carpentry, "+", 2))
talkEntry:addConsequence(consequence_deleteitem(546, 15, nil))
talkEntry:addConsequence(consequence_deleteitem(3, 5, nil))
talkEntry:addConsequence(consequence_deleteitem(227, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(2752, 1, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 4))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 3))
talkEntry:addCondition(condition_item(546, "all", "<", 15, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Are you sure? You're supposed to bring me fifteen naldor boards, new carving tools, a cooking spoon and five conifer logs. Not that hard to remember, is it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 3))
talkEntry:addCondition(condition_item(546, "all", "<", 15, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Du sollst mir 15 Naldorbretter, einen Satz neuer Schnitzmesser, einen Kochlöffel und 5 Nadelholzscheite bringen. Das kann doch nicht so schwer zu merken sein oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 3))
talkEntry:addCondition(condition_item(3, "all", "<", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Are you sure? You're supposed to bring me fifteen naldor boards, new carving tools, a cooking spoon and five conifer logs. Not that hard to remember, is it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 3))
talkEntry:addCondition(condition_item(3, "all", "<", 5, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Du sollst mir 15 Naldorbretter, einen Satz neuer Schnitzmesser, einen Kochlöffel und 5 Nadelholzscheite bringen. Das kann doch nicht so schwer zu merken sein oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 3))
talkEntry:addCondition(condition_item(227, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Are you sure? You're supposed to bring me fifteen naldor boards, new carving tools, a cooking spoon and five conifer logs. Not that hard to remember, is it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 3))
talkEntry:addCondition(condition_item(227, "all", "<", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Du sollst mir 15 Naldorbretter, einen Satz neuer Schnitzmesser, einen Kochlöffel und 5 Nadelholzscheite bringen. Das kann doch nicht so schwer zu merken sein oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 3))
talkEntry:addCondition(condition_item(2752, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Are you sure? You're supposed to bring me fifteen naldor boards, new carving tools, a cooking spoon and five conifer logs. Not that hard to remember, is it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 3))
talkEntry:addCondition(condition_item(2752, "all", "<", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Du sollst mir 15 Naldorbretter, einen Satz neuer Schnitzmesser, einen Kochlöffel und 5 Nadelholzscheite bringen. Das kann doch nicht so schwer zu merken sein oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Sure, I have another task for you if you are interested. Bring me ten cherry wood boards, ten wooden plates, five skull staffs and four large handles.")
talkEntry:addConsequence(consequence_quest(670, "=", 5))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 4))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Sehr gerne. Bring mir 10 Kirschholzbretter, 10 Holzteller, 5 Schädelstäbe und 4 große Griffe.")
talkEntry:addConsequence(consequence_quest(670, "=", 5))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 4))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Sure, I have another task for you if you are interested. Bring me ten cherry wood boards, ten wooden plates, five skull staffs and five large handles.")
talkEntry:addConsequence(consequence_quest(670, "=", 5))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 4))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Sehr gerne. Bring mir 10 Kirschholzbretter, 10 Holzteller, 5 Schädelstäbe und 4 große Griffe.")
talkEntry:addConsequence(consequence_quest(670, "=", 5))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 5))
talkEntry:addCondition(condition_skill(Character.carpentry, "=>", 60))
talkEntry:addCondition(condition_item(2544, "all", ">", 3, nil))
talkEntry:addCondition(condition_item(2952, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(545, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(39, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest finished!] Further tasks are waiting for you. You are awarded one hundred silver coins."))
talkEntry:addResponse("Finally, you're back. Thanks for your help! But next time take more care about the skulls. They do not look like real ones.")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_deleteitem(2544, 4, nil))
talkEntry:addConsequence(consequence_deleteitem(2952, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(545, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(39, 5, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 6))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 5))
talkEntry:addCondition(condition_skill(Character.carpentry, "=>", 60))
talkEntry:addCondition(condition_item(2544, "all", ">", 3, nil))
talkEntry:addCondition(condition_item(2952, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(545, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(39, "all", ">", 4, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest erfüllt!] Es gibt aber noch mehr zu tun. Du erhältst einhundert Silberstücke."))
talkEntry:addResponse("Da bist du ja endlich. Aber ehrlich, diese Totenköpfe verdienen noch etwas mehr Strenge. Aber fürs Erste sollte es reichen.")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_deleteitem(2544, 4, nil))
talkEntry:addConsequence(consequence_deleteitem(2952, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(545, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(39, 5, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 6))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 5))
talkEntry:addCondition(condition_skill(Character.carpentry, "<", 60))
talkEntry:addCondition(condition_item(2544, "all", ">", 3, nil))
talkEntry:addCondition(condition_item(2952, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(545, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(39, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest finished!] You feel like you really learned something. Further tasks are waiting for you. You are awarded one hundred silver coins."))
talkEntry:addResponse("Finally, you're back, I was starting to worry about you. Now watch how I drill the hole.")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_skill(Character.carpentry, "+", 2))
talkEntry:addConsequence(consequence_deleteitem(2544, 4, nil))
talkEntry:addConsequence(consequence_deleteitem(2952, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(545, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(39, 5, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 6))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 5))
talkEntry:addCondition(condition_skill(Character.carpentry, "<", 60))
talkEntry:addCondition(condition_item(2544, "all", ">", 3, nil))
talkEntry:addCondition(condition_item(2952, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(545, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(39, "all", ">", 4, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest erfüllt!] Du hast das Gefühl als hättest du etwas dazu gelernt. Es gibt aber noch mehr zu tun. Du erhältst einhundert Silberstücke."))
talkEntry:addResponse("Da bist du ja endlich. Ich hatte mir schon Sorgen gemacht. Nun pass aber auf, wie man die Löcher richtig bohrt.")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_skill(Character.carpentry, "+", 2))
talkEntry:addConsequence(consequence_deleteitem(2544, 4, nil))
talkEntry:addConsequence(consequence_deleteitem(2952, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(545, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(39, 5, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 6))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 5))
talkEntry:addCondition(condition_item(2544, "all", "<", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Well, there are still some things missing. You are supposed to bring me ten cherry wood boards, ten wooden plates, five skull staffs and four large handles.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 5))
talkEntry:addCondition(condition_item(2544, "all", "<", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Na, fehlt da nicht noch was? Ich sagte 10 Kirschholzbretter, 10 Holzteller, 5 Schädelstäbe und 4 große Griffe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 5))
talkEntry:addCondition(condition_item(2952, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Well, there are still some things missing. You are supposed to bring me ten cherry wood boards, ten wooden plates, five skull staffs and four large handles.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 5))
talkEntry:addCondition(condition_item(2952, "all", "<", 10, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Na, fehlt da nicht noch was? Ich sagte 10 Kirschholzbretter, 10 Holzteller, 5 Schädelstäbe und 4 große Griffe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 5))
talkEntry:addCondition(condition_item(545, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Well, there are still some things missing. You are supposed to bring me ten cherry wood boards, ten wooden plates, five skull staffs and four large handles.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 5))
talkEntry:addCondition(condition_item(545, "all", "<", 10, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Na, fehlt da nicht noch was? Ich sagte 10 Kirschholzbretter, 10 Holzteller, 5 Schädelstäbe und 4 große Griffe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 5))
talkEntry:addCondition(condition_item(39, "all", "<", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Well, there are still some things missing. You are supposed to bring me ten cherry wood boards, ten wooden plates, five skull staffs and four large handles.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 5))
talkEntry:addCondition(condition_item(39, "all", "<", 5, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Na, fehlt da nicht noch was? Ich sagte 10 Kirschholzbretter, 10 Holzteller, 5 Schädelstäbe und 4 große Griffe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Are you looking for some more work? I could use the help! I need 150 arrows, ten buckets, ten harps and two wands.")
talkEntry:addConsequence(consequence_quest(670, "=", 7))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du suchst noch eine Aufgabe? Damit kann ich helfen! Ich brauche 150 Pfeile, 10 Eimer, 10 Harfen und 2 Zauberstäbe.")
talkEntry:addConsequence(consequence_quest(670, "=", 7))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Are you looking for some more work? I could use the help! I need 150 arrows, ten buckets, ten harps and two wands.")
talkEntry:addConsequence(consequence_quest(670, "=", 7))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addResponse("Du suchst noch eine Aufgabe? Damit kann ich helfen! Ich brauche 150 Pfeile, 10 Eimer, 10 Harfen und 2 Zauberstäbe.")
talkEntry:addConsequence(consequence_quest(670, "=", 7))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 7))
talkEntry:addCondition(condition_skill(Character.carpentry, "=>", 80))
talkEntry:addCondition(condition_item(64, "all", ">", 149, nil))
talkEntry:addCondition(condition_item(332, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(51, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(323, "all", ">", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest finished!] This NPC has no other tasks for you. You are awarded one hundred silver coins."))
talkEntry:addResponse("Well done, thank you very much!")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_deleteitem(64, 150, nil))
talkEntry:addConsequence(consequence_deleteitem(332, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(51, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(323, 2, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 8))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 7))
talkEntry:addCondition(condition_skill(Character.carpentry, "=>", 80))
talkEntry:addCondition(condition_item(64, "all", ">", 149, nil))
talkEntry:addCondition(condition_item(332, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(51, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(323, "all", ">", 1, nil))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest erfüllt!] Dieser NPC hat nichts mehr für dich zu tun. Du erhältst einhundert Silberstücke."))
talkEntry:addResponse("Sehr gut gemacht. Ich wusste, man kann sich auf dich verlassen.")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_deleteitem(64, 150, nil))
talkEntry:addConsequence(consequence_deleteitem(332, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(51, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(323, 2, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 8))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 7))
talkEntry:addCondition(condition_skill(Character.carpentry, "<", 80))
talkEntry:addCondition(condition_item(64, "all", ">", 149, nil))
talkEntry:addCondition(condition_item(332, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(51, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(323, "all", ">", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest finished!] You feel like you really learned something. This NPC has no other tasks for you. You are awarded one hundred silver coins."))
talkEntry:addResponse("Well done. Now that I know I can count on you, watch closely here and see how this is supposed to be done!")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_skill(Character.carpentry, "+", 2))
talkEntry:addConsequence(consequence_deleteitem(64, 150, nil))
talkEntry:addConsequence(consequence_deleteitem(332, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(51, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(323, 2, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 8))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 7))
talkEntry:addCondition(condition_skill(Character.carpentry, "<", 80))
talkEntry:addCondition(condition_item(64, "all", ">", 149, nil))
talkEntry:addCondition(condition_item(332, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(51, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(323, "all", ">", 1, nil))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest erfüllt!] Du hast das Gefühl als hättest du etwas dazu gelernt. Dieser NPC hat nichts mehr für dich zu tun. Du erhältst einhundert Silberstücke."))
talkEntry:addResponse("Sehr gut gemacht. Ich wusste, man kann sich auf dich verlassen. Nun sperr die Augen weit auf und beobachte wie ich dat hier schmiede!")
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_skill(Character.carpentry, "+", 2))
talkEntry:addConsequence(consequence_deleteitem(64, 150, nil))
talkEntry:addConsequence(consequence_deleteitem(332, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(51, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(323, 2, nil))
talkEntry:addConsequence(consequence_quest(670, "=", 8))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 7))
talkEntry:addCondition(condition_item(64, "all", "<", 150, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("You were supposed to bring me 150 arrows, ten buckets, ten harps and two wands.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 7))
talkEntry:addCondition(condition_item(64, "all", "<", 150, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Die Sachen, die du mir bringen solltest, waren 150 Pfeile, 10 Eimer, 10 Harfen und 2 Zauberstäbe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 7))
talkEntry:addCondition(condition_item(332, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("You were supposed to bring me 150 arrows, ten buckets, ten harps and two wands.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 7))
talkEntry:addCondition(condition_item(332, "all", "<", 10, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Die Sachen, die du mir bringen solltest, waren 150 Pfeile, 10 Eimer, 10 Harfen und 2 Zauberstäbe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 7))
talkEntry:addCondition(condition_item(51, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("You were supposed to bring me 150 arrows, ten buckets, ten harps and two wands.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 7))
talkEntry:addCondition(condition_item(51, "all", "<", 10, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Die Sachen, die du mir bringen solltest, waren 150 Pfeile, 10 Eimer, 10 Harfen und 2 Zauberstäbe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 7))
talkEntry:addCondition(condition_item(323, "all", "<", 2, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("You were supposed to bring me 150 arrows, ten buckets, ten harps and two wands.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 7))
talkEntry:addCondition(condition_item(323, "all", "<", 2, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Die Sachen, die du mir bringen solltest, waren 150 Pfeile, 10 Eimer, 10 Harfen und 2 Zauberstäbe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I'm sorry, I don't have anything else for you to do. Leave me alone now!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 8))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Leider nein, ich habe nichts mehr für dich zu tun. Lass mich nun in Ruhe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 8))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I'm sorry, I don't have anything else for you to do. Leave me alone now!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=", 8))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Leider nein, ich habe nichts mehr für dich zu tun. Lass mich nun in Ruhe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=>", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("No! I don't have anything for you to do, you are not from Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=>", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nein! Ich habe nichts für dich zu tun, du kommst nicht aus Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=>", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("No! I don't have anything for you to do, you are not from Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(670, "=>", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addResponse("Nein! Ich habe nichts für dich zu tun, du kommst nicht aus Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("You ask what my profession is? I'm a carver, for sure the best in town.")
talkEntry:addResponse("I'm a carver and you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Du fragst nach meinem Beruf? Ich bin Holzschnitzer, einer der besten in der Stadt.")
talkEntry:addResponse("Von Beruf bin ich Holzschnitzer und du?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("You ask what my profession is? I'm a carver, for sure the best in town.")
talkEntry:addResponse("I'm a carver and you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Du fragst nach meinem Beruf? Ich bin Holzschnitzer, einer der besten in der Stadt.")
talkEntry:addResponse("Von Beruf bin ich Holzschnitzer und du?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Gobaith? Never heard about. Where is it at?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Gobaith? Nie gehört, wo soll das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("I see. It's a pleasure.")
talkEntry:addResponse("So, so? Well, then. How may I help you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Aha. Freut mich deine Bekanntschaft zu machn.")
talkEntry:addResponse("Soso? Na, dann - wie kann ich dir helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dwarf")
talkEntry:addResponse("This is the town of dwarves, but dwarves have no real feeling for wood. A real dwarf works in the smithy or the mines and buys the wooden things he needs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zwerg")
talkEntry:addResponse("Ja, Galmair ist die Stadt der Zwerge. Aber ein echter Zwerg arbeitet in den Minen oder in der Schmiede und kauft bei uns alle Holzwaren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("elf")
talkEntry:addResponse("Nobody else ever made such fine wooden items. As you know, each famous dwarven sword has a handle, made by elves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elf")
talkEntry:addResponse("Niemand außer uns Elfen stellt so schöne hölzerne Dinge her. Sogar jedes berühmte Zwergenschwert hat einen Griff, der von Elfenhand gefertigt wurde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("forest")
talkEntry:addResponse("I love the forest, even if quite dangerous monsters live there. I love a warm and safe bed as well though, so you won't find me sleeping in trees.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wald")
talkEntry:addResponse("Ich liebe die Stille der Wälder. Aber hier gibt es so viele Monster. Und ich habe auch gerne ein trockenes und warmes Bett.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wood")
talkEntry:addResponse("It depends on what wood you need! You can find every kind of tree right before the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Holz")
talkEntry:addResponse("Du findest jede beliebige Baumart gleich vor der Stadt. Such dir die aus, deren Holz du gerade benötigst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("carver")
talkEntry:addResponse("A carver needs a saw, carving tools and a slicer, and wood of course. Saw the wood to boards. There is a workbench in the workshop. Got it?")
talkEntry:addResponse("Search for the workbench to start with, there is one in the workshop.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("schnitzer")
talkEntry:addResponse("Ein Holzschnitzer braucht eine Säge, Schnitzmesser und einen Hobel. Und Holz natürlich. Das kann man alles am Markt kaufen. Zuerst sägst du das Holz zu Brettern. Und aus denen werden dann die tollsten Dinge.")
talkEntry:addResponse("Du musst zu einer Werkbank gehen, wenn du schnitzen willst. Du findest eine in der Werkstatt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("hatchet")
talkEntry:addResponse("You can cut any tree with it. A merchant can surely sell you one if you lose yours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beil")
talkEntry:addResponse("Damit kannst du Bäume fällen und an Holz kommen. Ein Händler kann dir sicher eines verkaufen wenn du deines verlierst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tree")
talkEntry:addResponse("It depends on what wood you need! You can find every kind of tree right before the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Baum")
talkEntry:addTrigger("Bäum")
talkEntry:addResponse("Du findest jede beliebige Baumart gleich vor der Stadt. Such dir die aus, deren Holz du gerade benötigst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Don't know him, who's that supposed to be?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Kenn ich nicht, wer soll denn das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Don't know him, who's that supposed to be?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Kenn ich nicht, wer soll denn das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick is that city full of them mage-folk right? Don't like them much.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick ist die Stadt mit diesem Magierpack, stimmts? Mag die nicht besonders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Well, nothing much to say. He's the leader of Galmair and does a really good job.")
talkEntry:addResponse("What would you say? Why am I carving this statuette here with his face?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Nun, gibt nicht viel zu sagen. Er ist der Anführer von Galmair und macht seine Arbeit sehr gut.")
talkEntry:addResponse("Ja was meinst du, warum ich diese Statue mit seinem Antlitz gerade schnitze?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Fine town, really fine town you know... but only if you have enough silver coins in your pocket, you know what I mean?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Tolle Stadt, wirklich tolle Stadt weißt du. Aber nur wenn du genug Silbermünzen in der Tasche hast, weißt du was ich meine?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Don't know her personally, but wouldn't mind if she really is as good looking as they say. I hear she's a harsh leader though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Kenn die nicht persönlich, aber ich würde mich nicht weigern, wenn sie wirklich so gut aussieht, wie man sagt. Man sagt auch, dass sie eine taffe Herrscherin is.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Don't know her personally, but wouldn't mind if she really is as good looking as they say. I hear she's a harsh leader though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Kenn die nicht persönlich, aber ich würde mich nicht weigern, wenn sie wirklich so gut aussieht, wie man sagt. Man sagt auch, dass sie eine taffe Herrscherin is.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Well, it's a little hot there but the Queen is supposed to be good looking, wouldn't mind if she came here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Nun, ein bisschen warm dort, aber die Königin soll gutaussehen. Würde nichts dagegen haben, wenn sie mal herkommt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Forgive me... I don't know about the human towns, but maybe you are interested to hear about the Silverlake Forest?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Vergebt mir... Ich weiß viel zu wenig über die Städte der Menschen. Aber vielleicht interssiert ihr Euch dafür über meine Heimat zu sprechen, den Silberseewald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Forgive me... I don't know about the human towns, but maybe you are interested to hear about the Silverlake Forest?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Vergebt mir... Ich weiß viel zu wenig über die Städte der Menschen. Aber vielleicht interssiert ihr Euch dafür über meine Heimat zu sprechen, den Silberseewald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Forgive me... I don't know about the human towns, but maybe you are interested to hear about the Silverlake Forest?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Vergebt mir... Ich weiß viel zu wenig über die Städte der Menschen. Aber veilleicht interssiert ihr Euch dafür über meine Heimat zu sprechen, den Silberseewald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("siverlake")
talkEntry:addResponse("I can't remember eating anything more delicious than a Silverlake sturgeon, but you need the right receipe.")
talkEntry:addResponse("Around the Silverlake live a number of elven clans. It is said that anybody who walks around the lake on a dark, new moon night will be blessed by the Five.")
talkEntry:addResponse("The best carvers come out of the forest around the Silverlake, and so it has been for hundreds of years now.")
talkEntry:addResponse("Humans, dwarves and lizardmen don't visit us often, I can't say they are welcome.")
talkEntry:addResponse("No we have no animals. There are enough wild animals to hunt in the forest and the rivers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Silbersee")
talkEntry:addResponse("Es gibt nichts Besseres zu essen als einen gedünsteten Silberseestör. Aber man braucht die richtigen Zutaten.")
talkEntry:addResponse("Rund um den Silbersee leben viele Elfenclans. Es wird gesagt, dass jemand, der in einer Neumondnacht allein um den See geht, von den Göttern gesegnet wird.")
talkEntry:addResponse("Die besten Schnitzer kommen aus den Wäldern um den Silbersee. Und das schon seit hunderten von Jahren.")
talkEntry:addResponse("Menschen, Zwerge oder Echsenmenschen finden selten zu uns. Und wir sehen sie auch nicht so gerne dort.")
talkEntry:addResponse("Nein, wir züchten dort keine Tiere. In den Wäldern und Flüssen lebt genug jagdbares Wild.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I follow the Five, the Elders Gods that created the world as we know nowadays.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Die Fünf mögen mit Euch sein. Huldigen wir denen, die die Welt wie wir sie heute kennen erschaffen haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("The flame of Brágon warms the living as a part of the Five.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Die Flamme Brágons wärmt die Völker als Teil des Segens der Fünf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("Do I look like a merchant? I don't think so!")
talkEntry:addResponse("No, I don't buy anything and I won't ever sell anything to you!")
talkEntry:addResponse("Maybe some other time, not today.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Sehe ich aus wie ein Händler, ich denke nicht!")
talkEntry:addResponse("Nein, ich kaufe und verkaufe nichts. Erst recht nicht an dich!")
talkEntry:addResponse("Ein ander mal vielleicht, heute nich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("No, it's a fairy tale that the figure is in the wood if I start working. In reality, it's in my head.")
talkEntry:addResponse("They say in the swamps of Gynk there exists a tree with marvellous wood. Some of the best sculptures are made from it. This one is a just simple Naldor. I'd pay a lot, if I could get such fine wood here.")
talkEntry:addResponse("I'd bet the Don will cut his hair in a moment, I've finished this statuette. So tell me, how I should cut the hair on the wood?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Wenn ich anfange zu arbeiten, ist die Figur, die ich schnitze, nicht im Holz drin, sondern sie ist in meinem Kopf.")
talkEntry:addResponse("Es heißt in den Sümpfen Galmairs wächst ein erstaunlicher Baum. Sein Holz ist das Beste, was sich Bildschnitzer vorstellen können. Ich würde einiges dafür geben, könnte ich davon etwas haben.")
talkEntry:addResponse("Ich möchte fast wetten der Don lässt sich an dem Tag die Haare schneiden, an dem ich sein Bildnis fertig habe. Nur sagt, wie soll ich die Haare aus Holz schneiden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Truciolo")
talkEntry:addTrigger("Pialla")
talkEntry:addResponse("What's up?")
talkEntry:addResponse("Sorry?")
talkEntry:addResponse("#me nods once and raises an eyebrow.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Truciolo")
talkEntry:addTrigger("Pialla")
talkEntry:addResponse("Ja?")
talkEntry:addResponse("Was wollt ihr?")
talkEntry:addResponse("#me nickt dir zu und zieht eine Braue hoch.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me streicht sich über seine langen Haare.", "#me untangles his long hair.")
talkingNPC:addCycleText("#me blickt sich mistrauisch um und schaut auf ein Bild des Don.", "#me looks around suspiciously and then he looks to a picture of the Don.")
talkingNPC:addCycleText("#me nimmt eine Flasche aus seiner Tasche und trinkt einen Schluck", "#me pulls a bottle from his bag and takes a swig.")
talkingNPC:addCycleText("#me wischt sich mit dem Handrücken über die Stirn.", "#me wipes his hand over his forehead.")
talkingNPC:addCycleText("#me brummt leise etwas vor sich hin.", "#me grumbles something to himself.")
talkingNPC:addCycleText("#me streicht mit zusammengekniffenen Augen über seine Arbeit. Etwas Staub löst sich daraus und schwebt zu Boden.", "#me pats the piece of wood he is working on. Some dust gets released and sinks to the ground.")
talkingNPC:addCycleText("#me lächelt verträumt.", "#me smiles dreamily.")
talkingNPC:addCycleText("#me pfeift die Melodie eines alten elfischen Schlachtliedes.", "#me whistles the tune of an old battle song.")
talkingNPC:addCycleText("#me schaut sich einen besonders langen Span an.", "#me examines a very long splinter.")
talkingNPC:addCycleText("#me blickt mit zusammengekniffenen Augen in den Himmel.", "#me glances to the sky with narrowed eyes.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(3)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Ein in seine Arbeit vertiefter Elf schnitzt an einer Statue, die den Don darstellen könnte.", "A crafting elf, carving a wooden statue that looks like the Don himself.")
mainNPC:setUseMessage("Fass mich nicht an!", "Don't touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 830)
mainNPC:setEquipment(3, 809)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 2752)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
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
