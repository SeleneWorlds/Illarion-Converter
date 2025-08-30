local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the Harbour Master Henry Cunnigan. He will gladly help you take your first steps in Illarion. Follow his advice to learn how to equip and use items. Keywords: Hello, Illarion, Troll's Haven, Harbour."))
talkEntry:addResponse("Henry Cunnigan, Harbour Master of Troll's Haven, how can I help?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC heißt Henry Cunnigan und ist Hafenmeister. Er wird dir sicherlich gerne dabei helfen in Illarion Fuß zu fassen. Folge seinen Anweisungen und lerne wie man Items ausrüstet und benutzt. Schlüsselwörter: Hallo, Illarion, Trollshaven, Hafen."))
talkEntry:addResponse("Henry Cunnigan, Hafenmeister von Trollshaven, wie kann ich helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 0))
talkEntry:addCondition(condition_quest(325, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial I'] To find the torch Henry Cunnigan gave you, make sure your chat box is deactivated (black) and press 'I' to open your inventory or click on the bag icon in the bottom right corner of the window. To open your bag, press 'B' or double click on the leather bag in your inventory. Click the torch and drag it to the empty shield slot in your inventory using your mouse to equip it. You may need to remove any existing item from that slot to your bag first. To separate a single torch from a stack in your inventory, hold down shift as you click and drag, accepting the default value of '1' in the pop up by clicking 'OK'."))
talkEntry:addConsequence(consequence_item(391, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(330, "=", 1))
talkEntry:addResponse("Welcome to Illarion, %CHARNAME! Henry Cunnigan, Harbour Master, at your service. Here in Troll's Haven, I will guide you through your first steps and introduce you to others who can help you determine your path forward. Take this torch as you certainly don't want to find yourself lost in a strange land come twilight.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 0))
talkEntry:addCondition(condition_quest(325, "=", 1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial I'] Um die Fackel zu finden, die Henry Cunnigan dir gegeben hat, deaktiviere die Chatbox (schwarz) und drücke 'I', um dein Inventar zu öffnen oder klicke das Taschen-Icon in der rechten unteren Ecke des Bildschirms. Um deine Tasche zu öffnen, drücke 'B' oder doppelklicke die Ledertasche in deinem Inventar. Ziehe nun mit der linken Maustaste die Fackel in den leeren Schild-Slot in deinem Inventar. Möglicherweise musst du zunächst ein in diesem Slot ausgerüstetes Item in deine Tasche verschieben. Um eine einzelne Fackel aus einem Stapel zu bewegen, musst du Shift gedrückt halten während du ziehst und dann die Anzahl '1' in dem Popup Fenster mit 'OK' bestätigen."))
talkEntry:addConsequence(consequence_item(391, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(330, "=", 1))
talkEntry:addResponse("Willkommen in Illarion, %CHARNAME! Henry Cunnigan, Hafenmeister, stets zu Diensten. Hier in Trollshaven werde ich dich durch deine ersten Schritte begleiten und dich anderen vorstellen, die dir helfen können deinen Weg zu wählen. Nimm diese Fackel, du möchtest dich sicherlich nicht im Zwielicht in einem fremden Land verlaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 1))
talkEntry:addCondition(condition_item(391, "all", "=", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial I'] You can buy a replacement from the merchant Hook Gowan in the market to south west, or find someone to trade with."))
talkEntry:addResponse("Alas, it looks like you have lost your torch. Hook Gowan in the market can probably sell you another torch. Be careful! Without light you could easily find yourself lost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 1))
talkEntry:addCondition(condition_item(391, "all", "=", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial I'] Du kannst Ersatz vom Händler Hook Gowan auf dem Markt im Südwesten kaufen, oder du findest jemand anderen zum Handeln."))
talkEntry:addResponse("Es sieht leider so aus, als hättest du deine Fackel verloren. Hook Gowan auf dem Markt kann dir vermutlich eine andere Fackel verkaufen. Sei vorsichtig! Ohne Licht könntest du dich leicht verirren. Ich habe noch eine Fackel, die du mitnehmen kannst, aber pass auf, dass du sie nicht verlierst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial I'] Using your mouse, left click and drag the torch to the empty shield slot in your inventory to equip it."))
talkEntry:addResponse("You will need to hold the torch aloft before you can light it, otherwise you risk burning yourself!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial I'] Linksklicke und ziehe die Fackel mit deiner Maus in den leeren Schild-Slot in deinem Inventar um sie auszurüsten."))
talkEntry:addResponse("Du musst die Fackel fest in deiner Hand halten, bevor du sie entzünden kannst, sonst riskierst du dich zu verbrennen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 2))
talkEntry:addCondition(condition_item(391, "all", "=", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial I'] You can buy a replacement from the merchant Hook Gowan in the market to south west, or find someone to trade with."))
talkEntry:addResponse("Alas, it looks like you have lost your torch. Hook Gowan in the market can probably sell you another torch. Be careful! Without light you could easily find yourself lost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 2))
talkEntry:addCondition(condition_item(391, "all", "=", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial I'] Du kannst Ersatz vom Händler Hook Gowan auf dem Markt im Südwesten kaufen, oder du findest jemand anderen zum Handeln."))
talkEntry:addResponse("Es sieht leider so aus, als hättest du deine Fackel verloren. Hook Gowan auf dem Markt kann dir vermutlich eine andere Fackel verkaufen. Sei vorsichtig! Ohne Licht könntest du dich leicht verirren. Ich habe noch eine Fackel, die du mitnehmen kannst, aber pass auf, dass du sie nicht verlierst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial I'] Check the torch is in either the shield or sword slot of your inventory and double click on it using your mouse."))
talkEntry:addResponse("Hold the torch steady and check you can ignite it. No sense in carrying something if you can't use it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial I'] Stelle sicher, dass die Fackel entweder in deinem Schild oder Schwert Slot deines Inventars ist und doppelklicke sie mit der Maus."))
talkEntry:addResponse("Halte die Fackel fest und teste, ob du sie entzünden kannst. Es macht wenig Sinn, etwas mit sich rumzutragen, das man nicht gebrauchen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I don't have any further quests for you but I hope you enjoy your time in Illarion. If you haven't already sought the advice of Nimbur Goldbrew, I recommend speaking to him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe keine weiteren Aufgaben mehr für dich, aber ich hoffe, dass du deine Zeit in Illarion genießt. Falls du noch nicht die Hilfe von Nimbur Goldbrew in Anspruch genommen hast, empfehle ich dir mit ihm zu sprechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I don't have any further quests for you but I hope you enjoy your time in Illarion. If you haven't already sought the advice of Nimbur Goldbrew, I recommend speaking to him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(330, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe keine weiteren Aufgaben mehr für dich, aber ich hoffe, dass du deine Zeit in Illarion genießt. Falls du noch nicht die Hilfe von Nimbur Goldbrew in Anspruch genommen hast, empfehle ich dir mit ihm zu sprechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I'm here to help new arrivals but I'm sure you will find plenty of opportunities throughout these lands.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich bin hier um Neuankömmlingen zu helfen, aber ich bin mir sicher, dass du viele andere Gelegenheiten in diesen Landen findest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I'm here to help new arrivals but I'm sure you will find plenty of opportunities throughout these lands.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich bin hier um Neuankömmlingen zu helfen, aber ich bin mir sicher, dass du viele andere Gelegenheiten in diesen Landen findest.")
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
talkEntry:addResponse("Greetings traveller!")
talkEntry:addResponse("Hello and welcome!")
talkEntry:addResponse("Welcome to Troll's Haven!")
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
talkEntry:addResponse("Sei gegrüßt, Reisender!")
talkEntry:addResponse("Hallo und willkommen!")
talkEntry:addResponse("Willkommen in Trollshaven!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetings traveller!")
talkEntry:addResponse("Hello and welcome!")
talkEntry:addResponse("Welcome to Troll's Haven!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Sei gegrüßt, Reisender!")
talkEntry:addResponse("Hallo und willkommen!")
talkEntry:addResponse("Willkommen in Trollshaven!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell!")
talkEntry:addResponse("Safe travels!")
talkEntry:addResponse("Goodbye and good luck!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addTrigger("Bis bald")
talkEntry:addResponse("Bis bald!")
talkEntry:addResponse("Gute Reise!")
talkEntry:addResponse("Leb wohl und viel Glück!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Farewell!")
talkEntry:addResponse("Safe travels!")
talkEntry:addResponse("Goodbye and good luck!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Bis bald!")
talkEntry:addResponse("Gute Reise!")
talkEntry:addResponse("Leb wohl und viel Glück!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How do you feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I'm fine, and you?")
talkEntry:addResponse("I feel great, thanks for asking.")
talkEntry:addResponse("Can't complain!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befinden")
talkEntry:addResponse("Es geht mir gut. Und selbst?")
talkEntry:addResponse("Ich fühle mich großartig, danke der Nachfrage.")
talkEntry:addResponse("Ich kann mich nicht beklagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Henry Cunnigan, Harbour Master of Troll's Haven.")
talkEntry:addResponse("I'm Henry Cunnigan and I welcome new arrivals to Troll's Haven.")
talkEntry:addResponse("Henry Cunnigan, I take care of arrivals and departures from this port.")
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
talkEntry:addResponse("Henry Cunnigan, Hafenmeister von Trollshaven.")
talkEntry:addResponse("Ich bin Henry Cunnigan und ich heiße Neuankömmlinge in Trollshaven willkommen.")
talkEntry:addResponse("Henry Cunnigan, ich nehme mich Neuankömmlingen und der Fracht von diesem Steg an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addTrigger("I am called")
talkEntry:addTrigger("I'm called")
talkEntry:addResponse("Pleased to meet you, I will try to remember it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addTrigger("ich heiße")
talkEntry:addResponse("Freut mich, dich kennen zu lernen. Ich werde versuchen, es mir zu merken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addTrigger("work")
talkEntry:addResponse("I'm the Harbour Master here at Troll's Haven, I welcome new arrivals and see to any boats as they arrive and depart from the harbour.")
talkEntry:addResponse("As the Harbour Master I see cargo is unloaded and loaded from the right boats, as well as helping any new arrivals.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addTrigger("arbeit")
talkEntry:addResponse("Ich bin der Hafenmeister hier in Trollshaven, ich heiße Neuankömmlinge willkommen und kümmere mich um die Boote die hier ankommen und ablegen.")
talkEntry:addResponse("Als Hafenmeister passe ich auf, dass die Waren von und auf die richtigen Schiffe geladen werden und außerdem helfe ich Neuankömmlingen bei ihrer Ankunft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I'm the Harbour Master here at Troll's Haven, I welcome new arrivals and see to any boats as they arrive and depart from the harbour.")
talkEntry:addResponse("As the Harbour Master I see cargo is unloaded and loaded from the right boats, as well as helping any new arrivals.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin der Hafenmeister hier in Trollshaven, ich heiße Neuankömmlinge willkommen und kümmere mich um die Boote die hier ankommen und ablegen.")
talkEntry:addResponse("Als Hafenmeister passe ich auf, dass die Waren von und auf die richtigen Schiffe geladen werden und außerdem helfe ich Neuankömmlingen bei ihrer Ankunft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Illarion")
talkEntry:addResponse("Most travellers reach Illarion by sea as the peninsula is separated from the mainland by the Nameless Mountains. Illarion is home to the realms of Cadomyr, Galmair and Runewick. Viola Baywillow will be able to tell you much more about them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Illarion")
talkEntry:addResponse("Die meisten Reisenden erreichen Illarion über das Meer, da die Halbinsel durch die Namenlosen Berge vom Festland getrennt ist. Illarion beherbergt die Reiche Cadomyr, Galmair und Runewick. Viola Baywillow kann dir mehr über sie erzählen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Troll's Haven")
talkEntry:addTrigger("Trolls Haven")
talkEntry:addTrigger("Trollshaven")
talkEntry:addResponse("This place is Troll's Haven, home to the Hemp Necktie Inn. People come from all over Illarion and beyond to trade in the market, join other adventurers, or participate in some of the entertainment on offer. Those looking to make a life here in Illarion, however, tend to head for one of the three realms, Cadomyr, Galmair and Runwick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Troll's Haven")
talkEntry:addTrigger("Trolls Haven")
talkEntry:addTrigger("Trollshaven")
talkEntry:addResponse("Dies ist Trollshaven, Heimat der Taverne zur Hanfschlinge. Leute kommen aus ganz Illarion und von darüber hinaus um am Markt zu handeln, an Abenteuern teilzunehmen oder anderweitige Unterhaltung zu finden. Jene, die sich ein Leben in Illarion aufbauen wollen, zieht es jedoch meistens in eines der drei Reiche, Cadomyr, Galmair und Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("harbour")
talkEntry:addTrigger("harbor")
talkEntry:addTrigger("dock")
talkEntry:addResponse("Ferries depart from Troll's Haven all the time for the harbours at Cadomyr, Galmair and Runewick. They can also take you to some more remote locations on the peninsula, so take an opportunity to explore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("hafen")
talkEntry:addTrigger("anlege")
talkEntry:addTrigger("steg")
talkEntry:addResponse("Ständig legen Fähren von Trollshaven ab und steuern die Häfen von Cadomyr, Galmair und Runewick an. Sie können dich auch an etwas abgelegenere Orte auf der Halbinsel bringen. Nutz die Gelegenheit zum Erkunden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("port")
talkEntry:addTrigger("pier")
talkEntry:addResponse("Ferries depart from Troll's Haven all the time for the harbours at Cadomyr, Galmair and Runewick. They can also take you to some more remote locations on the peninsula, so take an opportunity to explore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("port")
talkEntry:addTrigger("pier")
talkEntry:addResponse("Ständig legen Fähren von Trollshaven ab und steuern die Häfen von Cadomyr, Galmair und Runewick an. Sie können dich auch an etwas abgelegenere Orte auf der Halbinsel bringen. Nutz die Gelegenheit zum Erkunden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ferry")
talkEntry:addTrigger("boat")
talkEntry:addTrigger("ship")
talkEntry:addResponse("Boats sail all around the peninsula and you can catch one to any of the three realms of Cadomyr, Galmair and Runewick from the harbour here at Troll's Haven. Take the path west to the main pier if you want to set sail.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("fähre")
talkEntry:addTrigger("boot")
talkEntry:addTrigger("schiff")
talkEntry:addResponse("Schiffe segeln um die gesamte Halbinsel herum. Von Trollshaven aus kannst du eins zu jedem der drei Reiche nehmen. Folge dem Pfad gen Westen zum Pier, wenn du Segel setzen möchtest.")
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
talkEntry:addResponse("I am not a trader, I'm the Harbour Master!")
talkEntry:addResponse("I'm sorry, but I don't trade anything.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kauf")
talkEntry:addTrigger("waren")
talkEntry:addTrigger("koste")
talkEntry:addTrigger("Handel")
talkEntry:addTrigger("veräußer")
talkEntry:addTrigger("veräusser")
talkEntry:addTrigger("erwerb")
talkEntry:addResponse("Ich bin kein Händler, ich bin der Hafenmeister!")
talkEntry:addResponse("Es tut mir leid, aber ich handel nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell")
talkEntry:addTrigger("something")
talkEntry:addResponse("If you need any assistance just ask for 'help'. Viola Baywillow can tell you lots more about Illarion and the realms though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl")
talkEntry:addTrigger("etwas")
talkEntry:addResponse("Falls du meine Unterstützung brauchst, frag einfach nach 'Hilfe'. Allerdings kann Viola Baywillow dir viel mehr über Illarion und die Reiche erzählen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Henry")
talkEntry:addTrigger("Cunnigan")
talkEntry:addResponse("That's me! Just ask for 'help' if you are new around here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Henry")
talkEntry:addTrigger("Cunnigan")
talkEntry:addResponse("Das bin ich! Sag einfach Bescheid, falls du neu hier bist und 'Hilfe' brauchst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Sorry, I don't quite understand. Just ask me for 'help' and I'll see what I can do for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger(".*")
talkEntry:addResponse("Das habe ich jetzt nicht richtig verstanden. Frag mich einfach nach 'Hilfe' und ich schau, was ich für dich tun kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Platz da! Diese Fracht muss schnell abgeladen werden!", "Make way! That cargo needs to be unloaded quickly!")
talkingNPC:addCycleText("Willkommen in Illarion! Wenn du neu in diesen Landen bist, lass mich dir helfen.", "Welcome to Illarion! If you are new to these lands, let me help you.")
talkingNPC:addCycleText("Wenn du nicht genau weißt wohin du gehen sollst, komm zu mir.", "If you're not sure where to go, come and speak to me.")
talkingNPC:addCycleText("#me winkt dem Kapitän eines einlaufenden Schiffs zu und überprüft etwas in seinem Logbuch.", "#me hails the captain of an arriving vessel and checks it off in his journal.")
talkingNPC:addCycleText("Willkommen in Trollshaven, Heimat der Taverne zur Hanfschlinge!", "Welcome to Troll's Haven, home of the Hemp Necktie Inn!")
talkingNPC:addCycleText("Bist du gerade erst angekommen? Komm zu mir, falls du Hilfe brauchst.", "Have you just arrived? Come and talk to me if you need some help.")
talkingNPC:addCycleText("#me beobachtet aufmerksam die am Pier vorbeiziehenden Schiffe.", "#me watches attentively as a ship draws alongside the pier.")
talkingNPC:addCycleText("#me bedeutet jenen, die von den Schiffen an Land kommen, näher zu kommen.", "#me beckons to those disembarking from a boat, calling them over.")
talkingNPC:addCycleText("Falls du hungrig oder durstig bist, kann ich dir die Taverne zur Hanfschlinge empfehlen.", "Head into the Hemp Necktie Inn for a drink or bite to eat if you are weary.")
talkingNPC:addCycleText("Es ist sehr angenehm, nach einer langen Reise an einem Lagerfeuer zu entspannen.", "After a long journey it is nice to sit and rest a while beside a campfire.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dies ist dein Tutor Henry Cunnigan, der Hafenmeister.", "This is your tutorial guide Henry Cunnigan, the Harbour Master.")
mainNPC:setUseMessage("Diesen NPC kannst du nicht benutzen. Sage stattdessen 'Hallo'.", "You cannot use this NPC. Say 'Hello' instead.")
mainNPC:setConfusedMessage("Bitte wechsle die Sprache deines Charakters zur Gemeinsprache mit dem Befehl '!l common'.", "Please switch the language of your character to the common tongue with the command '!l common'.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 101)
mainNPC:setEquipment(11, 2419)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 366)
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
