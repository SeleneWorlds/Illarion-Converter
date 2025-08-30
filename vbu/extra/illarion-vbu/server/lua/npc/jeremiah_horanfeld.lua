local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Jeremiah Horanfeld, the vermin monitor. Keywords: Hello, rats, quest, pride, task, adventure, order, mission."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Jeremiah Horanfeld, der Rattenfänger. Schlüsselwörter: Hallo, Ratten, Quest, Stolz, Auftrag, Aufgabe, Abenteuer, mission."))
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
talkEntry:addResponse("Greetings, it is a lovely day.")
talkEntry:addResponse("Greetings in the name of the Queen. Have you come to serve the kingdom?")
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
talkEntry:addResponse("Grüße, es ist ein schöner Tag.")
talkEntry:addResponse("Sei gegrüßt im Namen der Königin. Bist du gekommen um ihrem Reich zu dienen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addTrigger("Hi")
talkEntry:addResponse("Greetings, it is a lovely day.")
talkEntry:addResponse("Greetings in the name of the Queen. Have you come to serve the kingdom?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Grüße, es ist ein schöner Tag.")
talkEntry:addResponse("Sei gegrüßt im Namen der Königin. Bist du gekommen um ihrem Reich zu dienen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell, until we meet again.")
talkEntry:addResponse("May the sun of the desert keep you warm til we meet again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Mach's gut bis wir uns wiedersehen.")
talkEntry:addResponse("Mögen die Sonne der Wüste die wärmen bis wir uns wieder treffen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Farewell, until we meet again.")
talkEntry:addResponse("May the sun of the desert keep you warm til we meet again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Mach's gut bis wir uns wiedersehen.")
talkEntry:addResponse("Mögen die Sonne der Wüste die wärmen bis wir uns wieder treffen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I am quite well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Mir geht es gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Jeremiah Horanfeld, I am the Queen's own Vermin Monitor.")
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
talkEntry:addResponse("Mein Name ist Jeremiah Horanfeld. Ich bin der Rattenfänger der Königin.")
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
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I do not have work for you outsider.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe keine Arbeit für dich Vogelfreier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I do not have work for you outsider.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe keine Arbeit für dich Vogelfreier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I do not have work for you outsider.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe keine Arbeit für dich Vogelfreier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I do not have work for you outsider.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe keine Arbeit für dich Vogelfreier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I do not have work for you outsider.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe keine Arbeit für dich Vogelfreier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I do not have work for you outsider.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe keine Arbeit für dich Vogelfreier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor I. Double click the rope to use it in front of the well."))
talkEntry:addConsequence(consequence_item(2760, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(187, "=", 1))
talkEntry:addResponse("Rats! Recently one came out of the cistern. Can you imagin what happened if such a dirty beast came into the eyes of our queen? Go down and kill five rats. Take this rope and descend into the well!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor I. Double click the rope to use it in front of the well."))
talkEntry:addConsequence(consequence_item(2760, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(187, "=", 1))
talkEntry:addResponse("Rats! Recently one came out of the cistern. Can you imagin what happened if such a dirty beast came into the eyes of our queen? Go down and kill five rats. Take this rope and descend into the well!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rattenfänger I. Doppelklicke auf das Seil um es zu benutzen wenn du vor dem Brunnen stehst."))
talkEntry:addConsequence(consequence_item(2760, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(187, "=", 1))
talkEntry:addResponse("Ratten! Kam doch kürzlich wieder eine aus der Zisterne. Kannst du dir vorstellen, wenn so ein dreckiges Vieh die Augen unsere Königin beleidigt hätte? Steig hinab und töte fünf Ratten. Nimm dieses Seil und begib dich hinab in den Schacht!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(187, "=", 7))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Very well, you have done good work for this town. There is more to do yet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 6))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(187, "=", 7))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Sehr gut, du hast gute Dinge für die Stadt getan, aber es ist noch mehr zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("No matter if you don't know what rats are or you couldn't find any. Take the rope and climb down in the well. There you find five rats you have to kill.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("No matter if you don't know what rats are or you couldn't find any. Take the rope and climb down in the well. There you find five rats you have to kill.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Weißt du nicht, wie Ratten aussehen oder findest du keine? Egal. Nimm dein Seil und steig in den Brunnen. Dort wirst du die fünf Ratten finden, die du töten sollst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 0))
talkEntry:addCondition(condition_quest(187, "<", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You have to kill five rats. You arn't ready yet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 0))
talkEntry:addCondition(condition_quest(187, "<", 6))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("You have to kill five rats. You arn't ready yet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 0))
talkEntry:addCondition(condition_quest(187, "<", 6))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du solltest fünf Ratten töten. Du bist noch nicht fertig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor II"))
talkEntry:addConsequence(consequence_quest(187, "=", 8))
talkEntry:addResponse("Only just I've seen another rat. I need further proof the numbers have went down. Please bring me ten pieces of fur from these rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 7))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor II"))
talkEntry:addConsequence(consequence_quest(187, "=", 8))
talkEntry:addResponse("Only just I've seen another rat. I need further proof the numbers have went down. Please bring me ten pieces of fur from these rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 7))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rattenfänger II"))
talkEntry:addConsequence(consequence_quest(187, "=", 8))
talkEntry:addResponse("Gerade eben habe ich wieder eine Ratte gesehen. Ich benötige Beweise, dass die Zahl der Ratten gesunken ist. Bringe mir bitte zehn Rattenfelle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(2586, 10, nil))
talkEntry:addConsequence(consequence_quest(187, "=", 9))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("The Chancellor will be most pleased when he can tell the Queen of our success.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(2586, 10, nil))
talkEntry:addConsequence(consequence_quest(187, "=", 9))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Die Kanzler wird sehr erfreut sein, wenn er der Königin von unseren Erfolgen berichten kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("The Queen has given the command to me, reduce the numbers of rates. She wants proof. So go bring me ten rat furs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("The Queen has given the command to me, reduce the numbers of rates. She wants proof. So go bring me ten rat furs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Dir Königin hat mir den Befehl erteilt, die Anzahl der Ratten zu reduzieren. Sie verlangt Beweise. Geh und bring mir zehn Rattenfelle als Beweis.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 9))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor III"))
talkEntry:addConsequence(consequence_quest(187, "=", 10))
talkEntry:addResponse("Despite all the heroic effort you take, the number of rats seem to increase. For the honour and glory of Cadomyr, please kill ten rats in the cistern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 9))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor III"))
talkEntry:addConsequence(consequence_quest(187, "=", 10))
talkEntry:addResponse("Despite all the heroic effort you take, the number of rats seem to increase. For the honour and glory of Cadomyr, please kill ten rats in the cistern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 9))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rattenfänger III"))
talkEntry:addConsequence(consequence_quest(187, "=", 10))
talkEntry:addResponse("Trotz all deiner heroischen Anstrengungen, es scheinen immer mehr Ratten zu werden. Töte zehn Ratten in der Zisterne für den Ruhm und die Ehre Cadomyrs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 20))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(187, "=", 21))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("I think we are done already. Due to our efforts the glory of the Queen is not harmed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 20))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(187, "=", 21))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Ich glaub wir haben es fast geschafft. Es ist unseren Bemühungen zu verdanken, dass die Pracht der Königin nicht durch Ratten beeinträchtigt wird.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 9))
talkEntry:addCondition(condition_quest(187, "<", 20))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("We have the very important task to control the rat population. Kill ten rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 9))
talkEntry:addCondition(condition_quest(187, "<", 20))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("e have the very important task to control the rat population. Kill ten rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 9))
talkEntry:addCondition(condition_quest(187, "<", 20))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wir haben die ungemein wichtige Aufgabe die Ratten zu dezimieren. Töte zehn Ratten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor IV - Find and 'use' 5 poisoned rat baits in the cistern. Use the bait to verify."))
talkEntry:addConsequence(consequence_quest(253, "=", 0))
talkEntry:addConsequence(consequence_quest(187, "=", 22))
talkEntry:addResponse("Recently I placed some poisoned carrots. Please verify if the rats touched them, but wear gloves if you touch the baits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 21))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor IV - Find and verify 5 poisoned rat baits in the cistern. Use the bait to verify."))
talkEntry:addConsequence(consequence_quest(253, "=", 0))
talkEntry:addConsequence(consequence_quest(187, "=", 22))
talkEntry:addResponse("Recently I placed some poisoned carrots. Please verify if the rats touched them, but wear gloves if you touch the baits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 21))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rattenfänger IV - Finde und prüfe 5 Köder in der Zisterne. Benutze den Köder, um ihn zu prüfen."))
talkEntry:addConsequence(consequence_quest(253, "=", 0))
talkEntry:addConsequence(consequence_quest(187, "=", 22))
talkEntry:addResponse("Ich habe vor kurzem einige vergiftete Möhren ausgelegt. Prüfe bitte mindestens 5 der Köder, ob sie angenommen werden. Aber zieh irgendwelche Handschuhe an, wenn du sie anfasst!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 22))
talkEntry:addCondition(condition_quest(253, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("Find and 'use' 5 poisoned rat baits in the cistern. You must touch (use) the carrots."))
talkEntry:addResponse("Wear gloves and check the baits. This is my chance to solve the rat issue without getting my hands dirty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 22))
talkEntry:addCondition(condition_quest(253, "=", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("Finde und prüfe 5 Köder in der Zisterne. Benutze den Köder, um ihn zu prüfen."))
talkEntry:addResponse("Zieh Handschuhe an und prüf die Köder. Das ist meine Chance den Ratten beizukommen, ohne mir die Hände schmutzig zu machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 22))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Are you sure the rats didn't touch the baits? Please verify some more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 22))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("poison")
talkEntry:addTrigger("carrot")
talkEntry:addResponse("Are you sure the rats don't touch the baits? Please verify some more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 22))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Gift")
talkEntry:addTrigger("Möhre")
talkEntry:addResponse("Bist du dir sicher, die Ratten verschähen die Köder? Bitte prüfe noch einige mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 23))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Solved and new quest] Vermin Monitor V"))
talkEntry:addConsequence(consequence_quest(187, "=", 24))
talkEntry:addResponse("A disaster! We must do something immediately. I can not think of anything better than to kill another ten rats to save our honor.")
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 23))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("poison")
talkEntry:addTrigger("carrot")
talkEntry:addConsequence(consequence_inform("[Solved and new quest] Vermin Monitor V"))
talkEntry:addConsequence(consequence_quest(187, "=", 24))
talkEntry:addResponse("A disaster! We must do something immediately. I can not think of anything better than to kill another ten rats to save our honor.")
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 23))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Gift")
talkEntry:addTrigger("Möhre")
talkEntry:addConsequence(consequence_inform("[Gelöstes und neues Quest] Rattenfänger V"))
talkEntry:addConsequence(consequence_quest(187, "=", 24))
talkEntry:addResponse("Eine Katastophe! Wir müssen unbedingt was tun. Mir fällt jetzt auch nichts Besseres ein, als weitere zehn Ratten zu töten, um unsere Ehre zu retten.")
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 34))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(187, "=", 35))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("It's said the Queen mentioned the reduced number of vermin. All due to your efforts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 34))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(187, "=", 35))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Man sagt die Königin hat lobend erwähnt, dass das Ungeziefer abnimmt. Auch dank deiner Bemühungen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 23))
talkEntry:addCondition(condition_quest(187, "<", 34))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Saving our honour, you still need to kill ten rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 23))
talkEntry:addCondition(condition_quest(187, "<", 34))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Saving our honor, you still need to kill ten rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 23))
talkEntry:addCondition(condition_quest(187, "<", 34))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Um unsere Ehre zu retten, musst du noch zehn Ratten töten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 35))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor VI"))
talkEntry:addConsequence(consequence_quest(187, "=", 36))
talkEntry:addResponse("It is said the rats have a king. There must be a single Queen in Cadomyr only. Kill the ratman in the Cistern, he goes by the Snuffler. I'm sure then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 35))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor VI"))
talkEntry:addConsequence(consequence_quest(187, "=", 36))
talkEntry:addResponse("It is said the rats have a king. There must be a single Queen in Cadomyr only. Kill the ratman in the Cistern, he goes by the Snuffler. I'm sure then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 35))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rattenfänger VI"))
talkEntry:addConsequence(consequence_quest(187, "=", 36))
talkEntry:addResponse("Man sagt die Ratten haben einen König. In Cadomyr kann es nur eine Königin geben. Töte den Rattenmenschen in der Zisterne. Er soll den Namen 'Schnüffler' tragen. Sicher werden die Ratten sich dann zurückziehen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 37))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 30 silver coins."))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(187, "=", 38))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("You have proven your valour and honour. You will make a good subject for the Queen. And I may get my decoration to become First Vermin Monitor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 37))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 30 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(187, "=", 38))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Du hast deinen Mut und deine Ehre bewiesen. Du wirst ein guter Diener der Königin sein. Und ich werde sicher zum Oberrattenfänger befördert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 36))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Kill the ratman boss in the Cistern, he goes by the Snuffler. I'm sure then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 36))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Kill the ratman boss in the Cistern, he goes by the Snuffler. I'm sure then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 36))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Töte den Rattenmenschen in der Zisterne, er trägt den Namen 'Schnüffler'. Sicher werden die Ratten sich dann zurückziehen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 38))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You have done your duty. I have no more work for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 38))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("You have done your duty. I have no more work for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 38))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du hast deine Arbeit getan. Ich habe nichts mehr für dich zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 38))
talkEntry:addTrigger("ober")
talkEntry:addTrigger("fänger")
talkEntry:addTrigger("ratte")
talkEntry:addResponse("Eines Tages werde ich Oberrattenfänger. Sobald ich die Ratten unter Kontrolle habe.")
talkEntry:addResponse("Sowohl Vater als auch Großvater waren Oberrattenfänger. Bald werde ich esauch sein.")
talkEntry:addResponse("Ich habe gehört, dass ich nächste Woche in den Palast gefufen werde um meine Beförderung zum Oberrattenfänger zu erfahren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 38))
talkEntry:addTrigger("first")
talkEntry:addTrigger("vermin")
talkEntry:addTrigger("rat")
talkEntry:addResponse("One day I'll become First Vermin Monitor. Once the rats are under control.")
talkEntry:addResponse("My father and grandffather were decorated as First Vermin Monitor. It is time for me now!")
talkEntry:addResponse("I have heard next week I'll be called to the palace to receive my decoration as First Vermin Monitor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a Vermin Monitor, like my father, and his father before him!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin ein Rattenfänger, wie mein Vater und Großvater vor mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a Vermin Monitor, like my father, and his father before him!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin ein Rattenfänger, wie mein Vater und Großvater vor mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ratte")
talkEntry:addResponse("Mein Vater war auch Rattenfänger!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rat")
talkEntry:addResponse("My father was a vermin monitor too!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("pride")
talkEntry:addResponse("One must exhibit pride in all they do!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stolz")
talkEntry:addResponse("Man muss Stolz zeigen, bei allem was man tut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("name")
talkEntry:addResponse("My name is Jeremiah Horanfeld, I am the Queen's own Vermin Monitor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("name")
talkEntry:addResponse("Mein Name ist Jeremiah Horanfeld. Ich bin der Rattenfänger der Königin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("honour")
talkEntry:addResponse("There is no greater honour than serving my Queen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ehre")
talkEntry:addResponse("Es gibt keine größere Ehre als meiner Königin zu dienen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ratman")
talkEntry:addResponse("The ratman in the well claimed himself as king of rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rattenmenschen")
talkEntry:addResponse("Der Rattenmann in der Zisterne hat sich zum König der Ratten erklärt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("I don't know much about the Archmage, but who would follow a man who spends his time reading?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ich weiß nicht viel über den Erzmagier. Aber wer folgt jemanden der immer nur liest?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I don't know much about the Archmage, but who would follow a man who spends his time reading?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ich weiß nicht viel über den Erzmagier. Aber wer folgt jemanden der immer nur liest?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("The residents of Runewick spend all their time in the library.  How can they defend their ruler like that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Die Bewohner Runewick´s verbringen ihre gesamte Zeit in der Bibliothek. Wie können sie so ihren Herrscher beschützen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("There is no honour in having vast sums of money gained from cheating and stealing like the Don does.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Es ist keine Ehre solche Unmengen von Geld durch Bestehlen und Betrügen zu ergaunern wie es der Don tut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is the town of greed. They are only concerned where their next coin comes from.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist die Stadt der Habgier. Sie sind nur daran interessiert wo ihre nächste Münze herkommt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("All Hail the Queen. I serve Her Majesty with my life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Alle bejubeln die Königin. Ich diene ihrer Majestät mit meinem Leben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("All Hail the Queen. I serve Her Majesty with my life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Alle bejubeln die Königin. Ich diene ihrer Majestät mit meinem Leben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is the vast and great desert town. It is an honour to be allowed to live here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist die gewaltige Wüstenstadt. Es ist eine Ehre in ihr leben zu dürfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Necktie")
talkEntry:addTrigger("Hemp")
talkEntry:addTrigger("Inn")
talkEntry:addResponse("The rubbish outlaws at the Necktie Inn have no honour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gasthof")
talkEntry:addTrigger("Hanfs")
talkEntry:addTrigger("schlinge")
talkEntry:addTrigger("Necktie")
talkEntry:addResponse("Die Ausgestoßenen des Necktie Inn´s haben keine Ehre.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Malachin, god of the hunt, will guide you if you let him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Malachin, der Gott der Jagd wird dich leiten, wenn DU ihm vertraust.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("By the mercy of Zhambra, our subjects are loyal to our Queen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Bei der Gnade Zhambras, unsere Diener stehen loyal zur Königin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("One day the Goddess Sirani will find me my true love.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Eines Tages wird mich die Göttin Sirani finden, meine wahre Liebe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I'm not a trader.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich bin kein Händler.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Ein schöner Tag um Ratten zu töten.", "Lovely day for killing rats!")
talkingNPC:addCycleText("Die Sonne scheint hier, aber nicht auf die Ratten.", "The sun is shining up here, but not down with the rats!")
talkingNPC:addCycleText("Es ist ein prächtiger Tag für Cadomyr.", "It's a glorious day in Cadomyr.")
talkingNPC:addCycleText("Jubelt alle der Königin zu.", "All hail the Queen!")
talkingNPC:addCycleText("Erwirb Ehre für Cadomyr mit allem was du tust.", "Bring honour to Cadomyr with everything you do!")
talkingNPC:addCycleText("Es lohnt sich für die Königin zu arbeiten.", "It is rewarding, working for the Queen.")
talkingNPC:addCycleText("#me looks around with pride.", "#me looks around with pride.")
talkingNPC:addCycleText("Dies ist die Wüste. Selbst das Rattenjagen ist eine ehrbare Tätigkeit.", "Here in the desert, even rat hunting is an honourable profession.")
talkingNPC:addCycleText("#me reckt seinen Brustkorb so vor, das die Rüstung im Sonnenlicht glänzt", "#me puffs out his chest, making his armour glint in the sun as you arrive.")
talkingNPC:addCycleText("Ich bin ein loyaler Diener der Königin. Das solltest du auch sein!", "I am the Queen's loyal subject. You should be too!")
talkingNPC:addCycleText("Ich habe es mit vergifteten Karotten im Schacht versucht, aber sie haben keine Wirkung auf diese Ratten.", "I have tried poisoned carrots in the well, but they had no effect on those rats!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Jeremiah Horanfeld, der Rattenfänger.", "This NPC is Jeremiah Horanfeld, the vermin monitor.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 2287)
mainNPC:setEquipment(3, 2369)
mainNPC:setEquipment(11, 2377)
mainNPC:setEquipment(5, 207)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 2111)
mainNPC:setEquipment(10, 771)
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
