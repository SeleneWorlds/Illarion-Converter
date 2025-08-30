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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the alchemist Pasinn. Keywords: Hello, quest, alchemy, Kaefity."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Alchemist Pasinn. Schlüsselwörter: Hallo, Quest, Alchemie, Kaefity."))
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
talkEntry:addResponse("Be greeted in the name of the Five.")
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
talkEntry:addResponse("Ich grüße euch im Namen der Fünf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Be greeted in the name of the Five.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Ich grüße euch im Namen der Fünf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("May the Five watch over you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Mögen die Fünf über euch wachen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("May the Five watch over you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Mögen die Fünf über euch wachen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I am well, but I would be better if my chore here was done.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Es geht mir gut, aber es ginge mir besser, wäre meine Aufgabe hier bereits erledigt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Pasinn the Alchemist.")
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
talkEntry:addResponse("Ich bin Pasinn der Alchemist.")
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
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am an alchemist, working for the Don right now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin ein Alchemist und arbeite derzeit für den Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am an alchemist, working for the Don right now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin ein Alchemist und arbeite derzeit für den Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I never heard of such a place.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Davon habe ich noch nie gehört.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Nice to meet you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Es freut mich, eure Bekanntschaft zu machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("alchemist")
talkEntry:addTrigger("alchemy")
talkEntry:addResponse("An alchemist works with the structures of plants to create formulations.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alchemist")
talkEntry:addTrigger("alchemie")
talkEntry:addResponse("Ein Alchemist arbeitet mit den Strukturen von Pflanzen um Formeln zu kreieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("kaefity")
talkEntry:addResponse("Kaefity is a Rat Alchemist that lives below. The area is called Viridian Needles Lair, its named after a crazy old dwarf that used to live there I have heard. Kaefity is up to something, we must discover what.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kaefity")
talkEntry:addResponse("Kaefity ist ein Rattenalchemist, der im Untergrund lebt. Das Gebiet wird als Viridian Needles Unterschlupf bezeichnet und ist, wie ich gehört habe, nach einem verrückten alten Zwergen benannt, der einst hier lebte. Kaefity hat irgendetwas vor, wir müssen herausfinden was.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("I have little use for the Archmage and his magics, but the forests around Runewick are nice for collecting herbs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ich weiß nur wenig mit dem Erzmagier und seiner Magie anzufangen, aber der Wald um Runewick eignet sich hervorragend, um Kräuter zu sammeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I have little use for the Archmage and his magics, but the forests around Runewick are nice for collecting herbs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ich weiß nur wenig mit dem Erzmagier und seiner Magie anzufangen, aber der Wald um Runewick eignet sich hervorragend, um Kräuter zu sammeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("I have little use for the Archmage and his magics, but the forests around Runewick are nice for collecting herbs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ich weiß nur wenig mit dem Erzmagier und seiner Magie anzufangen, aber der Wald um Runewick eignet sich hervorragend, um Kräuter zu sammeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("The Don is a tough taskmaster for Galmair, but he is fair. I just hope to finish this job he sent me to do soon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don ist ein strenger Herr für Galmair, aber auch fair. Ich hoffe nur, dass ich die Aufgabe, die er mir aufgetragen hat, bald vollenden kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("The Don is a tough taskmaster for Galmair, but he is fair. I just hope to finish this job he sent me to do soon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Der Don ist ein strenger Herr für Galmair, aber auch fair. Ich hoffe nur, dass ich die Aufgabe, die er mir aufgetragen hat, bald vollenden kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Cadomyr is ruled by the Queen. Ruled by a woman. Nothing more needs said.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Der Don ist ein strenger Herr für Galmair, aber auch fair. Ich hoffe nur, dass ich die Aufgabe, die er mir aufgetragen hat, bald vollenden kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Cadomyr is ruled by the Queen. Ruled by a woman. Nothing more needs said.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Cadomyr wird von einer Königin regiert. Einer Frau. Dem ist nichts hinzuzufügen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is ruled by the Queen. Ruled by a woman. Nothing more needs said.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr wird von einer Königin regiert. Einer Frau. Dem ist nichts hinzuzufügen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Viridian Needles Lair I"))
talkEntry:addConsequence(consequence_quest(539, "=", 1))
talkEntry:addResponse("There is an area here below ground ran by a ratman alchemist Kaefity. He calls the place Viridian Needles Lair. I have heard of some poisoned coins these ratmen have. I need to study some to see if I can use this process in my poison making. Please locate me 15 poison coins that the ratman alchemist Kaefity is making below in the cauldrons.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Viridian Nadeln Höhle I"))
talkEntry:addConsequence(consequence_quest(539, "=", 1))
talkEntry:addResponse("Es gibt hier ein Gebiet im Untergrund, das von einem Rattenalchemisten namens Kaefity kontrolliert wird. Er nennt den Ort Viridian Needles Unterschlupf. Ich habe von einigen Gifttalern gehört, die diese Rattenmenschen haben sollen. Ich muss mir ein paar davon genauer ansehen, um festzustellen, ob das für meine Giftherstellung interessant ist. Bitte sucht 15 der Gifttaler, die der Rattenalchemist Kaefity im Untergrund in seinen Kesseln herstellt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Viridian Needles Lair I"))
talkEntry:addConsequence(consequence_quest(539, "=", 1))
talkEntry:addResponse("There is an area here below ground ran by a ratman alchemist Kaefity. He calls the place Viridian Needles Lair. I have heard of some poisoned coins these ratmen have. I need to study some to see if I can use this process in my poison making. Please locate me 15 poison coins that the ratman alchemist Kaefity is making below in the cauldrons.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Viridian Nadeln Höhle I"))
talkEntry:addConsequence(consequence_quest(539, "=", 1))
talkEntry:addResponse("Es gibt hier ein Gebiet im Untergrund, das von einem Rattenalchemisten namens Kaefity kontrolliert wird. Er nennt den Ort Viridian Needles Unterschlupf. Ich habe von einigen Gifttalern gehört, die diese Rattenmenschen haben sollen. Ich muss mir ein paar davon genauer ansehen, um festzustellen, ob das für meine Giftherstellung interessant ist. Bitte sucht 15 der Gifttaler, die der Rattenalchemist Kaefity im Untergrund in seinen Kesseln herstellt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 1))
talkEntry:addCondition(condition_item(3078, "all", ">", 14, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded fifty silver coins."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_deleteitem(3078, 15, nil))
talkEntry:addConsequence(consequence_quest(539, "=", 2))
talkEntry:addResponse("Oh, thank you. Here, take this reward for your efforts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 1))
talkEntry:addCondition(condition_item(3078, "all", ">", 14, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünfzig Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_deleteitem(3078, 15, nil))
talkEntry:addConsequence(consequence_quest(539, "=", 2))
talkEntry:addResponse("Oh, vielen Dank. Hier, eine kleine Entschädigung für eure Mühen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Please locate me 15 poison coins that the ratman alchemist Kaefity is making below in the cauldrons.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bitte sucht 15 der Gifttaler, die der Rattenalchemist Kaefity im Untergrund in seinen Kesseln herstellt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Please locate me 15 poison coins that the ratman alchemist Kaefity is making below in the cauldrons.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Bitte sucht 15 der Gifttaler, die der Rattenalchemist Kaefity im Untergrund in seinen Kesseln herstellt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Viridian Needles Lair II"))
talkEntry:addConsequence(consequence_quest(539, "=", 3))
talkEntry:addResponse("I need to see more of what that alchemist ratman is up to. Steal a potion from one of the filled cauldrons from below. He won't like it, so watch yourself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Viridian Nadeln Höhle II"))
talkEntry:addConsequence(consequence_quest(539, "=", 3))
talkEntry:addResponse("Ich muss mehr darüber wissen, was der Rattenmensch vor hat. Stehlt einen Trank aus einem der vollen Kessel dort unten. Es wird ihm nicht gefallen, also seid vorsichtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Viridian Needles Lair II"))
talkEntry:addConsequence(consequence_quest(539, "=", 3))
talkEntry:addResponse("I need to see more of what that alchemist ratman is up to. Steal a potion from one of the filled cauldrons from below. He won't like it, so watch yourself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Viridian Nadeln Höhle II"))
talkEntry:addConsequence(consequence_quest(539, "=", 3))
talkEntry:addResponse("Ich muss mehr darüber wissen, was der Rattenmensch vor hat. Stehlt einen Trank aus einem der vollen Kessel dort unten. Es wird ihm nicht gefallen, also seid vorsichtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 3))
talkEntry:addCondition(condition_quest(542, "=", 3))
talkEntry:addCondition(condition_item(2506, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded seventy five silver coins."))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_deleteitem(2506, 1, nil))
talkEntry:addConsequence(consequence_quest(539, "=", 4))
talkEntry:addResponse("This potion is something I have been dreading. It has the potential to annihilate all life as we know it if completed properly!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 3))
talkEntry:addCondition(condition_quest(542, "=", 3))
talkEntry:addCondition(condition_item(2506, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünfundsiebzig Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_deleteitem(2506, 1, nil))
talkEntry:addConsequence(consequence_quest(539, "=", 4))
talkEntry:addResponse("Dieser Trank ist etwas, vor dem mir gegraut hat. Er könnte womöglich alles Leben, so wie wir es kennen auslöschen, wenn er korrekt vollendet wird.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 3))
talkEntry:addCondition(condition_quest(542, "=", 1))
talkEntry:addCondition(condition_item(2504, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_deleteitem(2504, 1, nil))
talkEntry:addConsequence(consequence_quest(542, "=", 0))
talkEntry:addResponse("#me sniffs at the potion and then dumps it on the ground. 'Coloured water, please try one more time.' ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 3))
talkEntry:addCondition(condition_quest(542, "=", 1))
talkEntry:addCondition(condition_item(2504, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_deleteitem(2504, 1, nil))
talkEntry:addConsequence(consequence_quest(542, "=", 0))
talkEntry:addResponse("#me schnuppert an dem Trank und leert ihn dann auf den Boden. 'Gefärbtes Wasser, bitte versucht es noch einmal.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 3))
talkEntry:addCondition(condition_quest(542, "=", 2))
talkEntry:addCondition(condition_item(2503, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_deleteitem(2503, 1, nil))
talkEntry:addConsequence(consequence_quest(542, "=", 0))
talkEntry:addResponse("This seems to be a simple healing potion. Please go back and try to find something else. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 3))
talkEntry:addCondition(condition_quest(542, "=", 2))
talkEntry:addCondition(condition_item(2503, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_deleteitem(2503, 1, nil))
talkEntry:addConsequence(consequence_quest(542, "=", 0))
talkEntry:addResponse("Dies scheint ein einfacher Heiltrank zu sein. Bitte geht zurück und versucht, etwas anderes zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I need to see more of what that alchemist ratman is up to. Steal a potion from one of the filled cauldrons from below. He won't like it, so watch yourself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich muss mehr darüber wissen, was der Rattenmensch vor hat. Stehlt einen Trank aus einem der vollen Kessel dort unten. Es wird ihm nicht gefallen, also seid vorsichtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I need to see more of what that alchemist ratman is up to. Steal a potion from one of the filled cauldrons from below. He won't like it, so watch yourself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich muss mehr darüber wissen, was der Rattenmensch vor hat. Stehlt einen Trank aus einem der vollen Kessel dort unten. Es wird ihm nicht gefallen, also seid vorsichtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Viridian Needles Lair III"))
talkEntry:addConsequence(consequence_quest(539, "=", 5))
talkEntry:addResponse("It is important that I see Kaefity's recipe for this potion. Please try and find it for me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Viridian Nadeln Höhle III"))
talkEntry:addConsequence(consequence_quest(539, "=", 5))
talkEntry:addResponse("Es ist wichtig, dass ich Kaefitys Rezept für diesen Trank sehen kann. Bitte versucht es für mich zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Viridian Needles Lair III"))
talkEntry:addConsequence(consequence_quest(539, "=", 5))
talkEntry:addResponse("It is important that I see Kaefity's recipe for this potion. Please try and find it for me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Viridian Nadeln Höhle III"))
talkEntry:addConsequence(consequence_quest(539, "=", 5))
talkEntry:addResponse("Es ist wichtig, dass ich Kaefitys Rezept für diesen Trank sehen kann. Bitte versucht es für mich zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded one hundred silver coins"))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(539, "=", 7))
talkEntry:addResponse("Thank you for finding this recipe! I will need some time to review it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 6))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst einhundert Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(539, "=", 7))
talkEntry:addResponse("Vielen Dank, dass ihr dieses Rezept für mich gefunden habt! Ich werde einige Zeit brauchen, um es mir genauer anzusehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("It is important that I see Kaefity's recipe for this potion. Please try and find it for me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 5))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich muss unbedingt Kaefitys Rezept für diesen Trank sehen. Bitte versucht es für mich zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 5))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("It is important that I see Kaefity's recipe for this potion. Please try and find it for me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 5))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich muss unbedingt Kaefitys Rezept für diesen Trank sehen. Bitte versucht es für mich zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Viridian Needles Lair IV"))
talkEntry:addConsequence(consequence_quest(539, "=", 8))
talkEntry:addResponse("Kill Kaefity's pet, the swamp beast, for I fear they are somehow tied together! After it is destroyed we can stop its owner's work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 7))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Viridian Nadeln Höhle IV"))
talkEntry:addConsequence(consequence_quest(539, "=", 8))
talkEntry:addResponse("Tötet Kaefitys Schoßtier der Sumpfmonster, denn ich fürchte, dass sie irgendwie zusammenhängen. Nachdem es vernichtet ist, können wir die Machenschaften seines Meisters beenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 7))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Viridian Needles Lair IV"))
talkEntry:addConsequence(consequence_quest(539, "=", 8))
talkEntry:addResponse("Kill Kaefity's pet, the swamp beast, for I fear they are somehow tied together! After it is destroyed we can stop its owner's work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 7))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Viridian Nadeln Höhle IV"))
talkEntry:addConsequence(consequence_quest(539, "=", 8))
talkEntry:addResponse("Tötet Kaefitys Schoßtier der Sumpfmonster, denn ich fürchte, dass sie irgendwie zusammenhängen. Nachdem es vernichtet ist, können wir die Machenschaften seines Meisters beenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded one hundred silver coins."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(539, "=", 10))
talkEntry:addResponse("It is great news the beast is destroyed. Now we can work on destroying Kaefity.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 9))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst einhundert Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(539, "=", 10))
talkEntry:addResponse("Es sind wunderbare Nachrichten, dass das Biest vernichtet wurde. Nun können wir uns darauf konzentrieren, Kaefity selbst zu töten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Kill Kaefity's pet, the swamp beast, for I fear they are somehow tied together! After it is destroyed we can stop its owner's work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 8))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Tötet Kaefitys Schoßtier der Sumpfmonster, denn ich fürchte, dass sie irgendwie zusammenhängen. Nachdem es vernichtet ist, können wir die Machenschaften seines Meisters beenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 8))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Kill Kaefity's pet, the swamp beast, for I fear they are somehow tied together! After it is destroyed we can stop its owner's work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 8))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Tötet Kaefitys Schoßtier der Sumpfmonster, denn ich fürchte, dass sie irgendwie zusammenhängen. Nachdem es vernichtet ist, können wir die Machenschaften seines Meisters beenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Viridian Needles Lair IV"))
talkEntry:addConsequence(consequence_quest(539, "=", 11))
talkEntry:addResponse("This recipe must not be completed! Kaefity, the Crazy Rat Alchemist, must be killed before he can deduce the missing ingredients!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 10))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Viridian Nadeln Höhle IV"))
talkEntry:addConsequence(consequence_quest(539, "=", 11))
talkEntry:addResponse("Dieses Rezept darf auf keinen Fall vollendet werden! Kaefity der Verrückter Rattenalchemist muss vernichtet werden, ehe es ihm gelingt, die fehlenden Zutaten zu finden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 10))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Viridian Needles Lair IV"))
talkEntry:addConsequence(consequence_quest(539, "=", 11))
talkEntry:addResponse("This recipe must not be completed! Kaefity, the Crazy Rat Alchemist, must be killed before he can deduce the missing ingredients!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 10))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Viridian Nadeln Höhle IV"))
talkEntry:addConsequence(consequence_quest(539, "=", 11))
talkEntry:addResponse("Dieses Rezept darf auf keinen Fall vollendet werden! Kaefity der Verrückter Rattenalchemist muss vernichtet werden, ehe es ihm gelingt, die fehlenden Zutaten zu finden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 12))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 150 silver coins."))
talkEntry:addConsequence(consequence_money("+", 15000))
talkEntry:addConsequence(consequence_quest(539, "=", 13))
talkEntry:addResponse("I am glad he is gone. I will work on destroying the last of his work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 12))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 150 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 15000))
talkEntry:addConsequence(consequence_quest(539, "=", 13))
talkEntry:addResponse("Ich bin froh darüber, dass er getötet wurde. Ich werde mich daran machen, den letzten Rest seiner Arbeit zu vernichten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 11))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("This recipe must not be completed! Kaefity, the Crazy Rat Alchemist, must be killed before he can deduce the missing ingredients!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 11))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Dieses Rezept darf auf keinen Fall vollendet werden! Kaefity der Verrückter Rattenalchemist muss vernichtet werden, ehe es ihm gelingt, die fehlenden Zutaten zu finden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 11))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("This recipe must not be completed! Kaefity, the Crazy Rat Alchemist, must be killed before he can deduce the missing ingredients!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 11))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Dieses Rezept darf auf keinen Fall vollendet werden! Kaefity der Verrückter Rattenalchemist muss vernichtet werden, ehe es ihm gelingt, die fehlenden Zutaten zu finden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 13))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You have been a great assistance. Now I must finish studying this paper to make sure no one finishes this potion. May the Five guide you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 13))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ihr habt großartige Arbeit geleistet. Nun muss ich meine Studien dieses Rezepts weiterführen, um sicher zu gehen, dass niemand diesen Trank vollendet. Mögen die Fünf über euch wachen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 13))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You have been a great assistance. Now I must finish studying this paper to make sure no one finishes this potion. May the Five guide you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(539, "=", 13))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ihr habt großartige Arbeit geleistet. Nun muss ich meine Studien dieses Rezepts weiterführen, um sicher zu gehen, dass niemand diesen Trank vollendet. Mögen die Fünf über euch wachen.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Ich habe gehört, dass sie ihr Schoßtier, einen Höllenhund, mit Zuckerrohr füttern. Eine seltsame Sache ist das.", "I have heard they feed their pet hellhound sugarcane. Odd thing, that is.")
talkingNPC:addCycleText("Es gibt noch so viel zu lernen.", "So much to learn yet.")
talkingNPC:addCycleText("Wo ist meine Brille?", "Where are my spectacles?")
talkingNPC:addCycleText("Kaefity weiß womöglich schon zu viel... *den Rest murmelt er zu sich selbst.*", "Kaefity may know too much already... *the rest is mumbled to himself.*")
talkingNPC:addCycleText("#me liest in einem sehr dicken, alt aussehenden Buch.", "#me reads a very thick and old looking book.")
talkingNPC:addCycleText("#me putzt sich geräuschvoll mit einem sauberen Tuch die Nase.", "#me blows his nose rather loudly into a clean cloth.")
talkingNPC:addCycleText("Ich sollte mehr Kräuter sammeln und neue Tränke ausprobieren, statt diesem Wahnsinn hier!", "I should be gathering more herbs and testing new potions instead of this madness.")
talkingNPC:addCycleText("#me sortiert sorgfältig Kräuter in einer großen Ledertasche.", "#me carefully sorts through a large bag of herbs. ")
talkingNPC:addCycleText("#me blickt für einige Augenblicke auf seine Schuhe hinunter, ehe er mit seinen Studien fortfährt.", "#me looks down at his shoes for a time before returning to his studies.")
talkingNPC:addCycleText("#me sieht hinauf zu den Wolken, als würde er dort nach etwas suchen.", "#me gazes at the clouds as if searching for something there.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(3)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der Alchemist Pasinn.", "This NPC is the alchemist Pasinn.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt drein.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 816)
mainNPC:setEquipment(11, 55)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 367)
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
