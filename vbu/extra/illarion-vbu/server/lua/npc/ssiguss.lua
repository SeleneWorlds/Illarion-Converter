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
talkEntry:addConsequence(consequence_inform("[Game Help] This is NPC Ssiguss. Keywords are: Quest, task, Tanora, Zelphia, mother, water, and prayer."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dies ist NPC Ssiguss. Stichworte sind: Aufgabe, Tanora, Zelphia, Mutter, Wasser, und Gebet."))
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
talkEntry:addResponse("Mother'ss rain on you, traveller.")
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
talkEntry:addResponse("Möge Mutter euch am heutigen Tage ssegnen.")
talkEntry:addResponse("Mutterss Barmherzigkeit ssei euch gewisss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Blessings of the Mother, upon you today.")
talkEntry:addResponse("The Mother's mercy upon you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Möge Mutter euch am heutigen Tage ssegnen.")
talkEntry:addResponse("Mutterss Barmherzigkeit ssei euch gewisss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell, may ze tide guide you home.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Lebt wohl, mögen die Gezeiten euch nach Hausse geleiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Ssiguss doess well, by her blessing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ssiguss tut Gutess, mit Ihrem Ssegen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Ssiguss, orphan and nessst tender.")
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
talkEntry:addTrigger("wie heißen")
talkEntry:addTrigger("wie heisst")
talkEntry:addTrigger("wie heissen")
talkEntry:addResponse("Ich bin Ssiguss, Waisse und Nessthüter.")
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
talkEntry:addTrigger("water")
talkEntry:addResponse("Water iss where lizzardss swim and Mozzer ssmiless, where our young are raissed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wasser")
talkEntry:addResponse("Wasser isst, wo die Echssen sschwimmen, Mutter lächelt und unssere Jungen aufgezogen werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("prayer")
talkEntry:addTrigger("worship")
talkEntry:addResponse("My prayerss to the Mozzer are for the orphanss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gebet")
talkEntry:addTrigger("Andacht")
talkEntry:addResponse("Meine Gebete an die Mutter gelten den Waissen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addTrigger("Mother")
talkEntry:addTrigger("Mozzer")
talkEntry:addResponse("Zze Mozzer iss merciful, tending to zee losst children.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addTrigger("Mozzer")
talkEntry:addTrigger("Mutter")
talkEntry:addResponse("Die Mutter isst sso barmherzig, dasss ssie ssich der verlorenen Kinder annimmt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Ssiguss knowss thiss one not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ssiguss kennt diesssse nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ssiguss knowss thiss one not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ssiguss kennt diesssse nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ssiguss caress not for townss, but only ssmall oness.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ssiguss sschert ssich nicht um Grosssssstädte, nur um sseine Kleinen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ssiguss knowss thiss one not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ssiguss kennt diesssse nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ssiguss knowss thiss place. Ssiguss was hatched in ze field zere, by ze magess.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ssiguss kennt diessen Ort. Ssiguss wurde in diessem Feld dort aussgebrütet, von den Magier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Ssiguss knowss thiss one not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Ssiguss kennt diesssse nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ssiguss knowss thiss one not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ssiguss kennt diesssse nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ssiguss caress not for townss, but only ssmall oness.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ssiguss sschert ssich nicht um Grosssssstädte, nur um sseine Kleinen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Materials for the Nest"))
talkEntry:addConsequence(consequence_quest(171, "=", 1))
talkEntry:addResponse("I need sssome materials for a nessst, for eggs! Get me 20 clay, 10 boughss, and 10 wheat bundles. For the lizardlingss!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Materialien für das Nest"))
talkEntry:addConsequence(consequence_quest(171, "=", 1))
talkEntry:addResponse("Ich benötige einige Materialien für ein Nesst für die Eier! Bringt mir 20 Klumpen Lehm, 10 Ässte und 10 Bündel Getreide. Für die Echssenkinder!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Materials for the Nest"))
talkEntry:addConsequence(consequence_quest(171, "=", 1))
talkEntry:addResponse("I need sssome materials for a nessst, for eggs! Get me 20 clay, 10 boughss, and 10 wheat bundles. For the lizardlingss!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Materialien für das Nest"))
talkEntry:addConsequence(consequence_quest(171, "=", 1))
talkEntry:addResponse("Ich benötige einige Materialien für ein Nesst für die Eier! Bringt mir 20 Klumpen Lehm, 10 Ässte und 10 Bündel Getreide. Für die Echssenkinder!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 1))
talkEntry:addCondition(condition_item(26, "all", ">", 19, nil))
talkEntry:addCondition(condition_item(56, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded forty silver coins."))
talkEntry:addConsequence(consequence_money("+", 4000))
talkEntry:addConsequence(consequence_deleteitem(26, 20, nil))
talkEntry:addConsequence(consequence_deleteitem(56, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_quest(171, "=", 2))
talkEntry:addResponse("Sksk! Good you gathered the nest materials. Take thiss as payment. Now for the eggs!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 1))
talkEntry:addCondition(condition_item(26, "all", ">", 19, nil))
talkEntry:addCondition(condition_item(56, "all", ">", 9, nil))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst vierzig Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 4000))
talkEntry:addConsequence(consequence_deleteitem(26, 20, nil))
talkEntry:addConsequence(consequence_deleteitem(56, 10, nil))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_quest(171, "=", 2))
talkEntry:addResponse("Sksk! Gut, ihr habt die Materialien für dass Nesst gesssammelt. Nehmt diess alss Bezahlung. Nun zu den Eiern!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("#me clicks his tongue anxiously, 'We need those materials soon!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 1))
talkEntry:addTrigger(".+")
talkEntry:addResponse("#me schnalzt nervös mit der Zunge: 'Wir benötigen diesse Materialien, sschnell!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Get Eggs for Ssiguss"))
talkEntry:addConsequence(consequence_quest(171, "=", 3))
talkEntry:addResponse("Tssk tssk. Sssome lizardss abandon their eggs in chicken nesssts, or chickenss ssteal them. Bring me thirty eggs!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Bring Eier zu Sigus"))
talkEntry:addConsequence(consequence_quest(171, "=", 3))
talkEntry:addResponse("Tssk tssk, manche Echssen legen ihre Eier in Hühnernessst oder die Hühner sstehlen ssie sselbsst. Bringt mir dreisssig ssolcher Eier!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Get Eggs for Ssiguss"))
talkEntry:addConsequence(consequence_quest(171, "=", 3))
talkEntry:addResponse("Tssk tssk. Sssome lizardss abandon their eggs in chicken nesssts, or chickenss ssteal them. Bring me thirty eggs!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Bring Eier zu Sigus"))
talkEntry:addConsequence(consequence_quest(171, "=", 3))
talkEntry:addResponse("Tssk tssk, manche Echssen legen ihre Eier in Hühnernessst oder die Hühner sstehlen ssie sselbsst. Bringt mir dreisssig ssolcher Eier!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 3))
talkEntry:addCondition(condition_item(1150, "all", ">", 29, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded fifty silver coins."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_deleteitem(1150, 30, nil))
talkEntry:addConsequence(consequence_quest(171, "=", 4))
talkEntry:addResponse("Exxcellent! Zey will know a parentss love, unlike me... We need to get zem food!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 3))
talkEntry:addCondition(condition_item(1150, "all", ">", 29, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünfzig Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_deleteitem(1150, 30, nil))
talkEntry:addConsequence(consequence_quest(171, "=", 4))
talkEntry:addResponse("Echsszellent! Nun werden ssie Elternliebe erfahren können, anderss alss ich.. ssie benötigen jedoch noch Futter!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss. Zze Mozzer'ss children are waiting! Find zem!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 3))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss. Mutterss Kinder warten, findet ssie!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] For the Hatchlings!"))
talkEntry:addConsequence(consequence_quest(171, "=", 5))
talkEntry:addResponse("Ssss. Zze hatchlingss will need food. Collect for me fifty trout! Ze Mozzer watchess!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Für die Jungen!"))
talkEntry:addConsequence(consequence_quest(171, "=", 5))
talkEntry:addResponse("Ssss. Die Jungen werden Futter brauchen. Fisscht mir fünfzig Forellen. Mutter ssieht zu!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] For the Hatchlings!"))
talkEntry:addConsequence(consequence_quest(171, "=", 5))
talkEntry:addResponse("Ssss. Zze hatchlingss will need food. Collect for me fifty trout! Ze Mozzer watchess!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Für die Jungen!"))
talkEntry:addConsequence(consequence_quest(171, "=", 5))
talkEntry:addResponse("Ssss. Die Jungen werden Futter brauchen. Fisscht mir fünfzig Forellen. Mutter ssieht zu!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 5))
talkEntry:addCondition(condition_item(73, "all", ">", 49, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded seventy-five silver coins."))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_deleteitem(73, 50, nil))
talkEntry:addConsequence(consequence_quest(171, "=", 6))
talkEntry:addResponse("Ssiguss iss thankful. Ze Mozzer bless you for this. I did not have a Mozzer, azide from ze Mozzer. Zank you. I require no more help.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 5))
talkEntry:addCondition(condition_item(73, "all", ">", 49, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünfundsiebzig Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_deleteitem(73, 50, nil))
talkEntry:addConsequence(consequence_quest(171, "=", 6))
talkEntry:addResponse("Ssiguss isst dankbar. Die Mutter möge euch für eure Hilfe ssegnen. Ich hatte nie eine Mutter, aussser DER Mutter. Habt Dank, ich benötige nun keine Hilfe mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Zeek out fifty trout for ze hatchlings, zere cries under ze water are deafening.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 5))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Finde fünfzig Forellen für die Jungen, ihre Rufe unter Wassser ssind ohrenbetäubend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Zzey hatchlings are chirping happily! Zince I am ze fazzer, I muzt keep zem ssafe. Zank you for ze help.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Die Jungen zwitsschern überglücklich! Da ich der Vater bin, mussss ich ssie besschützen. Habt Dank für eure Hilfe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Zzey hatchlings are chirping happily! Zince I am ze fazzer, I muzt keep zem ssafe. Zank you for ze help.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(171, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Die Jungen zwitsschern überglücklich! Da ich der Vater bin, mussss ich ssie besschützen. Habt Dank für eure Hilfe.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Möge Mutter uns schützen.", "May zze Mozzer sssave uss.")
talkingNPC:addCycleText("#me starrt nachdenklich in das Feuer", "#me stares into the fire thoughtfully.")
talkingNPC:addCycleText("Ein Ei, zwei Eier, drei Eier, vier! Wieviele Jungen wird ess geben?", "One egg, two eggss, three eggss, four! How many hatchlingss are in sstore? ")
talkingNPC:addCycleText("Die Mutter issst die Mutter einess Jeden. Helft mir, den Waisseneiern zu helfen!", "Ze Mozzer is Mozzer to all! Help me help ze orphanss eggs!")
talkingNPC:addCycleText("Wussstet ihr, dasss Füchssse Eier sstehlen? Welch Albtraum!", "Did you know foxes steal eggsss?! Ze horror!")
talkingNPC:addCycleText("#me zerkleinert eine Forelle 'Kleinere Bissssen für kleinere Mäuler.'", "#me crushes a trout, 'Ssmaller bitesss for sssmaller mouthss.")
talkingNPC:addCycleText("#me blickt auf den Ozean hinaus, in ein Gebebt an Zelphia vertieft", "#me looks to the ocean in prayer to Zelphia.")
talkingNPC:addCycleText("#me schnalzt mit der Zunge, als er über die Gewässer hinweg sieht", "#me clicks his tongue, looking at the waters.")
talkingNPC:addCycleText("#me gähnt laut und zähnefletschend", "#me releases a loud, toothy yawn.")
talkingNPC:addCycleText("#mes Schwanz zuckt etwas.", "#me's tail wiggles a bit.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(4)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Ssiguss", "This is NPC Ssiguss.")
mainNPC:setUseMessage("Fass mich nicht an!", "Hands off!")
mainNPC:setConfusedMessage("#me blinkt langsam, versuchen zu verstehen.", "#me blinks slowly, trying to understand.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 820)
mainNPC:setEquipment(11, 2418)
mainNPC:setEquipment(5, 2784)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
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
