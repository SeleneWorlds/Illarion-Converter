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
talkEntry:addConsequence(consequence_inform("[Game Help] This is NPC Metylda Lockleigh the hunter. Keywords are: hello, lady, miss, hellhounds, injury, brother."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dies ist der NPC Metylda Lockleigh, die Jägerin. Schlüsselworte sind: Hallo, Lady, Dame, Höllenhunde, Verletzung, Bruder "))
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
talkEntry:addResponse("Ya, ya hello. What do you want? You best not be trying to rob me, because even while injured I can lay you out.")
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
talkEntry:addResponse("Na hallo. Was willst du? Du versuchst am besten nicht mich auszurauben, selbst verletzt könnte ich es noch mit dir aufnehmen. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Ya, ya hello. What do you want? You best not be trying to rob me, because even while injured I can lay you out.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Na hallo. Was willst du? Du versuchst am besten nicht mich auszurauben, selbst verletzt könnte ich es noch mit dir aufnehmen. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Be gone and stop bothering me already!")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Verschwinde und hör schon auf mich zu belästigen!")
talkEntry:addResponse("Gehabt Euch wohl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Be gone and stop bothering me already!")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Verschwinde und hör schon auf mich zu belästigen!")
talkEntry:addResponse("Gehabt Euch wohl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I am upset is what I am. That golem has my elbow so sore I can barely hold my sword.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ich bin wütend, das ist was ich bin. Dieser Golem hat meinen Ellenbogen so stark verletzt, dass ich kaum mein Schwert halten kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Metylda Lockleigh, don't even try to call me Lady or Miss!")
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
talkEntry:addResponse("Mein Name ist Metylda Lockleigh, versuch gar nicht erst mich Lady oder Dame!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Conquering Letma I"))
talkEntry:addConsequence(consequence_quest(513, "=", 1))
talkEntry:addResponse("I have been on this mountain for some time and have ran out of supplies. I would pay you if you fetch me some food. I can fetch my own meat, however I could use some potato bread from town.   Would you go to town and fetch me five loaves of potato bread?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Die Eroberung Letmas I"))
talkEntry:addConsequence(consequence_quest(513, "=", 1))
talkEntry:addResponse("Ich bin seit einiger Zeit auf diesem Berg und mir gehen die Vorräte aus. Ich würde dich bezahlen, wenn du mir etwas zu essen holst. Ich kann mir selbst Fleisch besorgen, allerdings könnte ich etwas Kartoffelbrot aus der Stadt gebrauchen. Würdest du zur Stadt gehen und mir fünf Laibe Kartoffelbrot holen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Conquering Letma I"))
talkEntry:addConsequence(consequence_quest(513, "=", 1))
talkEntry:addResponse("I have been on this mountain for some time and have ran out of supplies. I would pay you if you fetch me some food. I can fetch my own meat, however I could use some potato bread from town.   Would you go to town and fetch me five loaves of potato bread?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Die Eroberung Letmas I"))
talkEntry:addConsequence(consequence_quest(513, "=", 1))
talkEntry:addResponse("Ich bin seit einiger Zeit auf diesem Berg und mir gehen die Vorräte aus. Ich würde dich bezahlen, wenn du mir etwas zu essen holst. Ich kann mir selbst Fleisch besorgen, allerdings könnte ich etwas Kartoffelbrot aus der Stadt gebrauchen. Würdest du zur Stadt gehen und mir fünf Laibe Kartoffelbrot holen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 1))
talkEntry:addCondition(condition_item(49, "all", "<", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("I really need supplies, please bring me five loaves of potato bread.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 1))
talkEntry:addCondition(condition_item(49, "all", "<", 5, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ich brauche dringend Vorräte, bitte bring mir fünf Kartoffelbrotlaibe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 1))
talkEntry:addCondition(condition_item(49, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 75 silver coins."))
talkEntry:addConsequence(consequence_deleteitem(49, 5, nil))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_quest(513, "=", 2))
talkEntry:addResponse("Thank you for the potato bread. This, combined with what I will hunt, will let me continue my work here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 1))
talkEntry:addCondition(condition_item(49, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 75 Silberstücke."))
talkEntry:addConsequence(consequence_deleteitem(49, 5, nil))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_quest(513, "=", 2))
talkEntry:addResponse("Danke für das Kartoffelbrot. Das, kombiniert mit dem was ich erjagen werde, wird mich mir ermöglichen meine Arbeit fortzusetzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Conquering Letma II"))
talkEntry:addConsequence(consequence_quest(513, "=", 3))
talkEntry:addResponse("I need to know how strong you are before I give you any more tasks.  Go below and kill five of the demon skeleton servants to prove your prowess.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Die Eroberung Letmas II"))
talkEntry:addConsequence(consequence_quest(513, "=", 3))
talkEntry:addResponse("Ich muss wissen wie stark du bist bevor ich dir weitere Aufträge gebe. Geh nach unten und töte fünf Diener der Dämonenskelette um deine Fähigkeiten zu beweisen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Conquering Letma II"))
talkEntry:addConsequence(consequence_quest(513, "=", 3))
talkEntry:addResponse("I need to know how strong you are before I give you any more tasks.  Go below and kill five of the demon skeleton servants to prove your prowess.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Die Eroberung Letmas II"))
talkEntry:addConsequence(consequence_quest(513, "=", 3))
talkEntry:addResponse("Ich muss wissen wie stark du bist bevor ich dir weitere Aufträge gebe. Geh nach unten und töte fünf Diener der Dämonenskelette um deine Fähigkeiten zu beweisen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, ">", 2))
talkEntry:addCondition(condition_quest(513, "<", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("If you cannot prove to me you are a hunter by killing five demon skeleton servants, I will not give you other work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, ">", 2))
talkEntry:addCondition(condition_quest(513, "<", 8))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Wenn du mir nicht beweisen kannst ein Jäger zu sein indem du fünf Diener der Dämonenskelette tötest, werde ich dir keine anderen Aufträge geben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 75 silver coins."))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_quest(513, "=", 9))
talkEntry:addResponse("You indeed have some strength but I have one more test for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 8))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 75 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_quest(513, "=", 9))
talkEntry:addResponse("Du bist tatsächlich ziemlich stark, aber ich habe einen weiteren Test für dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Conquering Letma III"))
talkEntry:addConsequence(consequence_quest(513, "=", 10))
talkEntry:addResponse("Now that you have shown the spirit of a true hunter, I will give you another task. Please clear out five of the beholders below the mountain. My injury keeps me from doing it myself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 9))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Die Eroberung Letmas III"))
talkEntry:addConsequence(consequence_quest(513, "=", 10))
talkEntry:addResponse("Nun, da du den Geist eines wahren Jägers bewiesen hast, werde ich dir eine andere Aufgabe geben. Bitte lösche fünf Betrachter unter dem Berg aus. Meine Verletzung verhindert, dass ich es selbst mache.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 9))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Conquering Letma III"))
talkEntry:addConsequence(consequence_quest(513, "=", 10))
talkEntry:addResponse("Now that you have shown the spirit of a true hunter, I will give you another task. Please clear out five of the beholders below the mountain. My injury keeps me from doing it myself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 9))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Die Eroberung Letmas III"))
talkEntry:addConsequence(consequence_quest(513, "=", 10))
talkEntry:addResponse("Nun, da du den Geist eines wahren Jägers bewiesen hast, werde ich dir eine andere Aufgabe geben. Bitte lösche fünf Betrachter unter dem Berg aus. Meine Verletzung verhindert, dass ich es selbst mache.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, ">", 9))
talkEntry:addCondition(condition_quest(513, "<", 15))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("The beholders see too much. I often wonder who they report to. Kill five of them to decrease their numbers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, ">", 9))
talkEntry:addCondition(condition_quest(513, "<", 15))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Die Betrachter sehen zu viel. Ich frage mich oft wer ihr Anführer ist. Töte fünf von ihnen um sie zu dezimieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 15))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 100 silver coins."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(513, "=", 16))
talkEntry:addResponse("You have done well and now for a task of a different sort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 15))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 100 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(513, "=", 16))
talkEntry:addResponse("Gut gemacht und nun zu einer Aufgabe einer anderen Art.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 16))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Conquering Letma IV"))
talkEntry:addConsequence(consequence_quest(513, "=", 17))
talkEntry:addResponse("The gold golem injured me during our fight, which is why I am sitting up here on the mountain top and not hunting. If you kill the gold golem for me I will give you the map to a dragon's treasure I found.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 16))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Die Eroberung Letmas IV"))
talkEntry:addConsequence(consequence_quest(513, "=", 17))
talkEntry:addResponse("Der Goldgolem verletzte mich während unseres Kampfes, deswegen sitze ich hier oben auf dem Berg und jage nicht. Wenn du den Goldgolem für mich tötest, gebe ich dir die Schatzkarte eines Drachenschatzes, den ich gefunden habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 16))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Conquering Letma IV"))
talkEntry:addConsequence(consequence_quest(513, "=", 17))
talkEntry:addResponse("The gold golem injured me during our fight, which is why I am sitting up here on the mountain top and not hunting. If you kill the gold golem for me I will give you the map to a dragon's treasure I found.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 16))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Die Eroberung Letmas IV"))
talkEntry:addConsequence(consequence_quest(513, "=", 17))
talkEntry:addResponse("Der Goldgolem verletzte mich während unseres Kampfes, deswegen sitze ich hier oben auf dem Berg und jage nicht. Wenn du den Goldgolem für mich tötest, gebe ich dir die Schatzkarte eines Drachenschatzes, den ich gefunden habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, ">", 16))
talkEntry:addCondition(condition_quest(513, "<", 18))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("I would seriously like that gold golem to pay for injuring my fighting arm. Please kill it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, ">", 16))
talkEntry:addCondition(condition_quest(513, "<", 18))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ich würde den Goldgolem wirklich gerne dafür bezahlen lassen, dass er meinen Kampfarm verletzte. Bitte töte ihn!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 18))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a map."))
talkEntry:addConsequence(consequence_item(505, 1, 899, {["MapPosZ"] = "0", ["MapPosX"] = "375", ["MapPosY"] = "575"}))
talkEntry:addConsequence(consequence_quest(513, "=", 19))
talkEntry:addResponse("Here is the map, I could not make sense of the symbols. I wish you more luck. I believe it to be out in the desert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 18))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst die Karte."))
talkEntry:addConsequence(consequence_item(505, 1, 899, {["MapPosZ"] = "0", ["MapPosX"] = "375", ["MapPosY"] = "575"}))
talkEntry:addConsequence(consequence_quest(513, "=", 19))
talkEntry:addResponse("Hier ist die Karte, ich konnte keinen Sinn in den Zeichen erkennen. Ich wünsche dir mehr Glück, ich glaube der Schatz liegt in der Wüste.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 19))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Conquering Letma IV"))
talkEntry:addConsequence(consequence_quest(513, "=", 20))
talkEntry:addResponse("There are strange pillars below with letters on them. I thought that if they were touched in the right order something special might happen. I am not one for spelling or words. If you figure out this riddle, I have a limited topaz for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 19))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Die Eroberung Letmas IV"))
talkEntry:addConsequence(consequence_quest(513, "=", 20))
talkEntry:addResponse("Unten sind merkwürdige Säulen mit Buchstaben drauf. Ich dachte, dass etwas besonderes passiert, wenn man sie in der richtigen Reihenfolge berührt. Ich gehöre nicht zu den Leuten der Rechtschreibung oder der Worte. Wenn du dieses Rätsel löst, habe ich einen begrenzt magischen Topas für dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 19))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Conquering Letma IV"))
talkEntry:addConsequence(consequence_quest(513, "=", 20))
talkEntry:addResponse("There are strange pillars below with letters on them. I thought that if they were touched in the right order something special might happen. I am not one for spelling or words. If you figure out this riddle, I have a limited topaz for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 19))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Die Eroberung Letmas IV"))
talkEntry:addConsequence(consequence_quest(513, "=", 20))
talkEntry:addResponse("Unten sind merkwürdige Säulen mit Buchstaben drauf. Ich dachte, dass etwas besonderes passiert, wenn man sie in der richtigen Reihenfolge berührt. Ich gehöre nicht zu den Leuten der Rechtschreibung oder der Worte. Wenn du dieses Rätsel löst, habe ich einen begrenzt magischen Topas für dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, ">", 19))
talkEntry:addCondition(condition_quest(513, "<", 31))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("I am still stumped by the riddle of the pillars. Please figure out what order they need to be touched.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, ">", 19))
talkEntry:addCondition(condition_quest(513, "<", 31))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ich bin immer noch von dem Säulen-Rätsel überfragt. Bitte finde heraus in welcher Reihenfolge sie berührt werden müssen. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 31))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a limited magical topaz."))
talkEntry:addConsequence(consequence_item(3525, 1, 999, {["gemLevel"] = "2"}))
talkEntry:addConsequence(consequence_quest(513, "=", 32))
talkEntry:addResponse("A demon's wand? Keep it, I have no use for such things! Take this gem and we will never speak of this again!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 31))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 100 Silberstücke."))
talkEntry:addConsequence(consequence_item(3525, 1, 999, {["gemLevel"] = "2"}))
talkEntry:addConsequence(consequence_quest(513, "=", 32))
talkEntry:addResponse("Ein Dämonenzauberstab? Behalte ihn, ich habe keinerlei Verwendung für ihn. Nimm diesen Edelstein und wir sprechen nie wieder über das Ganze!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 32))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I have nothing else you can help with. Please speak of our interaction with no one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 32))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Es gibt nichts weiteres womit du mir helfen kannst. Bitte sprich mit niemandem über unsere Zusammenarbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 32))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I have nothing else you can help with. Please speak of our interaction with no one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(513, "=", 32))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Es gibt nichts weiteres womit du mir helfen kannst. Bitte sprich mit niemandem über unsere Zusammenarbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("lady")
talkEntry:addTrigger("miss")
talkEntry:addResponse("If you call me Lady or Miss again, I will feed you to the hellhounds.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dame")
talkEntry:addResponse("Wenn du mich nochmal Lady oder Dame nennst, werde ich dich an die Höllenhunde verfüttern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("hellhound")
talkEntry:addResponse("I love hunting the hellhounds.  The challenge of fighting beasts that can kill you can't be topped.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Höllenhunde")
talkEntry:addResponse("Ich liebe es Höllenhunde zu jagen. Die Herausforderung gegen Bestien zu kämpfen die einen töten können ist nicht zu überbieten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("My name is Metylda Lockleigh, don't even try to call me Lady or Miss!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Mein Name ist Metylda Lockleigh, versuch gar nicht erst mich Lady oder Dame zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Injury")
talkEntry:addResponse("I had a skirmish with some golems and now my elbow is right sore. I really hate having to ask for help.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Verletzung")
talkEntry:addResponse("Ich hatte ein Gefecht mit einem Golem und nun ist mein Ellenbogen ziemlich wund. Ich hasse es nach Hilfe zu fragen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("brother")
talkEntry:addResponse("I have seven brothers, but I aim to prove to my dad I am just as good if not a better hunter than them all.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bruder")
talkEntry:addResponse("Ich habe sieben Brüder, aber ich möchte meinem Vater beweisen, dass ich ein mindestens genauso guter, wenn nicht sogar besserer Jäger bin als sie alle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Not a hunter there, always have their nose in a book in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("In Runewick gibt es keine Jäger, dort haben sie immer die Nasen in Büchern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Thieves the lot of them in Galmair.  They would rather steal than make their own way.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("In Galmair gibt es viele Diebe. Sie würden eher stehlen als es selbst zu machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I have seen many a fine warrior enter Cadomyr, but none is a finer hunter than me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ich sah viele gute Krieger Cadomyr betreten, doch keiner von ihnen war ein besserer Jäger als ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("necktie")
talkEntry:addTrigger("hemp")
talkEntry:addResponse("I have no use for the criminals at the Hemp Necktie Inn. I have my mission in life and no crook will help me find it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("necktie")
talkEntry:addTrigger("hemp")
talkEntry:addResponse("Ich habe keinen Nutzen für die Kriminellen bei der Hanfschlinge. Ich habe eine Aufgabe in meinem Leben und kein Gauner wird mir helfen sie zu erreichen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I do not sell or buy anything.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich kaufe und verkaufe nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me sitzt da und versorgt eine kleine Wunde an ihrem Ellenbogen indem sie eine saubere weiße Bandage darum wickelt.", "#me sits nursing a small wound on her left elbow, wrapping it in a clean white bandage.")
talkingNPC:addCycleText("Ich werde es ihnen zeigen, das werde ich. *Murmelt sie eher zu sich selbst.*", "I'll show them, I will. *She mumbles mostly to herself.*")
talkingNPC:addCycleText("Meine Waffen und meine Rüstung mögen pink sein, trotzdem bin ich immer zäher als du!", "My weapon and armour may be pink, but I am tougher than you any day!")
talkingNPC:addCycleText("Braucht jemand einen Bruder? Ich habe einen, zwei oder sieben abzugeben.", "Anyone want a brother? I have one, two, or seven to spare.")
talkingNPC:addCycleText("#me schaut finster in die Ferne.", "#me scowls off into the distance.")
talkingNPC:addCycleText("#me schärft ihre Schwertklinge.", "#me sharpens her sword blade.")
talkingNPC:addCycleText("Ich werde diesen Berg bezwingen.", "I will conquer this mountain.")
talkingNPC:addCycleText("Mein Vater sagt Mädchen sind nicht so stark wie Jungs, ich habe vor ihm zu beweisen, dass er falsch liegt.", "My father said girls are not as strong as boys, I aim to prove him wrong.")
talkingNPC:addCycleText("#me pfeift eine Melodie.", "#me whistles a tune.")
talkingNPC:addCycleText("#me hackt mit einem Dolch auf ihr Haar ein und schneidet es kurz.", "#me hacks at her hair with a dagger, cropping it short.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist die Jägerin Metylda Lockleigh", "This NPC is the hunter Metylda Lockleigh.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(3, 2400)
mainNPC:setEquipment(11, 2418)
mainNPC:setEquipment(5, 2704)
mainNPC:setEquipment(6, 2439)
mainNPC:setEquipment(4, 528)
mainNPC:setEquipment(9, 2111)
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
