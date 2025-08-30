local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local condition_sex = require("npc.base.condition.sex")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Hagar Wernson the keeper of 'The Winged Sow' Tavern. Keywords: Galmair, I am 'your name'."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dies ist NPC Hager Wernson der Wirt der 'Taverne zur geflügelten Sau'. Schlüsselwörter: Galmair, Ich bin 'dein Name'."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(306, "=", 0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("The Innkeeper gifts you a beer for free. Cheers!"))
talkEntry:addConsequence(consequence_item(1909, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(306, "=", 1))
talkEntry:addResponse("You are new here, aren't you? Here you go! The first beer's free. Welcome at the Winged Sow tavern!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(306, "=", 0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("Der Wirt gibt dir ein Bier aus. Prost!"))
talkEntry:addConsequence(consequence_item(1909, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(306, "=", 1))
talkEntry:addResponse("Du bist neu hier, was? Hier! Das erste Bier geht immer auf's Haus. Willkommen in der Taverne zur geflügelten Sau!")
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
talkEntry:addResponse("Was soll's sein?")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addResponse("What do you want?")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("G'day, beautiful maiden! Come here! I'll clean that table.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_item(333, "all", "=>", 1, nil))
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addResponse("G'day, %CHARNAME! Here's yer place! Fill yer up?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_item(333, "all", "=>", 1, nil))
talkEntry:addTrigger("Grüße")
talkEntry:addTrigger("Gruß")
talkEntry:addTrigger("Seid gegrüßt")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addTrigger("mit dir")
talkEntry:addResponse("Moin, Moin, %CHARNAME! Komm ran! Hier kannste Dich vollkippen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_item(333, "all", "=>", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("G'day, %CHARNAME! Here's yer place! Fill yer up?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_item(333, "all", "=>", 1, nil))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Moin, Moin, %CHARNAME! Komm ran! Hier kannste Dich vollkippen.")
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
talkEntry:addResponse("G'day, be welcome in the Winged Sow Tavern!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grüße")
talkEntry:addTrigger("Gruß")
talkEntry:addTrigger("Seid gegrüßt")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addTrigger("mit dir")
talkEntry:addResponse("Moin, seid willkommen in der Taverne zur geflügelten Sau!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("G'day, be welcome in the Winged Sow Tavern!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Moin, seid willkommen in der Taverne zur geflügelten Sau!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Be well! An' careful that no one steps on yer hands...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Bis bald! Und lass dir nich auffe Hände treten...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Be well! An' careful that no one steps on yer hands...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Bis bald! Und lass dir nich auffe Hände treten...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Aye, I'm fine, but you seem to be thirsty...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befinden")
talkEntry:addResponse("Aye, mir gehts gut. Aber ihr seht aus als hättet ihr Durst...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Hagar Wernson, the innkeeper.")
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
talkEntry:addResponse("Ich bin Hagar Wernson, der Wirt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I haven't any tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich hab keine Arbeit für Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I haven't any tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe keine Arbeit für Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I'm the inkeeper here.")
talkEntry:addResponse("This is my tavern. 'The Winged Sow'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin der Wirt, hier.")
talkEntry:addResponse("Das ist meine Taverne. 'Zur geflügelten Sau'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I'm the inkeeper here.")
talkEntry:addResponse("This is my tavern. 'The Winged Sow'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin der Wirt, hier.")
talkEntry:addResponse("Das ist meine Taverne. 'Zur geflügelten Sau'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Aye, s'horrible what happened there. I will miss Nordmark forever.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Aye, das war schrecklich was dort passiert ist. Die Nordmark werd ich immer vermissen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("No need to tell me. I'm really good with names, I never forgot one. What can I serve you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Brauchste mir nicht zu sagen. Mit Namen bin ich ausgesprochen gut. hab noch nie einen vergessen. - Was darfs heute sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dragon")
talkEntry:addResponse("Dragon's Pond? My old tavern, sadly I had to leave it behind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("nordmark")
talkEntry:addTrigger("northmark")
talkEntry:addResponse("That's the place where my old tavern was, The Dragon's Pond! It was a good place to be, no witches or longears... Except for the ones whose heads we put on a spike. Har-har!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sow")
talkEntry:addTrigger("pig")
talkEntry:addResponse("Aye, look to the sky, maybe you will see one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Murgo")
talkEntry:addResponse("I knew Murgo, he was a good friend of my people.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Vigalf")
talkEntry:addResponse("Good old Vigalf. Zhambra bless my old friend!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("drache")
talkEntry:addResponse("Drachentränke. Meine alte Taverne. Trauriger Weise musste ich sie verlassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nordmark")
talkEntry:addResponse("Das ist der Ort wo die alte Taverne stand. Die Drachentränke! Das war ein guter Ort zum Leben. Keine Hexer und Langohren. Abgesehen von denen, deren Köpfe wir auf nen Pfahl gesteckt haben. Har-har!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sau")
talkEntry:addTrigger("schwein")
talkEntry:addResponse("Aye, schaut in die Wolken, vielleicht seht ihr eine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Murgo")
talkEntry:addResponse("Ich kannte Murgo noch von der Zeit auf Gobaith. War ein guter Freund von meinen Leuten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Vigalf")
talkEntry:addResponse("Guter-guter alter Vigalf. Zhambra schütze meinen alten Freund.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("All that riff-raff should be kicked in their butts, if you ask me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Dieses ganze Gesocks gehört kreäftig in den Hintern getreten. Wenn meine Meinung was Wert ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("All that riff-raff should be kicked in their butts, if you ask me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Dieses ganze Gesocks gehört kreäftig in den Hintern getreten. Wenn meine Meinung was Wert ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("All that riff-raff should be kicked up their butts, if you ask me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Dieses ganze Gesocks gehört kreäftig in den Hintern getreten. Wenn meine Meinung was Wert ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("The Don makes sure my tavern is the only one in town. A good deal, eh? That's totally worth the fee.")
talkEntry:addResponse("What's up? I paid for everything a few days ago!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don, sorgt dafür das meine Taverne die einzige in der Stadt ist. Feine Sache oder? Das lass ich mir gerne etwas kosten.")
talkEntry:addResponse("Was willst du? Ich hab alles schon vor n' paar Tagen bezahlt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("I know what the people say... But here in Galmair your wallet gets nice and fat. The only fat thing in Cadomyr is Queen Rosaline's butt! Har-har-har!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ich weiß was die Leute sagen... Aber hier in Galmair! - Wird der Münzbeutel prall und fett. Das einzig fette in Cadomyr ist Königin Edwards! Har-har-har!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("They say Queen Rosaline sells hot love for a handful of copper. Oh! No, wait, that's what I say...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Man sagt Königin Edwards verkauft heiße Liebe für ne Hand voll Kupfer. Oh! Nein wartet, das ist was ich sage...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("They say Queen Rosaline sells hot love for a handful of copper. Oh! No, wait, that's what I say...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Man sagt Königin Edwards verkauft heiße Liebe für ne Hand voll Kupfer. Oh! Nein wartet, das ist was ich sage...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Like the dwarves say, 'There are too many head bangers in Cadomyr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("In Cadomyr laufen mir zu viele Holzköpfe mit großen Schwertern herum.")
talkEntry:addResponse("Es heißt die Frauen in Cadomyr hätten besondere Tricks auf Lager. Nüsse knacken zum Beispiel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("My old friend Vigalf was born there, he didn't like it that much.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Mein alter Freund Vigalf kam aus Albar. Hat ihm dort nie so wirklich gefallen schätze ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("I'm Norodaj! What would I do in that horrible heat? I guess a clever man should be able to make good money there, though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ich bin 'n Norodaj! Was sollte ich in dieser Affen-Hitze? Aber ich schätze ein kluger Mann kann dort gutes Geld machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar is a club of boring parchment shufflers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar ist ein Verein von langweiligen Sesselpupsern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I'm Norodaj, Zhambra and Tanora are my choice... And Ronagan, to keep my tavern safe! Aye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Ich bin Norodaj. Zhambra und Tanora sind meine Wahl. Und Ronagan, damit meine Taverne sicher ist. Aye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron? Well, for sure... I had his shrine here - somewhere. Uhm..")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron? Ja Sicherlich... Ich hatte seinen Schrein hier - irgendwo. Uhm..")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("One of the treehugger gods... Don't ask me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Mit diesen Elfengöttern hab ich nichts am Hut. Und dich hab nichtmal nen Hut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Ask a priest or something.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Ask a priest or something.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("One of the treehugger gods... Don't ask me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Mit diesen Elfengöttern hab ich nichts am Hut. Und ich hab nichtmal nen Hut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("One of the treehugger gods... Don't ask me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Mit diesen Elfengöttern hab ich nichts am Hut. Und ich hab nichtmal nen Hut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("The Merchants and dwarves, ask them, it's their God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Die Händler und Zwerge, ja-ja. Frag die. Irmorom ist deren Gott.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Ask a priest or something.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Ask a priest or something.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Ask a priest or something.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Ask a priest or something.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Praise Ronagan! Thanks to him those thieves are far away from my coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Gepriesen sei Ronagan. Und gedankt seis ihm, das die elenden Langfinger meinen Münzen fern bleiben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Ask a priest or something.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("The Norodaj are the children of the sea. Tanora blesses our ships.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Die Norodaj, sind die Kinder der See. Und Tanora schütze unsere Schiffe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("One of the treehugger gods... Don't ask me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Mit diesen Elfengöttern hab ich nichts am Hut. Und dich hab nichtmal nen Hut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Bless my brothers and my friends, Zhambra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Schütze meine Brüder und Freunde, Zhambra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("At that time I was the inkeeper of the Dragon's Pond, but now, yes now, I hold this moderate establishment.")
talkEntry:addResponse("This is my tavern. 'The Winged Sow', that's the name. Aye that's right!")
talkEntry:addResponse("Although the business in Galmair is much better, I do miss the old Drangon's Pond sometimes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Damals war ich der Wirt der Drachentränke. Aber nun - ja nun gehört mir diese bescheidene Hütte.")
talkEntry:addResponse("Dies ist meine Taverne. 'Zur geflügelten Sau' heißt sie. Aye, so ist's!")
talkEntry:addResponse("Auch wenn das Geschäft in Galmair besser geht, vermiss ich die alte Drachentränke manchmal trozdem.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I've got Virgin's Delight, our renowned cider; Gnoll Poison, a good red wine; Bear Trap, our best mead; an' Northburger Skullcracker, our beer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich hab Jungfernglück, den beliebten Apfelwein. Oder Gnollgift, den guten Rotwein. Bärenfalle, den besten Met der Gegend. Und Nordburger Schädelbrecher, unser Bier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("milk")
talkEntry:addResponse("This is no monastery! Get lost!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("milch")
talkEntry:addTrigger("kauf milch")
talkEntry:addResponse("Hier iss doch kein Kloster! Verschwinde!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("water")
talkEntry:addResponse("Ye can water yer cow outside! This ain't no stable here!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wasser")
talkEntry:addResponse("Deine Kuh kannst du draussen tränken! Dies iss doch kein Stall!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beer")
talkEntry:addResponse("I serve the best beer of Illarion! 'Yesolt's Bockbrau', a fine dwarven ale! Also, of course, the famous Don's label - 'Gulden Goldmalz'!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bier")
talkEntry:addResponse("Hier gibts das Beste Bier Illarions! 'Yesolt's Bockbräu', n' feines zwergisches Ale! Und natürlich das berühmte 'Gülden Goldmalz', DAS Gebräu aus dem Hause des Dons.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hagar")
talkEntry:addTrigger("Wernson")
talkEntry:addResponse("Beer or wine?")
talkEntry:addResponse("The usual?")
talkEntry:addResponse("Hrmpf?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hagar")
talkEntry:addTrigger("Wernson")
talkEntry:addTrigger("Wirt")
talkEntry:addResponse("Was darf's sein?")
talkEntry:addResponse("S' übliche?")
talkEntry:addResponse("Hrmpf?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Wir laaagen vor Sor-Ann-Araah... und hatten 'nen Elf ahan Bord.... In den Kesseln da faulte das Wassah... da soffen wir Bier soohofort... ", "Blow wi-ind, blow... to Salkamar we go.... her hair was blond, her eyes were blue... her lips were red, her axe was new... ter my hodae, ter my hodae, ter my hodae, hodae ho!")
talkingNPC:addCycleText("#me verwischt den Dreck auf dem Tisch.", "#me wipes over the dirt on the table.")
talkingNPC:addCycleText("#me steht in einer Wolke übler Gerüche.", "#me stands in a cloud of bad smells.")
talkingNPC:addCycleText("#me trocknet einen Krug mit einem Drecklappen.", "#me dries a mug with a dirty rag.")
talkingNPC:addCycleText("#me klaubt sich Krümel aus dem Bart.", "#me picks crumbs out of his beard.")
talkingNPC:addCycleText("#me pustet den Staub aus einem Bierkrug.", "#me blows dust out of a mug.")
talkingNPC:addCycleText("#me reisst sich Haare aus der Nase.", "#me picks hair out of his nose.")
talkingNPC:addCycleText("Von den blauen Wellen kommen wir!... unser Käpt'n iss so blöd wie wir!... an den Rudern unsrer Boote, krieg'n wir Blasen anner Pfote.... von den blauen Wellen kommen wir!...", "oh beat the drum slowly, an' play the flute only, as they carry me along... cause I'm a young pirate, an' I surely done wrong...")
talkingNPC:addCycleText("#me riecht nach vergammeltem Fleisch und feuchtem Schafsfell.", "#me smells of putrefied meat and wet sheepskin.")
talkingNPC:addCycleText("#me kratzt sich abwesend unter dem Kilt.", "#me absently scratches himself under his kilt.")
talkingNPC:addCycleText("#me trocknet sich mit dem Geschirrtuch unter den Achseln.", "#me dries his armpits with the dishrag.")
talkingNPC:addCycleText("#mes Atem riecht nach schalem Bier.", "#me's breath smells of stale beer.")
talkingNPC:addCycleText("Dann sag ich mal Prost.", "The Gods may bless you.")
talkingNPC:addCycleText("Viel Spass in meiner Taverne!", "Have fun in my tavern.")
tradingNPC:addItem(trade.tradeNPCItem(4351,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1909,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4355,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4354,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4353,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4352,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4363,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4592,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4593,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4594,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4595,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4460,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4461,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4462,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4463,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4464,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4465,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4466,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4467,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1841,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1842,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1843,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1844,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4359,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4577,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4578,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4579,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4580,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4433,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4434,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4435,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4436,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4437,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4438,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4439,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4440,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1855,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1860,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1853,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1859,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4361,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4582,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4583,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4584,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4585,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4469,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4470,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4471,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4472,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4473,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4474,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4475,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4476,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1854,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1857,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1856,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1861,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4360,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4587,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4588,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4589,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4590,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4451,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4452,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4453,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4454,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4455,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4456,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4457,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4458,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4808,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4809,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4810,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4811,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4351,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1909,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4355,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4354,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4353,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4352,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4363,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4592,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4593,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4594,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4595,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4460,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4461,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4462,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4463,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4464,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4465,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4466,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4467,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1841,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1842,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1843,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1844,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4359,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4577,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4578,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4579,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4580,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4433,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4434,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4435,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4436,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4437,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4438,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4439,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4440,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1855,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1860,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1853,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1859,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4361,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4582,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4583,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4584,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4585,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4469,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4470,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4471,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4472,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4473,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4474,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4475,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4476,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1854,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1857,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1856,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1861,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4360,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4587,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4588,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4589,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4590,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4451,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4452,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4453,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4454,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4455,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4456,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4457,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4458,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4808,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4809,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4810,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4811,"buySecondary"))
tradingNPC:addNotEnoughMoneyMsg("Bei mir kann man nicht anschreiben lassen!", "You can't chalk up the drinks!")
tradingNPC:addDialogClosedMsg("Prost.", "Cheers.")
tradingNPC:addDialogClosedNoTradeMsg("Bah.", "Bah.")
tradingNPC:addWrongItemMsg("Das kaufe ich nicht.", "I'm not buying this.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Ein großgewachsener Norodaj, der mit einem schmierigen Lappen den Schmutz in einem gläsernen Bierkrug herumwischt.", "A tall Norodaj uses a dirty rag to smear a glass beer mug 'clean'.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(9, 823)
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
