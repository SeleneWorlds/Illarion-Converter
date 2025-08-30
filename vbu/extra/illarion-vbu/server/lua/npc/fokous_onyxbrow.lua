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
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Fokous Onyxbrow, the Beer Supplier. Keywords: Hello, rats, quest, beer."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Fokous Onyxbrow, der Bierlieferant. Schlüsselwörter: Hallo, Ratten, Quest, Bier."))
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
talkEntry:addResponse("Arr! Greetins.")
talkEntry:addResponse("Greetin's in da name of da father Irmorom. Ye be here ta help?")
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
talkEntry:addResponse("Arr! Grüße.")
talkEntry:addResponse("Grüße in Imoroms Namen. Du bist hier zum Helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Arr! Greetins.")
talkEntry:addResponse("Greetin's in da name of da father Irmorom. Ye be here ta help?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Arr! Grüße.")
talkEntry:addResponse("Grüße in Imoroms Namen. Du bist hier zum Helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Go on with you, I have work to do.")
talkEntry:addResponse("#me drinks from his beer 'Yes, yes goodbye.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Hinfort mit dir, ich habe zu arbeiten.")
talkEntry:addResponse("#me trinkt von seinem Bier 'Ja, ja und mach´s gut.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Go on with you, I have work to do.")
talkEntry:addResponse("#me drinks from his beer 'Yes, yes goodbye.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Hinfort mit dir, ich habe zu arbeiten.")
talkEntry:addResponse("#me trinkt von seinem Bier 'Ja, ja und mach´s gut.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I could use a beer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ich könnte ein Bier vertragen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Arr! Call me Fokous, Fokous Onyxbrow.")
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
talkEntry:addResponse("Arr! Ich bin Fokous, Fokous Onyxbrow.")
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
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me looks at you with suspicious eyes, 'I do not have work for non citizens, you could be a spy!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me schaut dich misstrauisch an 'Für Fremde hab ich keine Arbeit, du könntest ein Spion sein!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("#me looks at you with suspicious eyes, 'I do not have work for non citizens, you could be a spy!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("#me schaut dich misstrauisch an 'Für Fremde hab ich keine Arbeit, du könntest ein Spion sein!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me looks at you with suspicious eyes, 'I do not have work for non citizens, you could be a spy!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me schaut dich misstrauisch an 'Für Fremde hab ich keine Arbeit, du könntest ein Spion sein!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("#me looks at you with suspicious eyes, 'I do not have work for non citizens, you could be a spy!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("#me schaut dich misstrauisch an 'Für Fremde hab ich keine Arbeit, du könntest ein Spion sein!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me looks at you with suspicious eyes, 'I do not have work for non citizens, you could be a spy!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me schaut dich misstrauisch an 'Für Fremde hab ich keine Arbeit, du könntest ein Spion sein!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("#me looks at you with suspicious eyes, 'I do not have work for non citizens, you could be a spy!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("#me schaut dich misstrauisch an, 'Für Fremde hab ich keine Arbeit, du könntest ein Spion sein!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Save Da Beer I. (Double click the rope to use it in front of the well.)"))
talkEntry:addConsequence(consequence_item(2760, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(189, "=", 1))
talkEntry:addResponse("Arr! Dere be rats in da storage and dey be drinkin' da beer! Go now and kill me five, dis can not continue! Take dis rope and access da area through dis well just over dere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Save Da Beer I. (Double click the rope to use it in front of the well.)"))
talkEntry:addConsequence(consequence_item(2760, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(189, "=", 1))
talkEntry:addResponse("Arr! Dere be rats in da storage and dey be drinkin' da beer! Go now and kill me five, dis can not continue! Take dis rope and access da area through dis well just over dere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rette das Bierlager I. (Nimm das Seil und klicke zweimal darauf, während du vor dem Brunnen stehst.)"))
talkEntry:addConsequence(consequence_item(2760, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(189, "=", 1))
talkEntry:addResponse("Arr! Da sind Ratten im Lager und die saufen das Bier! So kann das nicht weitergehen, los töte fünf von ihnen für mich! Nimm dieses Seil und kletter damit in den Brunnen da drüben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(189, "=", 7))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("#me takes a long drink of beer, 'Here is your reward, but there is more work to be done!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(189, "=", 7))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("#me nimmt einen ordentlichen Schluck Bier, 'Hier ist deine Belohnung, aber es gibt noch mehr Arbeit zu erledigen!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, ">", 0))
talkEntry:addCondition(condition_quest(189, "<", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("The beer supply is in grave danger, hurry up and kill five rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, ">", 0))
talkEntry:addCondition(condition_quest(189, "<", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("The beer supply is in grave danger, hurry up and kill five rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, ">", 0))
talkEntry:addCondition(condition_quest(189, "<", 6))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Der Bier Nachschub ist in ernster Gefahr, los beeil dich und töte fünf Ratten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Save Da Beer II"))
talkEntry:addConsequence(consequence_quest(189, "=", 8))
talkEntry:addResponse("Arr! Da Don is not pleased we have lost so much beer. Go kill some more of da rats and bring me back ten furs as evidence!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 7))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Save Da Beer II"))
talkEntry:addConsequence(consequence_quest(189, "=", 8))
talkEntry:addResponse("Arr! Da Don is not pleased we have lost so much beer. Go kill some more of da rats and bring me back ten furs as evidence!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 7))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rette das Bierlager II"))
talkEntry:addConsequence(consequence_quest(189, "=", 8))
talkEntry:addResponse("Arr! Der Don wird über den Verlust von soviel Bier nicht glücklich sein. Los töte noch mehr von den Ratten und bringe mir zehn ihrer Felle als Beweis!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(2586, 10, nil))
talkEntry:addConsequence(consequence_quest(189, "=", 9))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Arr! The Don be happy you're helping. Come back later for more work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(2586, 10, nil))
talkEntry:addConsequence(consequence_quest(189, "=", 9))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Arr! Über deine Hilfe wird der Don sehr glücklich sein. Komm später wieder für mehr Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I will not be paying you on your word alone, bring me those ten rat furs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I will not be paying you on your word alone, bring me those ten rat furs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich werde dich nicht nur auf deine Aussage hin bezahlen, bring mir die zehn Rattenfelle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 9))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Save Da Beer III"))
talkEntry:addConsequence(consequence_quest(189, "=", 10))
talkEntry:addResponse("Dere be ugly different kinds a rats down dere. All drink the beer. Go kill ten rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 9))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Save Da Beer III"))
talkEntry:addConsequence(consequence_quest(189, "=", 10))
talkEntry:addResponse("Dere be ugly different kinds a rats down dere. All drink the beer. Go kill ten rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 9))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rette das Bierlager III"))
talkEntry:addConsequence(consequence_quest(189, "=", 10))
talkEntry:addResponse("Es gibt verschiedene hässliche Arten von Ratten da unten. Und alle saufen unser Bier. Geh und töte zehn Ratten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 20))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(189, "=", 21))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Arr! The number of rats has already decreased. The Don wil be happy you're helping. Come back later for more work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 20))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(189, "=", 21))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Arr! Die Ratten sind schon weniger geworden. Über deine Hilfe wird da Don sehr glücklich sein. Komm später wieder für mehr Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, ">", 9))
talkEntry:addCondition(condition_quest(189, "<", 20))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I reckon ye aren't done with this yet. Kill ten rats!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, ">", 9))
talkEntry:addCondition(condition_quest(189, "<", 20))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I reckon ye aren't done with this yet. Kill ten rats!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, ">", 9))
talkEntry:addCondition(condition_quest(189, "<", 20))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich denk nicht, dass du schon fertig bist. Töte zehn Ratten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Save Da Beer IV - Find and 'use' 5 poisoned rat baits in the cistern."))
talkEntry:addConsequence(consequence_quest(253, "=", 0))
talkEntry:addConsequence(consequence_quest(189, "=", 22))
talkEntry:addResponse("Recently I placed some poisoned carrots. The rats should eat them instead of drinking the beer. Please verify if the rats touched them. But wear gloves if you touch the baits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 21))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Save Da Beer IV - Find and 'use' 5 poisoned rat baits in the cistern."))
talkEntry:addConsequence(consequence_quest(253, "=", 0))
talkEntry:addConsequence(consequence_quest(189, "=", 22))
talkEntry:addResponse("Recently I placed some poisoned carrots. The rats should eat them instead of drinking the beer. Please verify if the rats touched them. But wear gloves if you touch the baits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 21))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rette das Bierlager IV - Finde und prüfe 5 Köder in der Zisterne. Benutze den Köder, um ihn zu prüfen."))
talkEntry:addConsequence(consequence_quest(253, "=", 0))
talkEntry:addConsequence(consequence_quest(189, "=", 22))
talkEntry:addResponse("Ich habe vor kurzem einige vergiftete Möhren ausgelegt. Schau bei mindestens 5 der Köder nach, ob die Ratten da eher rangehen als an's Bier. Aber zieh irgendwelche Handschuhe an, wenn du sie anfasst!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 22))
talkEntry:addCondition(condition_quest(253, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("Find and 'use' 5 poisoned rat baits in the cistern. You must touch (use) the carrots."))
talkEntry:addResponse("Wear gloves and check the baits. This is my chance to solve the rat issue without getting my fingers dirty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 22))
talkEntry:addCondition(condition_quest(253, "=", 0))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("Finde und prüfe 5 Köder in der Zisterne. Benutze den Köder, um ihn zu prüfen."))
talkEntry:addResponse("Zieh Handschuhe an und prüf die Köder. Das ist meine Chance den Ratten beizukommen, ohne mir die Hände schmutzig zu machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 22))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Arr! You say the rats didn't touch the baits? Go an check some more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 22))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("poison")
talkEntry:addTrigger("carrot")
talkEntry:addResponse("Arr! You say the rats didn;t touch the baits? Go an check some more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 22))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Gift")
talkEntry:addTrigger("Möhre")
talkEntry:addResponse("Arr! Du sagst, die Ratten verschmähen die Köder? Los schau dir noch einige mehr an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 23))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Solved and new quest] Save Da Beer V"))
talkEntry:addConsequence(consequence_quest(189, "=", 24))
talkEntry:addResponse("Da damned rats! We must do something now. I can not think of anything better than to kill another ten rats to save our beer.")
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 23))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("poison")
talkEntry:addTrigger("carrot")
talkEntry:addConsequence(consequence_inform("[Solved and new quest] Save Da Beer V"))
talkEntry:addConsequence(consequence_quest(189, "=", 24))
talkEntry:addResponse("Da damned rats! We must do something now. I can not think of anything better than to kill another ten rats to save our beer.")
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 23))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Gift")
talkEntry:addTrigger("Möhre")
talkEntry:addConsequence(consequence_inform("[Gelöstes und neues Quest] Rette das Bierlager V"))
talkEntry:addConsequence(consequence_quest(189, "=", 24))
talkEntry:addResponse("Die blöden Ratten! Wir müssen jetzt was tun. Mir fällt jetzt auch nix Besseres ein, als weitere zehn Ratten zu töten, um unser Bier zu retten.")
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 34))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(189, "=", 35))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Arr! We didn't save the world but our beer. The Don will be happy with your helping. Come back later for more work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 34))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 20 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(189, "=", 35))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Arr! Wir ham zwar nich die Welt aber unser Bier gerettet. Über deine Hilfe wird der Don sehr glücklich sein. Komm später wieder für mehr Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, ">", 23))
talkEntry:addCondition(condition_quest(189, "<", 34))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I reckon ye aren't done with this yet. Kill ten rats!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, ">", 23))
talkEntry:addCondition(condition_quest(189, "<", 34))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I reckon ye aren't done with this yet. Kill ten rats!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, ">", 23))
talkEntry:addCondition(condition_quest(189, "<", 34))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich denk nich, dass du schon fertig bist. Töte zehn Ratten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 35))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Save Da Beer VI"))
talkEntry:addConsequence(consequence_quest(189, "=", 36))
talkEntry:addResponse("Kill the ratman boss in the Cistern, he goes by the Snuffler. Maybe then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 35))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Save Da Beer VI"))
talkEntry:addConsequence(consequence_quest(189, "=", 36))
talkEntry:addResponse("Kill the ratman boss in the Cistern, he goes by the Snuffler. Maybe then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 35))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rette das Bierlager VI"))
talkEntry:addConsequence(consequence_quest(189, "=", 36))
talkEntry:addResponse("Töte den Rattenmenschen in'er Zisterne, er ist der Befehlshaber un heißt 'Schnüffler'. Hoffen ma mal, die Ratten verschwinden dann!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 37))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 30 silver coins."))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(189, "=", 38))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Da beer supply be safe. Me and da Don thanks ye! You can get a beer in the tavern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 37))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 30 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(189, "=", 38))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Arr! Das Bier ist gerettet, ich habe nichts mehr für dich zu tun. In'er Taveverne wird's ausgeschenkt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 36))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Kill the ratman boss in the Cistern, he goes by the Snuffler. Maybe then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 36))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Kill the ratman boss in the Cistern, he goes by the Snuffler. Maybe then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 36))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Töte den Rattenmenschen in'er Zisterne, er ist der Befehlshaber un heißt 'Schnüffler'. Hoffen ma mal, die Ratten verschwinden dann!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 38))
talkEntry:addCondition(condition_town(3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Arr! Da beer be safe, I have no more work for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 38))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Arr! Da beer be safe, I have no more work for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(189, "=", 38))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Arr! Das Bier ist gerettet, außer trinken kannst du mix mehr tun hier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Meh job is Beer Supplier. Its a special task from the Don himself!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Von Beruf bin ich der Lieferant für's Bierlager. Das is nen Spezialauftrag vom Don persönlich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Meh job is Beer Supplier. Its a special task from the Don himself!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Von Beruf bin ich der Lieferant für's Bierlager. Das is nen Spezialauftrag vom Don persönlich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ratte")
talkEntry:addResponse("Die Ratten, sie haben mein Bier... meine das Bier des Dons gestohlen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rat")
talkEntry:addResponse("The rats, they be taken me... I mean da Don's beer!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Beer")
talkEntry:addResponse("Beer! Arr! There be always room for one more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bier")
talkEntry:addResponse("Bier! Arr! Es ist immer Platz für noch eins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("name")
talkEntry:addResponse("Arr! Call me Fokous, Fokous Onyxbrow.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Name")
talkEntry:addResponse("Arr! Ich bin Fokous, Fokous Onyxbrow.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wealth")
talkEntry:addTrigger("money")
talkEntry:addResponse("There be only one thing better than beer, dats money!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("reichtum")
talkEntry:addTrigger("geld")
talkEntry:addResponse("Es gibt nur Eines das besser als Bier ist, und das ist Geld.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ratman")
talkEntry:addResponse("The ratman in the well has a group of rat thugs in his command.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rattenmenschen")
talkEntry:addResponse("Der Rattenmann am Wall hat eine Bande von Rattengangstern unter seinem Kommando.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Arr! Bookworms who needs them from Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Arrr! Bücherwürmer, wer braucht Die schon von Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Arr! Bookworms who needs them from Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Arrr! Bücherwürmer, wer braucht Die schon von Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Arr! Bookworms who needs them from Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Arrr! Bücherwürmer, wer braucht Die schon von Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Galmair be da grandest place to live. There is always beer and money!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Galmair ist der beste Platz zum Leben. Es gibt immer Bier und Geld!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair be da grandest place to live. There is always beer and money!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist der beste Platz zum Leben. Es gibt immer Bier und Geld!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Der brains be baked in da sun in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Das Hirn wird In der Sonne gebraten in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Der brains be baked in da sun in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Das Hirn wird In der Sonne gebraten in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Der brains be baked in da sun in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Das Hirn wird In der Sonne gebraten in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Necktie")
talkEntry:addTrigger("Hemp")
talkEntry:addTrigger("Inn")
talkEntry:addResponse("The Necktie is owned by a fine dwarf selling beer, so I reckon its a good place!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gasthof")
talkEntry:addTrigger("Hanfs")
talkEntry:addTrigger("schlinge")
talkEntry:addTrigger("Necktie")
talkEntry:addResponse("Der Besitzer des Necktie´s ist ein Zwerg der Bier verkauft, ich glaube es ist ein guter Platz!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Arr! Nargun has sent rats into the well!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Arr! Nargun hat uns Ratten in den Brunnen geschickt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("All honour Irmorom our father.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Alle Ehre für Irmorom unseren Vater.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I'm not a trader. You can give me your money, though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich bin kein Händler. Ihr könnt mir aber trotzdem euer Gold geben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Leave me alone.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Haut ab.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Bald kann ich unten kommen um aus diesem fürchterlichen Wetter herauszukommen.", "Soon, I can get below to get out of this awful weather!")
talkingNPC:addCycleText("#me grummelt und schaut auf seinen leeren Bierkrug.", "#me grumbles and stares at his empty beer mug.")
talkingNPC:addCycleText("Läuse und Ungeziefer jucken mich nicht!", "Lice and vermin don't bother me!")
talkingNPC:addCycleText("Wenn der Don das herausfindet wird er all mein Gold wollen!", "The Don will have my gold if he finds out about this!")
talkingNPC:addCycleText("#me kratzt sich am Bart und einige Läuse springen heraus.", "#me scratches his beard and some lice jumps out.")
talkingNPC:addCycleText("#me nimmt einen großzügigen Schluck aus der Bierflasche.", "#me drinks heartily from a bottle of beer.")
talkingNPC:addCycleText("#me rülpst laut.", "#me belches loudly.")
talkingNPC:addCycleText("#me nimmt einen großen Schluck Bier und wischt sich den Mund mit dem Ärmel ab.", "#me wipes the sleeve of his coat over his mouth after taking a large drink of beer.")
talkingNPC:addCycleText("#me verschüttet etwas Bier und flucht laut in irgendeinem alten Zwergendialekt.", "#me spills his beer and begins swearing loudly in some old dwarven dialect.")
talkingNPC:addCycleText("Arr! Ich brauche mehr Bier!", "Arr! Me needs more beer!")
talkingNPC:addCycleText("Ich habe es mit vergifteten Karotten im Schacht versucht, aber sie haben keine Wirkung auf diese Ratten.", "I have tried poisoned carrots in the well, but they had no effect on those rats!")
talkingNPC:addCycleText("Eines Tages werden wir den Tunnel fertig gegraben haben, sodaß wir den hier nicht mehr brauchen.", "One day, we'll get da tunnel dug out again so we don't have ta be usin' dis here well. Pain in da backside it is fer haulin' barrels!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Fokous Onyxbrow, der Bierlieferant.", "This NPC is Fokous Onyxbrow, the beer supplier.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 187)
mainNPC:setEquipment(3, 2365)
mainNPC:setEquipment(11, 2384)
mainNPC:setEquipment(5, 2662)
mainNPC:setEquipment(6, 2284)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 2116)
mainNPC:setEquipment(10, 699)
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
