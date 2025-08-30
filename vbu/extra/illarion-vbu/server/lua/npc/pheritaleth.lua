local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_gemcraft = require("npc.base.consequence.gemcraft")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 10))
talkEntry:addCondition(condition_item(234, "all", ">", 0, {["nameEn"] = "Really big gold nugget"}))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("charwis")
talkEntry:addTrigger("irongate")
talkEntry:addTrigger("gold")
talkEntry:addTrigger("nugget")
talkEntry:addConsequence(consequence_quest(702, "=", 11))
talkEntry:addResponse("Unbelievable! This gold nugget really is as large as an apple! Please, tell Charwis I'm sorry I called him a liar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 10))
talkEntry:addCondition(condition_item(234, "all", ">", 0, {["nameDe"] = "Echt großer Goldnugget"}))
talkEntry:addTrigger("charwis")
talkEntry:addTrigger("irongate")
talkEntry:addTrigger("gold")
talkEntry:addTrigger("nugget")
talkEntry:addConsequence(consequence_quest(702, "=", 11))
talkEntry:addResponse("Unglaublich! Der Goldnugget ist ja wahrlich so groß wie ein Apfel! Bitte sagt Charwis, es tut mir leid, dass ich ihn einen Lügner nannte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Pheritaleth the magical blacksmith. Keywords: Be greeted, gemcraft, profession, gems."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Pheritaleth die Zauberschmiedin. Schlüsselwörter: Seid gegrüßt, Vereinigung, Beruf, Edelsteine."))
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
talkEntry:addResponse("I foretell that you did not come to me to chat about inane things. We should strictly get to business, mine is transmuting gems.")
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
talkEntry:addResponse("Ich nehme an, ihr seid nicht zu mir gekommen um über unwichtiges Gewäsch zu reden. Lasst uns zur Sache kommen, mein Geschäft ist das Vereinen von Edelsteinen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("I foretell that you did not come to me to chat about inane things. We should strictly get to business, mine is transmuting gems.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Ich nehme an, ihr seid nicht zu mir gekommen um über unwichtiges Gewäsch zu reden. Lasst uns zur Sache kommen, mein Geschäft ist das Vereinen von Edelsteinen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Happy mining.")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Viel Spaß in der Mine.")
talkEntry:addResponse("Gehabt euch wohl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Happy mining.")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Viel Spaß in der Mine.")
talkEntry:addResponse("Gehabt euch wohl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Fine! Let's talk about gems.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Gut. Nun lasst uns über Edelsteine reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addConsequence(consequence_gemcraft(craftNPC))
talkEntry:addResponse("They call me Pheritaleth and I am skilled in gem transmutation.")
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
talkEntry:addResponse("Ich werde Pheritaleth genannt und bin eine Edelsteinkünstlerin.")
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
talkEntry:addTrigger("gem")
talkEntry:addTrigger("magic")
talkEntry:addTrigger("smithing")
talkEntry:addTrigger("gemcraft")
talkEntry:addTrigger("transmute")
talkEntry:addTrigger("combine")
talkEntry:addTrigger("enchant")
talkEntry:addConsequence(consequence_gemcraft(craftNPC))
talkEntry:addResponse("Let me take a look at your gems...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Edelstein")
talkEntry:addTrigger("magisch")
talkEntry:addTrigger("Schmieden")
talkEntry:addTrigger("verwandel")
talkEntry:addTrigger("verein")
talkEntry:addTrigger("kombinier")
talkEntry:addTrigger("verzauber")
talkEntry:addConsequence(consequence_gemcraft(craftNPC))
talkEntry:addResponse("Dann lasst mal eure Edelsteine sehen...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I don't have any tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich vergebe keine Aufgaben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I don't have any tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich vergebe keine Aufgaben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("My profession is to transmute magical gems. I have several aeons of experience, so do not question my expertise.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Mein Beruf ist es, magische Edelsteine zu vereinen. Ich habe mehrere Zeitalter an Erfahrung, also stellt meine Kompetenz nicht in Frage.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("My profession is to transmute magical gems. I have several aeons of experience, so do not question my expertise.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Mein Beruf ist es, magische Edelsteine zu vereinen. Ich habe mehrere Zeitalter an Erfahrung, also stellt meine Kompetenz nicht in Frage.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gem")
talkEntry:addResponse("I know a lot about all the gems. Just tell me what gem you are interested in!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Amethyst")
talkEntry:addResponse("Amethysts are the the clubs amongst gems. Their beauty is rather crude but natural.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ruby")
talkEntry:addResponse("Some say, rubies were made of Brágon's fire, but I know better why they are so red...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Obsidian")
talkEntry:addResponse("Obsidian is known to be used in dark rituals, but keep in mind that evil deeds are done by evil men, not by gems.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Blackstone")
talkEntry:addResponse("Obsidian is known to be used in dark rituals, but keep in mind that evil deeds are done by evil men, not by gems.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sapphire")
talkEntry:addResponse("Those who don't know any better see a connection between sapphires and Tanora. How I laughed when I first heard that rumour!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bluestone")
talkEntry:addResponse("Those who don't know any better see a connection between sapphires and Tanora. How I laughed when I first heard that rumour!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Emerald")
talkEntry:addResponse("Emeralds are the gems many people forgot about; I have never heard idiotic theories about their origin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Topaz")
talkEntry:addResponse("I keep wondering why some people search for topaz along the shores. You may as well wait for them to drop from the sky.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Diamond")
talkEntry:addResponse("The diamond is the king amongst the gems. They are extremely rare and powerful.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Edelstein")
talkEntry:addResponse("Ich weiß eine Menge über die Edelsteine. Sagt mir einfach, welche Edelsteine euch interessieren!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Amethyst")
talkEntry:addResponse("Die Amethysten sind die Knüppel unter den Edelsteinen. Ihre Schönheit ist von roher, aber natürlicher Art.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Rubin")
talkEntry:addResponse("Manche glauben, Rubine wurden aus Brágons Feuer geschaffen, aber ich weiß, warum sie wirklich so rot sind...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Obsidian")
talkEntry:addResponse("Der Obsidian ist dafür bekannt, in dunklen Ritualen Verwendung zu finden. Denkt aber immer daran, dass diejenigen böse sind, die Böses tun, und nicht die Edelsteine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schwarzstein")
talkEntry:addResponse("Der Obsidian ist dafür bekannt, in dunklen Ritualen Verwendung zu finden. Denkt aber immer daran, dass diejenigen böse sind, die Böses tun, und nicht die Edelsteine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Saphir")
talkEntry:addResponse("Die Unwissenden denken, Tanora hötte etwas mit den Saphiren zu tun. Wie habe ich gelacht, als ich diesen Quatsch das erste mal gehört habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Blaustein")
talkEntry:addResponse("Die Unwissenden denken, Tanora hötte etwas mit den Saphiren zu tun. Wie habe ich gelacht, als ich diesen Quatsch das erste mal gehört habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Smaragd")
talkEntry:addResponse("Viele haben vergessen, dass es Smaragde überhaupt gibt. Ich habe noch keine schwachsinnigen Theorien über ihre Herkunft gehört.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Topas")
talkEntry:addResponse("Ich wundere mich immer wieder darüber, warum die Leute Topase an der Küste suchen. Genausogut könnte man darauf warten, dass sie einem auf den Kopf fallen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Diamant")
talkEntry:addResponse("Die Diamanten sind die Könige der Edelsteine. Sie sind äußerst selten und mächtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addTrigger("faith")
talkEntry:addResponse("The Eleven are just rascals, only the Five have true power.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addTrigger("Glaube")
talkEntry:addResponse("Die Elf sind einfach nur ein paar Bengel. Die wahre Macht ist den Fünf zu eigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("religion")
talkEntry:addResponse("The Eleven are just rascals, only the Five have true power.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("religion")
talkEntry:addResponse("Die Elf sind einfach nur ein paar Bengel. Die wahre Macht ist den Fünf zu eigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("So, you assume my art is a craft and I should pray to Irmorom? Shall I laugh or shall I cry?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Ah, ihr glaubt also, meine Kunst ist ein Handwerk und ich sollte zu Irmorom beten? Soll ich jetzt lachen oder weinen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara granted us the gems long ago, even for my kin. Hail her!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara vermachte uns vor selbst für mein Volk langer Zeit die Edelsteine. Huldigt ihr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Her Majesty is the current monarch. Let us wait some decades and another short lived human will take her place.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Ihre Majestät ist gerade die Monarchin. Lasst uns ein paar Jahrzehnte warten und irgendein anderer kurzlebiger Mensch hat ihren Platz eingenommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Her Majesty is the current monarch. Let us wait some decades and another short lived human will take her place.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ihre Majestät ist gerade die Monarchin. Lasst uns ein paar Jahrzehnte warten und irgendein anderer kurzlebiger Mensch hat ihren Platz eingenommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is quite a gemstone itself. It shimmers in the morning sun... perhaps because of the dew.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist selbst ein Edelstein. Es schimmert in der Morgensonne, könnte am Tau liegen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Fury.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Wut.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Meine Vorfahren haben schon Edelsteine geschliffen, als euer Stammbaum noch nicht einmal Wurzeln schlug!", "My ancestors cut gems back when your family tree hadn't even taken root yet!")
talkingNPC:addCycleText("Manche werden nie verstehen, welche Macht die Edelsteine haben und sie für einfache Klunker halten.", "Some people will never understand the power of gems and mistaken them for simple rocks.")
talkingNPC:addCycleText("Wenn ihr nach Tand sucht, geht zu Jacobus, dem Juwelier.", "If you need ordinary frippery, go to Jacobus, the jeweller.")
talkingNPC:addCycleText("Ob die Steine der Macht schwächer werden, je mehr magische Steine mit ihrer Hilfe erschaffen werden? Ein grausiger Gedanke!", "I wonder.. do the Queen's great gems grow weaker the more magical gems are made with their power? A terrible thought!")
talkingNPC:addCycleText("In jedem Edelstein liegt wahre Macht.", "True magic lies within every gem.")
talkingNPC:addCycleText("Schaut, wie dieser hier funkelt.", "Look at it, it is sparkling.")
talkingNPC:addCycleText("Funkel wie ein... Rubin!", "Shine bright like a... ruby!")
talkingNPC:addCycleText("Wenn ein Zwerg sagt, dass die Augen einer Frau wie Edelsteine strahlen, meint er damit, dass er ihr sie rausschneiden möchte?", "If a dwarf says that a woman's eyes look like gemstones, does he imply that he wants to cut them out of her face?")
talkingNPC:addCycleText("Zwerge lieben Granit, Elfen lieben Edelsteine.", "Dwarves love granite, elves love gemstones.")
talkingNPC:addCycleText("Diamanten sind die besten Freunde einer Elfin.", "Diamonds are an elf's best friend.")
talkingNPC:addCycleText("Habt ihr Edelsteine?", "Got any gems?")
talkingNPC:addCycleText("Gewöhnlichen Schmuck gibt es bei Jacobus, dem Juwelier. Dort drüben, vor der Werkstatt.", "You can get common jewellry from Jacobus. He is, well, the jeweller! Back there in front of the workshop.")
talkingNPC:addCycleText("So mancher Topas sticht einem mit seinem Glanz ins Auge. Doch ist er erst mit Magie durchzogen, so scheint er das Sonnenlicht selbst zu beherbergen.", "Many a common topaz may catch your eye. But if it infused with magic, you might just think the sunshine itself is trapped inside.")
talkingNPC:addCycleText("Was ein Jammer, dass es kaum magische Diamanten gibt. Allerdings, wurden nicht bei den letzten Spielen in Galmair welche an die Sieger vergeben?", "It's a pity there are hardly any magical diamonds. Although, weren't some given to the winners of the last games in Galmair?")
talkingNPC:addCycleText("Ich kann magische Steine aus eurer Ausrüstung lösen, ohne sie zu zerbrechen. Das ist allerdings nicht sehr einfach und kostet euch etwas.", "I can extract magical gems from your equipment. However, that is not an easy process and will cost you some coins.")
talkingNPC:addCycleText("Wahre Freundschaft ist wie ein Diamant. Rar, rein und sehr kostbar!", "True friendship is like a diamond. Rare, pure and very valuable.")
talkingNPC:addCycleText("Entschuldigt, möchtet ihr vielleicht eure magischen Steine bei mir zusammenfügen lassen?", "Excuse me, would you like me to combine your magical gems by any chance?")
mainNPC:addLanguage(0)
mainNPC:addLanguage(3)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Pheritaleth die Zauberschmiedin.", "This NPC is Pheritaleth the magical blacksmith.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 465)
mainNPC:setEquipment(3, 805)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 122)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 0)
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
