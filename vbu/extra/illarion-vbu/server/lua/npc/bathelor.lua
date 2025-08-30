local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Bathelor the high priest of Brágon. Keywords: Hello, Brágon, Quest, Priest, Temple, Favour, Sacrifice."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Bathelor der Hohepriester Brágons. Schlüsselwörter: Hallo, Brágon, Quest, Priester, Tempel, Gunst, Opfergabe."))
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
talkEntry:addResponse("Your pilgrimage has come to an end. You have found the temple of the Five.")
talkEntry:addResponse("Be greeted in the name of Brágon.")
talkEntry:addResponse("Hail Brágon! What is it, my child?")
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
talkEntry:addResponse("Eure Pilgerfahrt hat eine Ende. Ihr habt den Tempel der Fünf gefunden.")
talkEntry:addResponse("Seid gegrüßt im Namen Brágons.")
talkEntry:addResponse("Was gibt es, mein Kind?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Your pilgrimage has come to an end. You have found the temple of the Five.")
talkEntry:addResponse("Be greeted in the name of Brágon.")
talkEntry:addResponse("Hail Brágon! What is it, my child?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Eure Pilgerfahrt hat eine Ende. Ihr habt den Tempel der Fünf gefunden.")
talkEntry:addResponse("Seid gegrüßt im Namen Brágons.")
talkEntry:addResponse("Was gibt es, mein Kind?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("May Brágon speed you into the flames")
talkEntry:addResponse("May the fire within you never be extinguished!")
talkEntry:addResponse("Go with Brágon's blessing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Gehet hin in Flammen.")
talkEntry:addResponse("Und möge das Feuer in euch niemals erlöschen.")
talkEntry:addResponse("Gehet mit Brágons Segen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Go with Brágon speed.")
talkEntry:addResponse("And may the fire in you never fade!")
talkEntry:addResponse("Go with Brágon's blessing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Gehet hin in Flammen.")
talkEntry:addResponse("Und möge das Feuer in euch niemals erlöschen.")
talkEntry:addResponse("Gehet mit Brágons Segen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I feel enlightened.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Ich fühle mich erleuchtet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Bathelor, high priest of Brágon. Praise Brágon!")
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
talkEntry:addResponse("Ich bin Bathelor, Hohepriester Brágons. Lobet Brágon!")
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
talkEntry:addCondition(condition_quest(113, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] A spark to a flame I"))
talkEntry:addConsequence(consequence_quest(113, "=", 1))
talkEntry:addResponse("Very well. To prove that you are a truly devout servant of the Five, I want you to pay hommage to them. Visit each of the shrines of the Five in the temple and honour them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Feuer und Flamme I"))
talkEntry:addConsequence(consequence_quest(113, "=", 1))
talkEntry:addResponse("Sehr gut. Um zu beweisen, dass ihr ein frommer Diener der Fünf seid, möchte ich, dass ihr ihnen huldigt. Besucht jeden der Schreine der Fünf und ehret sie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] A spark to a flame I"))
talkEntry:addConsequence(consequence_quest(113, "=", 1))
talkEntry:addResponse("Very well. To prove that you are a truly devout servant of the Five, I want you to pay hommage to them. Visit each of the shrines of the Five in the temple and honour them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Feuer und Flamme I"))
talkEntry:addConsequence(consequence_quest(113, "=", 1))
talkEntry:addResponse("Sehr gut. Um zu beweisen, dass ihr ein frommer Diener der Fünf seid, möchte ich, dass ihr ihnen huldigt. Besucht jeden der Schreine der Fünf und ehret sie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five candles and a candlestick."))
talkEntry:addConsequence(consequence_item(43, 5, 333, nil))
talkEntry:addConsequence(consequence_item(399, 1, 555, nil))
talkEntry:addConsequence(consequence_quest(113, "=", 3))
talkEntry:addResponse("Praise the Five, hail Brágon! Here, take this candlestick and some candles, for they will guide you through the darkest nights.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünf Kerzen und einen Halter."))
talkEntry:addConsequence(consequence_item(43, 5, 333, nil))
talkEntry:addConsequence(consequence_item(399, 1, 555, nil))
talkEntry:addConsequence(consequence_quest(113, "=", 3))
talkEntry:addResponse("Lobet die Fünf, gepriesen sei Brágon! Hier, nehmt diesen Kerzenhalter und ein paar Kerzen, sie werden euch ein Licht in der Dunkelheit sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I told you to honour the five at their shrines. Move!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe gesagt, ihr sollt den Fünf die Ehre an ihren Schreinen erweisen. Los!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I told you to honour the five at their shrines. Move!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Ich habe gesagt, ihr sollt den Fünf die Ehre an ihren Schreinen erweisen. Los!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] A spark to a flame II"))
talkEntry:addConsequence(consequence_quest(113, "=", 4))
talkEntry:addResponse("I appreciate your devotion. Rituals in honour of Brágon all have one thing in common: Something has to be burnt! As a believer, will you please go out and fetch me ten logs of naldor wood?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Feuer und Flamme II"))
talkEntry:addConsequence(consequence_quest(113, "=", 4))
talkEntry:addResponse("Ich würdige eure Hingabe. Rituale in Ehren an Brágon haben alle eines gemeinsam: Etwas muss verbrannt werden! Als Gläubiger, würdet ihr bitte losziehen und mir zehn Scheite Naldorholz besorgen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] A spark to a flame II"))
talkEntry:addConsequence(consequence_quest(113, "=", 4))
talkEntry:addResponse("I appreciate your devotion. Rituals in honour of Brágon all have one thing in common: Something has to be burnt! As a believer, will you please go out and fetch me ten logs of naldor wood?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Feuer und Flamme II"))
talkEntry:addConsequence(consequence_quest(113, "=", 4))
talkEntry:addResponse("Ich würdige eure Hingabe. Rituale in Ehren an Brágon haben alle eines gemeinsam: Etwas muss verbrannt werden! Als Gläubiger, würdet ihr bitte losziehen und mir zehn Scheite Naldorholz besorgen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 4))
talkEntry:addCondition(condition_item(544, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a ruby ring."))
talkEntry:addConsequence(consequence_deleteitem(544, 10, nil))
talkEntry:addConsequence(consequence_item(68, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(113, "=", 5))
talkEntry:addResponse("Ah, the next ritual to honour Brágon can take place thanks to you. Take this ring as a sign of your faith.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 4))
talkEntry:addCondition(condition_item(544, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst einen Rubinring."))
talkEntry:addConsequence(consequence_deleteitem(544, 10, nil))
talkEntry:addConsequence(consequence_item(68, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(113, "=", 5))
talkEntry:addResponse("Ah, das nächste Ritual zu Ehren Brágons kann dank euch stattfinden. Nehmt diesen Ring als Zeichen eures Glaubens.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Naldor wood burns best and a Brágon ritual needs a lot of it to be burnt. Brágon will reward you for your dedication.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Naldorholz brennt am besten und bei einem Brágonritual wird zumeist eine Menge verbrannt. Brágon wird euch für eure Hingabe entlohnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Naldor wood burns best and a Brágon ritual needs a lot of it to be burnt. Brágon will reward you for your dedication.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Naldorholz brennt am besten und bei einem Brágonritual wird zumeist eine Menge verbrannt. Brágon wird euch für eure Hingabe entlohnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I see your faith in Brágon is still strong. Renounce him and he will renounce you. He will care little, but you will probably end up scorched.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 5))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wie ich sehe, ist euer Glaube an Brágon noch immer stark. Entsagt ihm und er entsagt euch. Ihn kümmert es wenig, aber ihr werdet wohl versengt werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 5))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I see your faith in Brágon is still strong. Renounce him and he will renounce you. He will care little, but you will probably end up scorched.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(113, "=", 5))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Wie ich sehe, ist euer Glaube an Brágon noch immer stark. Entsagt ihm und er entsagt euch. Ihn kümmert es wenig, aber ihr werdet wohl versengt werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am the high priest of Brágon in these lands. Any donations or sacrifices to Brágon should be given to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin der Hohepriester Brágons in diesen Ländereien. Jedwede Spenden oder Opfer an Brágon solltet ihr mir geben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am the high priest of Brágon in these lands. Any donations or sacrifices to Brágon should be given to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin der Hohepriester Brágons in diesen Ländereien. Jedwede Spenden oder Opfer an Brágon solltet ihr mir geben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("The land of Gobaith is burnt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Gobaithland ist abgebrannt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("So, are you a devout follower of Brágon, the eternal flame, the spark of life?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Seid ihr ein frommer Anhänger Brágons, der ewigen Flamme, des Lebensfunkens?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("priest")
talkEntry:addResponse("I am the high priest of Brágon. He speaks through my voice and acts with my hands. Ally with me and you ally with the Lord of Fire!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("temple")
talkEntry:addResponse("This is the temple of the Five. If you even dare to ask who the Five are, I will burn your body and feed the charred remains to the crows. Marvel at their magnificence!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("five")
talkEntry:addTrigger("old")
talkEntry:addResponse("Eldan is the mind, Ushara is the body, Tanora is the blood and Findari is the breath, but Brágon is the heart!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("eleven")
talkEntry:addTrigger("young")
talkEntry:addResponse("Imposters! All of them! Calling themselves gods, they do. They are nothing but minions, serfs!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("fire")
talkEntry:addResponse("Blazing flames will consume all that is not just when the end of days has come. Ask the refugees of Gobaith if you want to know what that looks like!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Priest")
talkEntry:addResponse("Ich bin der Hohenpriester Brágons. Er spricht durch meine Stimme und handelt mit meinen Händen. Legt euch mit mir an und ihr legt euch mit dem Herren des Feuers an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tempel")
talkEntry:addResponse("Dies ist der Tempel der Fünf. Wenn ihr es auch nur wagt, zu fragen, wer die Fünf sind, werde ich euren Körper verbrennen und die verkohlten Überreste an die Krähen verfüttern. Bestaunt ihre Pracht!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fünf")
talkEntry:addTrigger("alt")
talkEntry:addResponse("Eldan ist der Geist, Ushara der Leib, Tanora das Blut und Findari ist der Atem. Doch Brágon ist das Herz!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elf")
talkEntry:addTrigger("jung")
talkEntry:addResponse("Betrüger! Sie alle sind Betrüger! Nennen sich selbst Götter. Sie sind nichts als Diener, Leibeigene!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("feuer")
talkEntry:addResponse("Lodernde Flammen werden all das vertilgen, was nicht gerecht ist, wenn das Ende der Tage naht. Fragt die Flüchtlinge von Gobaith, wie so etwas aussieht!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("What is his name again? Elvaine? What a stupid name for an infidel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Wie hieß er noch gleich? Elvaine? Was für ein dämlicher Name, selbst für einen Ungläubigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("What is his name again? Elvaine? What a stupid name for an infidel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Wie hieß er noch gleich? Elvaine? Was für ein dämlicher Name, selbst für einen Ungläubigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick, Runewick, Runewick. They claim to be wise, but instead of being crusaders in Eldan's way, the half heartely idolise Elara.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick, Runewick, Runewick. Sie meinen, weise zu sein, aber statt Kreuzritter im Geiste Eldans zu sein, vergöttern sie halbherzig Elara.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("The infidel should burn!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Ungläubige soll verbrennen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is a place without gods, because the gods give a smile about this pool of sins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist ein gottloser Ort, denn die Götter scheren sich einen Dreck um diesen Sündenpfuhl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("I must admit I do not quite understand the ways of 'her Majesty'. On the one hand, she is known to worship Brágon with all of her heart, but all she spreads is faith in Malachín.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Ich muss gestehen, dass ich die Wege 'ihrer Majestät' nicht ganz nachvollziehen kann. Einerseits ist es kein Geheimnis, dass sie Brágon mit ganzem Herzen verehrt, andererseits aber predigt sie den Glauben an Malachín.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I must admit I do not quite understand the ways of 'her Majesty'. On the one hand, she is known to worship Brágon with all of her heart, but all she spreads is faith in Malachín.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ich muss gestehen, dass ich die Wege 'ihrer Majestät' nicht ganz nachvollziehen kann. Einerseits ist es kein Geheimnis, dass sie Brágon mit ganzem Herzen verehrt, andererseits aber predigt sie den Glauben an Malachín.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Brágon is well respected in Cadomyr, so I respect Cadomyr. The presence of the scorching sun might convince them of the omnipresence of Brágon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Brágon wird in Cadomyr geachtet, also achte ich Cadomyr. Die sengende Sonne scheint sie jeden Tag an die Allgegenwärtigkeit Brágons zu erinnern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ah, let us talk about Farfarawayland now? One can say whatever one wants about the Albarians: At least they honour the gods!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ah, reden wir jetzt über Weitwegland? Man kann über die Albarier denken, was man will: Wenigstens sind sie fromm!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("One day, Gynk will burn. Be it due to a gnomish experiment with white liquids or be it the wrath of Brágon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Eines Tages wird Gynk in Flammen aufgehen. Sei es durch ein gnomisches Experiment mit weißen Flüssigkeiten oder sei es durch den Zorn Brágons.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Never trust nor believe a Salkamaerian. Respect them and their deeds, but do not have faith in them repeating what they did once.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Glaubt oder traut niemals einem Salkamaeriern. Respektiert sie, für das, was sie tun, aber legt keinen Glauben darein, dass sich ihre Taten wiederholen werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Ushara")
talkEntry:addTrigger("Ushara.*favou?r")
talkEntry:addCondition(condition_quest(403, "=>", function(number) return (250); end))
talkEntry:addResponse("Ushara is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Ushara")
talkEntry:addTrigger("Ushara.*favou?r")
talkEntry:addCondition(condition_quest(403, "=>", function(number) return (200); end))
talkEntry:addResponse("Ushara is delighted with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Ushara")
talkEntry:addTrigger("Ushara.*favou?r")
talkEntry:addCondition(condition_quest(403, "=>", function(number) return (150); end))
talkEntry:addResponse("Ushara is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Ushara")
talkEntry:addTrigger("Ushara.*favou?r")
talkEntry:addCondition(condition_quest(403, "=>", function(number) return (100); end))
talkEntry:addResponse("Ushara is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Ushara")
talkEntry:addTrigger("Ushara.*favou?r")
talkEntry:addCondition(condition_quest(403, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 1))
talkEntry:addResponse("Ushara is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Ushara")
talkEntry:addTrigger("Ushara.*favou?r")
talkEntry:addCondition(condition_quest(403, "=>", function(number) return (50); end))
talkEntry:addResponse("Ushara is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Ushara")
talkEntry:addTrigger("Ushara.*favou?r")
talkEntry:addCondition(condition_quest(403, ">", function(number) return (-50); end))
talkEntry:addResponse("Ushara is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Ushara")
talkEntry:addTrigger("Ushara.*favou?r")
talkEntry:addCondition(condition_quest(403, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 1))
talkEntry:addResponse("Ushara is displeased with you, if you go on this way you will not be able to call yourself devoted to Ushara anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Ushara")
talkEntry:addTrigger("Ushara.*favou?r")
talkEntry:addCondition(condition_quest(403, ">", function(number) return (-100); end))
talkEntry:addResponse("Ushara is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Ushara")
talkEntry:addTrigger("Ushara.*favou?r")
talkEntry:addCondition(condition_quest(403, ">", function(number) return (-150); end))
talkEntry:addResponse("Ushara is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Ushara")
talkEntry:addTrigger("Ushara.*favou?r")
talkEntry:addCondition(condition_quest(403, ">", function(number) return (-200); end))
talkEntry:addResponse("Ushara is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Ushara")
talkEntry:addTrigger("Ushara.*favou?r")
talkEntry:addCondition(condition_quest(403, ">", function(number) return (-250); end))
talkEntry:addResponse("Ushara is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Ushara")
talkEntry:addTrigger("Ushara.*favou?r")
talkEntry:addResponse("Ushara is wrathful about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*favou?r")
talkEntry:addCondition(condition_quest(404, "=>", function(number) return (250); end))
talkEntry:addResponse("Brágon is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*favou?r")
talkEntry:addCondition(condition_quest(404, "=>", function(number) return (200); end))
talkEntry:addResponse("Brágon is delighted with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*favou?r")
talkEntry:addCondition(condition_quest(404, "=>", function(number) return (150); end))
talkEntry:addResponse("Brágon is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*favou?r")
talkEntry:addCondition(condition_quest(404, "=>", function(number) return (100); end))
talkEntry:addResponse("Brágon is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*favou?r")
talkEntry:addCondition(condition_quest(404, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 2))
talkEntry:addResponse("Brágon is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*favou?r")
talkEntry:addCondition(condition_quest(404, "=>", function(number) return (50); end))
talkEntry:addResponse("Brágon is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*favou?r")
talkEntry:addCondition(condition_quest(404, ">", function(number) return (-50); end))
talkEntry:addResponse("Brágon is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*favou?r")
talkEntry:addCondition(condition_quest(404, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 2))
talkEntry:addResponse("Brágon is displeased with you, if you go on this way you will not be able to call yourself devoted to Brágon anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*favou?r")
talkEntry:addCondition(condition_quest(404, ">", function(number) return (-100); end))
talkEntry:addResponse("Brágon is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*favou?r")
talkEntry:addCondition(condition_quest(404, ">", function(number) return (-150); end))
talkEntry:addResponse("Brágon is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*favou?r")
talkEntry:addCondition(condition_quest(404, ">", function(number) return (-200); end))
talkEntry:addResponse("Brágon is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*favou?r")
talkEntry:addCondition(condition_quest(404, ">", function(number) return (-250); end))
talkEntry:addResponse("Brágon is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*favou?r")
talkEntry:addResponse("Brágon is wrathful about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Eldan")
talkEntry:addTrigger("Eldan.*favou?r")
talkEntry:addCondition(condition_quest(405, "=>", function(number) return (250); end))
talkEntry:addResponse("Eldan is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Eldan")
talkEntry:addTrigger("Eldan.*favou?r")
talkEntry:addCondition(condition_quest(405, "=>", function(number) return (200); end))
talkEntry:addResponse("Eldan is delighted with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Eldan")
talkEntry:addTrigger("Eldan.*favou?r")
talkEntry:addCondition(condition_quest(405, "=>", function(number) return (150); end))
talkEntry:addResponse("Eldan is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Eldan")
talkEntry:addTrigger("Eldan.*favou?r")
talkEntry:addCondition(condition_quest(405, "=>", function(number) return (100); end))
talkEntry:addResponse("Eldan is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Eldan")
talkEntry:addTrigger("Eldan.*favou?r")
talkEntry:addCondition(condition_quest(405, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 3))
talkEntry:addResponse("Eldan is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Eldan")
talkEntry:addTrigger("Eldan.*favou?r")
talkEntry:addCondition(condition_quest(405, "=>", function(number) return (50); end))
talkEntry:addResponse("Eldan is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Eldan")
talkEntry:addTrigger("Eldan.*favou?r")
talkEntry:addCondition(condition_quest(405, ">", function(number) return (-50); end))
talkEntry:addResponse("Eldan is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Eldan")
talkEntry:addTrigger("Eldan.*favou?r")
talkEntry:addCondition(condition_quest(405, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 3))
talkEntry:addResponse("Eldan is displeased with you, if you go on this way you will not be able to call yourself devoted to Eldan anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Eldan")
talkEntry:addTrigger("Eldan.*favou?r")
talkEntry:addCondition(condition_quest(405, ">", function(number) return (-100); end))
talkEntry:addResponse("Eldan is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Eldan")
talkEntry:addTrigger("Eldan.*favou?r")
talkEntry:addCondition(condition_quest(405, ">", function(number) return (-150); end))
talkEntry:addResponse("Eldan is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Eldan")
talkEntry:addTrigger("Eldan.*favou?r")
talkEntry:addCondition(condition_quest(405, ">", function(number) return (-200); end))
talkEntry:addResponse("Eldan is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Eldan")
talkEntry:addTrigger("Eldan.*favou?r")
talkEntry:addCondition(condition_quest(405, ">", function(number) return (-250); end))
talkEntry:addResponse("Eldan is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Eldan")
talkEntry:addTrigger("Eldan.*favou?r")
talkEntry:addResponse("Eldan is wrathful about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Tanora")
talkEntry:addTrigger("Tanora.*favou?r")
talkEntry:addCondition(condition_quest(406, "=>", function(number) return (250); end))
talkEntry:addResponse("Tanora is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Tanora")
talkEntry:addTrigger("Tanora.*favou?r")
talkEntry:addCondition(condition_quest(406, "=>", function(number) return (150); end))
talkEntry:addResponse("Tanora is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Tanora")
talkEntry:addTrigger("Tanora.*favou?r")
talkEntry:addCondition(condition_quest(406, "=>", function(number) return (200); end))
talkEntry:addResponse("Tanora is delighted with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Tanora")
talkEntry:addTrigger("Tanora.*favou?r")
talkEntry:addCondition(condition_quest(406, "=>", function(number) return (100); end))
talkEntry:addResponse("Tanora is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Tanora")
talkEntry:addTrigger("Tanora.*favou?r")
talkEntry:addCondition(condition_quest(406, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 4))
talkEntry:addResponse("Tanora is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Tanora")
talkEntry:addTrigger("Tanora.*favou?r")
talkEntry:addCondition(condition_quest(406, "=>", function(number) return (50); end))
talkEntry:addResponse("Tanora is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Tanora")
talkEntry:addTrigger("Tanora.*favou?r")
talkEntry:addCondition(condition_quest(406, ">", function(number) return (-50); end))
talkEntry:addResponse("Tanora is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Tanora")
talkEntry:addTrigger("Tanora.*favou?r")
talkEntry:addCondition(condition_quest(406, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 4))
talkEntry:addResponse("Tanora is displeased with you, if you go on this way you will not be able to call yourself devoted to Tanora anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Tanora")
talkEntry:addTrigger("Tanora.*favou?r")
talkEntry:addCondition(condition_quest(406, ">", function(number) return (-100); end))
talkEntry:addResponse("Tanora is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Tanora")
talkEntry:addTrigger("Tanora.*favou?r")
talkEntry:addCondition(condition_quest(406, ">", function(number) return (-150); end))
talkEntry:addResponse("Tanora is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Tanora")
talkEntry:addTrigger("Tanora.*favou?r")
talkEntry:addCondition(condition_quest(406, ">", function(number) return (-200); end))
talkEntry:addResponse("Tanora is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Tanora")
talkEntry:addTrigger("Tanora.*favou?r")
talkEntry:addCondition(condition_quest(406, ">", function(number) return (-250); end))
talkEntry:addResponse("Tanora is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Tanora")
talkEntry:addTrigger("Tanora.*favou?r")
talkEntry:addResponse("Tanora is wrathful about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Findari")
talkEntry:addTrigger("Findari.*favou?r")
talkEntry:addCondition(condition_quest(407, "=>", function(number) return (250); end))
talkEntry:addResponse("Findari is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Findari")
talkEntry:addTrigger("Findari.*favou?r")
talkEntry:addCondition(condition_quest(407, "=>", function(number) return (150); end))
talkEntry:addResponse("Findari is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Findari")
talkEntry:addTrigger("Findari.*favou?r")
talkEntry:addCondition(condition_quest(407, "=>", function(number) return (200); end))
talkEntry:addResponse("Findari is delighted with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Findari")
talkEntry:addTrigger("Findari.*favou?r")
talkEntry:addCondition(condition_quest(407, "=>", function(number) return (100); end))
talkEntry:addResponse("Findari is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Findari")
talkEntry:addTrigger("Findari.*favou?r")
talkEntry:addCondition(condition_quest(407, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 5))
talkEntry:addResponse("Findari is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Findari")
talkEntry:addTrigger("Findari.*favou?r")
talkEntry:addCondition(condition_quest(407, "=>", function(number) return (50); end))
talkEntry:addResponse("Findari is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Findari")
talkEntry:addTrigger("Findari.*favou?r")
talkEntry:addCondition(condition_quest(407, ">", function(number) return (-50); end))
talkEntry:addResponse("Findari is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Findari")
talkEntry:addTrigger("Findari.*favou?r")
talkEntry:addCondition(condition_quest(407, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 5))
talkEntry:addResponse("Findari is displeased with you, if you go on this way you will not be able to call yourself devoted to Findari anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Findari")
talkEntry:addTrigger("Findari.*favou?r")
talkEntry:addCondition(condition_quest(407, ">", function(number) return (-100); end))
talkEntry:addResponse("Findari is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Findari")
talkEntry:addTrigger("Findari.*favou?r")
talkEntry:addCondition(condition_quest(407, ">", function(number) return (-150); end))
talkEntry:addResponse("Findari is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Findari")
talkEntry:addTrigger("Findari.*favou?r")
talkEntry:addCondition(condition_quest(407, ">", function(number) return (-200); end))
talkEntry:addResponse("Findari is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Findari")
talkEntry:addTrigger("Findari.*favou?r")
talkEntry:addCondition(condition_quest(407, ">", function(number) return (-250); end))
talkEntry:addResponse("Findari is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r.*Findari")
talkEntry:addTrigger("Findari.*favou?r")
talkEntry:addResponse("Findari is wrathful about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r")
talkEntry:addConsequence(consequence_inform("[Keywords] favour of Ushara, favour of Brágon, favour of Eldan, favour of Tanora, favour of Findari"))
talkEntry:addResponse("You want to know whether gods favour you? Which of the elder gods do you mean?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Ushara")
talkEntry:addTrigger("Ushara.*gunst")
talkEntry:addCondition(condition_quest(403, "=>", function(number) return (250); end))
talkEntry:addResponse("Ushara ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Ushara")
talkEntry:addTrigger("Ushara.*gunst")
talkEntry:addCondition(condition_quest(403, "=>", function(number) return (200); end))
talkEntry:addResponse("Ushara ist außerordentlich zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Ushara")
talkEntry:addTrigger("Ushara.*gunst")
talkEntry:addCondition(condition_quest(403, "=>", function(number) return (150); end))
talkEntry:addResponse("Ushara ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Ushara")
talkEntry:addTrigger("Ushara.*gunst")
talkEntry:addCondition(condition_quest(403, "=>", function(number) return (100); end))
talkEntry:addResponse("Ushara ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Ushara")
talkEntry:addTrigger("Ushara.*gunst")
talkEntry:addCondition(condition_quest(403, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 1))
talkEntry:addResponse("Ushara ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Ushara")
talkEntry:addTrigger("Ushara.*gunst")
talkEntry:addCondition(condition_quest(403, "=>", function(number) return (50); end))
talkEntry:addResponse("Ushara ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Ushara")
talkEntry:addTrigger("Ushara.*gunst")
talkEntry:addCondition(condition_quest(403, ">", function(number) return (-50); end))
talkEntry:addResponse("Ushara ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Ushara")
talkEntry:addTrigger("Ushara.*gunst")
talkEntry:addCondition(condition_quest(403, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 1))
talkEntry:addResponse("Ushara ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Usharas zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Ushara")
talkEntry:addTrigger("Ushara.*gunst")
talkEntry:addCondition(condition_quest(403, ">", function(number) return (-100); end))
talkEntry:addResponse("Ushara ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Ushara")
talkEntry:addTrigger("Ushara.*gunst")
talkEntry:addCondition(condition_quest(403, ">", function(number) return (-150); end))
talkEntry:addResponse("Ushara ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Ushara")
talkEntry:addTrigger("Ushara.*gunst")
talkEntry:addCondition(condition_quest(403, ">", function(number) return (-200); end))
talkEntry:addResponse("Ushara ist zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Ushara")
talkEntry:addTrigger("Ushara.*gunst")
talkEntry:addCondition(condition_quest(403, ">", function(number) return (-250); end))
talkEntry:addResponse("Ushara ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Ushara")
talkEntry:addTrigger("Ushara.*gunst")
talkEntry:addResponse("Ushara ist rasend vor Zorn auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*gunst")
talkEntry:addCondition(condition_quest(404, "=>", function(number) return (250); end))
talkEntry:addResponse("Brágon ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*gunst")
talkEntry:addCondition(condition_quest(404, "=>", function(number) return (200); end))
talkEntry:addResponse("Brágon ist außerordentlich zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*gunst")
talkEntry:addCondition(condition_quest(404, "=>", function(number) return (150); end))
talkEntry:addResponse("Brágon ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*gunst")
talkEntry:addCondition(condition_quest(404, "=>", function(number) return (100); end))
talkEntry:addResponse("Brágon ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*gunst")
talkEntry:addCondition(condition_quest(404, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 2))
talkEntry:addResponse("Brágon ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*gunst")
talkEntry:addCondition(condition_quest(404, "=>", function(number) return (50); end))
talkEntry:addResponse("Brágon ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*gunst")
talkEntry:addCondition(condition_quest(404, ">", function(number) return (-50); end))
talkEntry:addResponse("Brágon ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*gunst")
talkEntry:addCondition(condition_quest(404, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 2))
talkEntry:addResponse("Brágon ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Brágons zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*gunst")
talkEntry:addCondition(condition_quest(404, ">", function(number) return (-100); end))
talkEntry:addResponse("Brágon ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*gunst")
talkEntry:addCondition(condition_quest(404, ">", function(number) return (-150); end))
talkEntry:addResponse("Brágon ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*gunst")
talkEntry:addCondition(condition_quest(404, ">", function(number) return (-200); end))
talkEntry:addResponse("Brágon ist zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*gunst")
talkEntry:addCondition(condition_quest(404, ">", function(number) return (-250); end))
talkEntry:addResponse("Brágon ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Br[aá]gon")
talkEntry:addTrigger("Br[aá]gon.*gunst")
talkEntry:addResponse("Brágon ist rasend vor Zorn auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Eldan")
talkEntry:addTrigger("Eldan.*gunst")
talkEntry:addCondition(condition_quest(405, "=>", function(number) return (250); end))
talkEntry:addResponse("Eldan ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Eldan")
talkEntry:addTrigger("Eldan.*gunst")
talkEntry:addCondition(condition_quest(405, "=>", function(number) return (200); end))
talkEntry:addResponse("Eldan ist außerordentlich zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Eldan")
talkEntry:addTrigger("Eldan.*gunst")
talkEntry:addCondition(condition_quest(405, "=>", function(number) return (150); end))
talkEntry:addResponse("Eldan ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Eldan")
talkEntry:addTrigger("Eldan.*gunst")
talkEntry:addCondition(condition_quest(405, "=>", function(number) return (100); end))
talkEntry:addResponse("Eldan ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Eldan")
talkEntry:addTrigger("Eldan.*gunst")
talkEntry:addCondition(condition_quest(405, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 3))
talkEntry:addResponse("Eldan ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Eldan")
talkEntry:addTrigger("Eldan.*gunst")
talkEntry:addCondition(condition_quest(405, "=>", function(number) return (50); end))
talkEntry:addResponse("Eldan ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Eldan")
talkEntry:addTrigger("Eldan.*gunst")
talkEntry:addCondition(condition_quest(405, ">", function(number) return (-50); end))
talkEntry:addResponse("Eldan ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Eldan")
talkEntry:addTrigger("Eldan.*gunst")
talkEntry:addCondition(condition_quest(405, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 3))
talkEntry:addResponse("Eldan ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Eldans zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Eldan")
talkEntry:addTrigger("Eldan.*gunst")
talkEntry:addCondition(condition_quest(405, ">", function(number) return (-100); end))
talkEntry:addResponse("Eldan ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Eldan")
talkEntry:addTrigger("Eldan.*gunst")
talkEntry:addCondition(condition_quest(405, ">", function(number) return (-150); end))
talkEntry:addResponse("Eldan ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Eldan")
talkEntry:addTrigger("Eldan.*gunst")
talkEntry:addCondition(condition_quest(405, ">", function(number) return (-200); end))
talkEntry:addResponse("Eldan ist zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Eldan")
talkEntry:addTrigger("Eldan.*gunst")
talkEntry:addCondition(condition_quest(405, ">", function(number) return (-250); end))
talkEntry:addResponse("Eldan ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Eldan")
talkEntry:addTrigger("Eldan.*gunst")
talkEntry:addResponse("Eldan ist rasend vor Zorn auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Tanora")
talkEntry:addTrigger("Tanora.*gunst")
talkEntry:addCondition(condition_quest(406, "=>", function(number) return (250); end))
talkEntry:addResponse("Tanora ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Tanora")
talkEntry:addTrigger("Tanora.*gunst")
talkEntry:addCondition(condition_quest(406, "=>", function(number) return (150); end))
talkEntry:addResponse("Tanora ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Tanora")
talkEntry:addTrigger("Tanora.*gunst")
talkEntry:addCondition(condition_quest(406, "=>", function(number) return (200); end))
talkEntry:addResponse("Tanora ist außerordentlich zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Tanora")
talkEntry:addTrigger("Tanora.*gunst")
talkEntry:addCondition(condition_quest(406, "=>", function(number) return (100); end))
talkEntry:addResponse("Tanora ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Tanora")
talkEntry:addTrigger("Tanora.*gunst")
talkEntry:addCondition(condition_quest(406, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 4))
talkEntry:addResponse("Tanora ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Tanora")
talkEntry:addTrigger("Tanora.*gunst")
talkEntry:addCondition(condition_quest(406, "=>", function(number) return (50); end))
talkEntry:addResponse("Tanora ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Tanora")
talkEntry:addTrigger("Tanora.*gunst")
talkEntry:addCondition(condition_quest(406, ">", function(number) return (-50); end))
talkEntry:addResponse("Tanora ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Tanora")
talkEntry:addTrigger("Tanora.*gunst")
talkEntry:addCondition(condition_quest(406, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 4))
talkEntry:addResponse("Tanora ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Tanoras zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Tanora")
talkEntry:addTrigger("Tanora.*gunst")
talkEntry:addCondition(condition_quest(406, ">", function(number) return (-100); end))
talkEntry:addResponse("Tanora ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Tanora")
talkEntry:addTrigger("Tanora.*gunst")
talkEntry:addCondition(condition_quest(406, ">", function(number) return (-150); end))
talkEntry:addResponse("Tanora ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Tanora")
talkEntry:addTrigger("Tanora.*gunst")
talkEntry:addCondition(condition_quest(406, ">", function(number) return (-200); end))
talkEntry:addResponse("Tanora ist zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Tanora")
talkEntry:addTrigger("Tanora.*gunst")
talkEntry:addCondition(condition_quest(406, ">", function(number) return (-250); end))
talkEntry:addResponse("Tanora ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Tanora")
talkEntry:addTrigger("Tanora.*gunst")
talkEntry:addResponse("Tanora ist rasend vor Zorn auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Findari")
talkEntry:addTrigger("Findari.*gunst")
talkEntry:addCondition(condition_quest(407, "=>", function(number) return (250); end))
talkEntry:addResponse("Findari ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Findari")
talkEntry:addTrigger("Findari.*gunst")
talkEntry:addCondition(condition_quest(407, "=>", function(number) return (150); end))
talkEntry:addResponse("Findari ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Findari")
talkEntry:addTrigger("Findari.*gunst")
talkEntry:addCondition(condition_quest(407, "=>", function(number) return (200); end))
talkEntry:addResponse("Findari ist außerordentlich zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Findari")
talkEntry:addTrigger("Findari.*gunst")
talkEntry:addCondition(condition_quest(407, "=>", function(number) return (100); end))
talkEntry:addResponse("Findari ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Findari")
talkEntry:addTrigger("Findari.*gunst")
talkEntry:addCondition(condition_quest(407, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 5))
talkEntry:addResponse("Findari ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Findari")
talkEntry:addTrigger("Findari.*gunst")
talkEntry:addCondition(condition_quest(407, "=>", function(number) return (50); end))
talkEntry:addResponse("Findari ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Findari")
talkEntry:addTrigger("Findari.*gunst")
talkEntry:addCondition(condition_quest(407, ">", function(number) return (-50); end))
talkEntry:addResponse("Findari ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Findari")
talkEntry:addTrigger("Findari.*gunst")
talkEntry:addCondition(condition_quest(407, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 5))
talkEntry:addResponse("Findari ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Findaris zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Findari")
talkEntry:addTrigger("Findari.*gunst")
talkEntry:addCondition(condition_quest(407, ">", function(number) return (-100); end))
talkEntry:addResponse("Findari ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Findari")
talkEntry:addTrigger("Findari.*gunst")
talkEntry:addCondition(condition_quest(407, ">", function(number) return (-150); end))
talkEntry:addResponse("Findari ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Findari")
talkEntry:addTrigger("Findari.*gunst")
talkEntry:addCondition(condition_quest(407, ">", function(number) return (-200); end))
talkEntry:addResponse("Findari ist zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Findari")
talkEntry:addTrigger("Findari.*gunst")
talkEntry:addCondition(condition_quest(407, ">", function(number) return (-250); end))
talkEntry:addResponse("Findari ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst.*Findari")
talkEntry:addTrigger("Findari.*gunst")
talkEntry:addResponse("Findari ist rasend vor Zorn auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addConsequence(consequence_inform("[Keywords]Gunst der Ushara, Gunst des Brágon, Gunst des Eldan, Gunst der Tanora, Gunst der Findari"))
talkEntry:addResponse("Du willst wissen, ob die Götter dir gewogen sind? Welchen der älteren Götter meinst du?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sacrifice")
talkEntry:addResponse("The elder gods are hard to appease, they would only accept pure elements and magic wands.")
talkEntry:addResponse("If you really want to perform acts on behalf of Brágon, ask me for a task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Opfer")
talkEntry:addTrigger("Opfergabe")
talkEntry:addResponse("Die alten Götter haben hohe Ansprüche, sie akzeptieren nur reine Elemente und Zauberstäbe.")
talkEntry:addResponse("Wenn ihr wirklich Taten im Namen Brágons vollbringen wollt, fragt mich nach einem Auftrag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("There are five gods: Brágon, Eldan, Findari, Tanora and Ushara. If you didn't know before, drop dead now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Es gibt fünf Götter: Brágon, Eldan, Findari, Tanora und Ushara. Wenn ihr das nicht wußtet, fallt bitte tot um.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Brágon is the heart; whatever we do, we do it because our heart tells us to. Be it good, be it bad, Brágon is in all we do. He is the esteem that makes our life worthy.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Brágon ist das Herz; was auch immer wir tun, wir tun es, weil es unser Herz gebietet. Sei es gut, sei es böse, Brágon ist in allem, was wir tun. Er ist Funke, der unser Leben lebenswert macht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Eldan is the mind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Eldan ist der Geist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari is the breath.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari ist der Atem.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Tanora is the blood.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Tanora ist das Blut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara is the body.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara ist der Leib.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("Get the flame out of here!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Verbrennt euch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I am happy to tell you about the Five and in particular Brágon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Gerne erzähle ich euch von den Fünf und Brágon im Besonderen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bathelor")
talkEntry:addResponse("My name is not that important, you can call me your 'Highness' or 'Excellency'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bathelor")
talkEntry:addResponse("Mein Name ist nicht so wichtig, ihr könnt mich auch 'Durchlaucht' oder 'Exzellenz' nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Ich bin Bathelor!", "I am Bathelor!")
talkingNPC:addCycleText("Lobet Brágon!", "Praise Brágon!")
talkingNPC:addCycleText("Wir brauchen hier kein Wasser, lasst das Feuer brennen.", "We don't need no water let the fire burn. Burn, fire, burn!")
talkingNPC:addCycleText("Wir haben das Feuer nicht entfacht, es hat schon immer gebrannt, seitdem sich die Welt bewegt.", "We didn't start the fire, it was always burning, since the world's been turning .")
talkingNPC:addCycleText("Ihr hattet genug Zeit zu rasten, diese ist nun abgelaufen.", "You've had the time to rest, which is coming to an end.")
talkingNPC:addCycleText("Feuer!", "Fire!")
talkingNPC:addCycleText("Es brennt!", "It's burning!")
talkingNPC:addCycleText("Gelobt sei Brágon!", "Hail Brágon!")
talkingNPC:addCycleText("Träume ich oder ist dieses Feuer die ewige Flamme?", "Am I only dreaming or is this burning an eternal flame?")
talkingNPC:addCycleText("Vollbringt Taten im Namen Brágons.", "Do deeds to honour Brágon.")
talkingNPC:addCycleText("Ich diene dem Gott des Feuers. Und er bringt euch... Feuer!", "I serve the god of fire. And he brings you... fire!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Bathelor der Hohepriester Brágons.", "This NPC is Bathelor the high priest of Brágon.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 358)
mainNPC:setEquipment(3, 818)
mainNPC:setEquipment(11, 2419)
mainNPC:setEquipment(5, 2783)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
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
