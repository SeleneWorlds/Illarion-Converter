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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the brewer Nimbur Goldbrew. He will gladly help you take your first steps in Illarion. Keywords: Hello, Brew, Ingredients, Rat, Adron, Dwarf."))
talkEntry:addResponse("Nimbur Goldbrew, brewer for the Hemp Necktie Inn, how can I help?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC heißt Nimbur Goldbrew und ist ein Braumeister. Er hilft dir sicherlich gerne bei deinen ersten Schritten in Illarion. Schlüsselwörter: Hallo, Brauen, Zutaten, Ratten, Adron, Zwerg."))
talkEntry:addResponse("Mein Name ist Nimbur Goldbrew, Braumeister der Taverne zur Hanfschlinge, wie kann ich dir helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 0))
talkEntry:addCondition(condition_quest(325, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] Raw materials can be gathered from designated sources on the map, obtained through trade, or collected from drops after killing a monster. Before you venture into the orchard make sure you have a weapon equipped in the weapon slot of your inventory, indicated by a sword icon."))
talkEntry:addConsequence(consequence_item(2664, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(331, "=", 1))
talkEntry:addResponse("Arr! Welcome to the Hemp Necktie Inn's very own brewery. Nimbur Goldbrew be my name. If you're looking to find your way in these lands a good brew can soon make ye some pals. Pick six ripe apples from the orchard and I'll teach ye how to turn them into cider. Careful mind, some beast has been stealing them. Ye best take this club for protection!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 0))
talkEntry:addCondition(condition_quest(325, "=", 1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] Rohstoffe können an bestimmten Stellen auf der Karte gesammelt, durch Handel erworben oder als Beute nach dem Töten eines Monsters gesammelt werden. Bevor du dich in den Obstgarten wagst, vergewisser dich, dass du eine Waffe im Waffenslot, das Feld mit dem Schwert, deines Inventars ausgerüstet hast."))
talkEntry:addConsequence(consequence_item(2664, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(331, "=", 1))
talkEntry:addResponse("Arr! Willkommen zur hauseigenen Brauerei der Taverne zur Hanfschlinge. Mein Name ist Nimbur Goldbrew. Wenn du deinen Weg durch diese Länder suchst, kann ein gutes Bier dir durchaus ein paar Freunde beschaff'n. Pflücke sechs reife Äpfel im Obstgarten und ich bringe dir bei, wie man daraus Cider braut. Aber sei vorsichtig, da sind immer wieder Biester, die versuchen, sie zu klauen. Am besten nimmst' diese Keule hier zu deinem Schutz mit!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 1))
talkEntry:addCondition(condition_item(15, "all", ">", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] Stand in front of the wine barrel set between the two tables. You will need to equip the cooking spoon in one of the hand slots of your inventory. Double click on the spoon or barrel to bring up the crafting menu for brewing."))
talkEntry:addConsequence(consequence_item(227, 1, 333, nil))
talkEntry:addConsequence(consequence_item(2498, 1, 333, nil))
talkEntry:addConsequence(consequence_item(52, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(331, "=", 2))
talkEntry:addResponse("Arr good, these are fine apples for making cider. Ye better start by mixing the apples with water in the big wine barrel. Take this bucket of water, cooking spoon, and an empty bottle and see if ye can make some cider. Mind ye don't make a mess of my brewery though!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 1))
talkEntry:addCondition(condition_item(15, "all", ">", 5, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] Stell dich vor das Weinfass zwischen den beiden Tischen. Du musst den Kochlöffel in einem der Handslots deines Inventars ausrüsten. Doppelklicke den Kochlöffel oder das Fass, um das Handwerksmenü zum Brauen zu öffnen."))
talkEntry:addConsequence(consequence_item(227, 1, 333, nil))
talkEntry:addConsequence(consequence_item(2498, 1, 333, nil))
talkEntry:addConsequence(consequence_item(52, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(331, "=", 2))
talkEntry:addResponse("Arr gut, das sind ideale Äpfel, um Cider zu brauen. Du startest am besten damit die Äpfel mit Wasser im großen Weinfass zu vermischen. Nimm diesen Wassereimer, den Kochlöffel und die leere Flasche und schau mal, ob du ein wenig Cider brau'n kannst. Aber sieh zu, dass du meine Brauerei nicht versaust.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 1))
talkEntry:addCondition(condition_item(15, "all", "<", 6, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] To collect some apples stand in front of an apple tree and double click with your mouse or press the space bar."))
talkEntry:addConsequence(consequence_item(391, 1, 333, nil))
talkEntry:addResponse("Arr! Ye need at least six apples to brew a bottle of cider. Ye can gather plenty from the trees in the orchard.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 1))
talkEntry:addCondition(condition_item(15, "all", "<", 6, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] Um Äpfel zu sammeln, musst du dich vor einen Apfelbaum stellen und ihn mit Doppelklick des Mauszeigers oder dem Drücken der Leertaste benutzen."))
talkEntry:addConsequence(consequence_item(391, 1, 333, nil))
talkEntry:addResponse("Arr! Du brauchst mindest'ns sechs Äpfel um eine Flasche Cider zu brau'n. Im Obstgarten solltest du einige auf den Bäumen finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 2))
talkEntry:addCondition(condition_item(2499, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] You recieve two wooden cups. To pour the cider into a cup double click on the bottle of cider. To drink the cider double click on the cup of cider."))
talkEntry:addConsequence(consequence_item(2185, 2, 333, nil))
talkEntry:addConsequence(consequence_quest(331, "=", 3))
talkEntry:addConsequence(consequence_quest(340, "=", 2))
talkEntry:addResponse("Harr! Adron would be proud of ye. Take a couple of these wooden cups and perhaps ye will find someone to have a tipple of that cider with. Couple of drinks is always a good way to loosen the tongue.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 2))
talkEntry:addCondition(condition_item(2499, "all", ">", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] Du erhälst zwei Holzbecher. Um Cider in die Becher zu füllen, musst du die Flasche doppelklicken, während du den Becher in der Hand hälst. Um den Cider zu trinken, musst du den gefüllten Becher doppelklicken."))
talkEntry:addConsequence(consequence_item(2185, 2, 333, nil))
talkEntry:addConsequence(consequence_quest(331, "=", 3))
talkEntry:addConsequence(consequence_quest(340, "=", 2))
talkEntry:addResponse("Harr! Adron wäre stolz auch dich. Nimm diese Becher, vielleicht findest du ja jemanden, mit dem du den Cider teilen kannst. Ein paar Drinks sind immer ein guter Weg die Zunge zu lockern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 2))
talkEntry:addCondition(condition_item(15, "all", "<", 6, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] Gather some more apples from the orchard, or find someone to trade with."))
talkEntry:addResponse("Arr! Did ye get peckish? Ye will need at least six apples to make a bottle of cider.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 2))
talkEntry:addCondition(condition_item(15, "all", "<", 6, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] Sammel mehr Äpfel im Obstgarten, oder finde jemanden, der sie dir verkauft."))
talkEntry:addResponse("Arr! Hast du genascht? Du brauchst mindestens sechs Äpfel, um eine Flasche Cider zu brauen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 2))
talkEntry:addCondition(condition_item(227, "all", "=", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] You can buy a replacement from the merchant Hook Gowan in the market to south west, or find someone to trade with."))
talkEntry:addResponse("Arr! Ye lost your spoon? Hook Gowan in the market can probably sell ye another cooking spoon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 2))
talkEntry:addCondition(condition_item(227, "all", "=", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] Du kannst Ersatz vom Händler Hook Gowan auf dem Markt im Südwesten kaufen, oder du findest jemand anderen zum Handeln."))
talkEntry:addResponse("Arr! Du hast deinen Kochlöffel verloren? Hook Gowan auf dem Markt kann dir sicher einen neuen verkaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 2))
talkEntry:addCondition(condition_item(2498, "all", "=", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] You can buy a replacement from the merchant Hook Gowan in the market to south west, or find someone to trade with."))
talkEntry:addResponse("Arr! Ye lost your bottle? Hook Gowan in the market can probably sell ye another large empty bottle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 2))
talkEntry:addCondition(condition_item(2498, "all", "=", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] Du kannst Ersatz vom Händler Hook Gowan auf dem Markt im Südwesten kaufen, oder du findest jemand anderen zum Handeln."))
talkEntry:addResponse("Arr! Du hast deine Flasche verloren? Hook Gowan auf dem Markt kann dir sicher eine neue verkaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 2))
talkEntry:addCondition(condition_item(52, "all", "=", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] You can buy a replacement from the merchant Hook Gowan in the market to south west, or find someone to trade with."))
talkEntry:addResponse("Arr! Did ye get thirsty? Hook Gowan in the market can probably sell ye another bucket of water.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 2))
talkEntry:addCondition(condition_item(52, "all", "=", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] Du kannst Ersatz vom Händler Hook Gowan auf dem Markt im Südwesten kaufen, oder du findest jemand anderen zum Handeln."))
talkEntry:addResponse("Arr! Hattest du Durst? Hook Gowan auf dem Markt kann dir sicher einen neuen Eimer mit Wasser verkaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 2))
talkEntry:addCondition(condition_item(2499, "all", "=", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] Stand in front of the wine barrel and equip the cooking spoon in one of the hand slots of your inventory. Double click on the spoon or barrel to start brewing."))
talkEntry:addResponse("Arr! What happened to the cider? Use the cooking spoon I gave ye to stir all the ingredients in the big wine barrel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 2))
talkEntry:addCondition(condition_item(2499, "all", "=", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Tutorial II'] Stell dich vor das Weinfass und rüste den Kochlöffel in einem deiner Handslots in deinem Inventar aus. Doppelklicke den Kochlöffel oder das Weinfass, um mit dem Brauen zu beginnen."))
talkEntry:addResponse("Arr! Was ist mit dem Cider passiert? Benutz' den Kochlöffel, den ich dir gegeben habe, um die Zutaten im Weinfass gut durchzurühren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Harr! Ye can try more of my fine brews in the Hemp Necktie Inn if you speak to Borgate. If you haven't already met Viola Baywillow, she can offer lots of advice about Illarion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Harr! Sprich mit Borgate in der Taverne zur Hanfschlinge, wenn du weitere meiner Getränke probieren möchtest. Falls du Viola Baywillow noch nicht getroffen hast, solltest du das unbedingt nachholen. Sie kann dir eine ganze Menge Ratschläge über Illarion geben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Harr! Ye can try more of my fine brews in the Hemp Necktie Inn if you speak to Borgate. If you haven't already met Viola Baywillow, she can offer lots of advice about Illarion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(331, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Harr! Sprich mit Borgate in der Taverne zur Hanfschlinge, wenn du weitere meiner Getränke probieren möchtest. Falls du Viola Baywillow noch nicht getroffen hast, solltest du das unbedingt nachholen. Sie kann dir eine ganze Menge Ratschläge über Illarion geben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Arr! I help new arrivals but you're welcome to taste my brews in the Hemp Necktie Inn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Arr! Ich helfe den Neuankömmlingen, aber du bist herzlich willkommen meine Getränke in der Taverne zur Hanfschlinge zu genießen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Arr! I help new arrivals but you're welcome to taste my brews in the Hemp Necktie Inn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Arr! Ich helfe den Neuankömmlingen, aber du bist herzlich willkommen meine Getränke in der Taverne zur Hanfschlinge zu genießen.")
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
talkEntry:addResponse("Arr greetings!")
talkEntry:addResponse("Hello and welcome to the Troll's Haven brewery!")
talkEntry:addResponse("Arr! Good to see you here in Troll's Haven.")
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
talkEntry:addResponse("Arr, grüß dich!")
talkEntry:addResponse("Hallo und willkommen bei der Trollshaven Brauerei!")
talkEntry:addResponse("Arr! Freut mich dich hier in Trollshaven zu sehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Arr greetings!")
talkEntry:addResponse("Hello and welcome to the Troll's Haven brewery!")
talkEntry:addResponse("Arr! Good to see you here in Troll's Haven.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Arr, grüß dich!")
talkEntry:addResponse("Hallo und willkommen bei der Trollshaven Brauerei!")
talkEntry:addResponse("Arr! Freut mich, dich hier in Trollshaven zu sehen.")
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
talkEntry:addResponse("Arr! All the better for a good brew.")
talkEntry:addResponse("Can't complain!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie befinden")
talkEntry:addResponse("Es geht mir gut. Und selbst?")
talkEntry:addResponse("Arr! Umso besser, nach einem guten Drink.")
talkEntry:addResponse("Ich kann mich nicht beklagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Nimbur Goldbrew be me name, brewer for the Hemp Necktie Inn.")
talkEntry:addResponse("Arr! I'm Nimbur Goldbrew, brewer of the finest ales and mead in Troll's Haven.")
talkEntry:addResponse("Nimbur Goldbrew, I take care of the brewing for the Hemp Necktie Inn here in Troll's Haven.")
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
talkEntry:addResponse("Mein Name ist Nimbur Goldbrew, Braumeister der Taverne zur Hanfschlinge.")
talkEntry:addResponse("Arr! Ich bin Nimbur Goldbrew, Brauer des feinsten Biers und Mets in Trollshaven.")
talkEntry:addResponse("Nimbur Goldbrew, ich kümmere mich um die Getränke für die Taverne zur Hanfschlinge hier in Trollshaven.")
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
talkEntry:addResponse("I brew the finest ales and mead for the Hemp Necktie Inn here in Troll's Haven.")
talkEntry:addResponse("I'm in charge of the brewery here at Troll's Haven. If you like I can show you a little brewing.")
talkEntry:addResponse("I take care of the brewing for the Hemp Necktie Inn. Most of my recipes are secret but I could help you learn a little.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addTrigger("arbeit")
talkEntry:addResponse("Ich braue das feinste Bier und den edelsten Met für die Taverne zur Hanfschlinge hier in Trollshaven.")
talkEntry:addResponse("Ich habe die Leitung der Brauerei hier in Trollshaven. Wenn du magst, zeige ich dir gerne ein bisschen was zum Thema Brauen.")
talkEntry:addResponse("Ich kümmere mich um die Getränke für die Taverne zur Hanfschlinge. Die meisten meiner Rezepte sind geheim, aber ich kann dir helfen ein bisschen was zu lernen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I brew the finest ales and mead for the Hemp Necktie Inn here in Troll's Haven.")
talkEntry:addResponse("I'm in charge of the brewery here at Troll's Haven. If you like I can show you a little brewing.")
talkEntry:addResponse("I take care of the brewing for the Hemp Necktie Inn. Most of my recipes are secret but I could help you learn a little.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich braue das feinste Bier und den edelsten Met für die Taverne zur Hanfschlinge hier in Trollshaven.")
talkEntry:addResponse("Ich habe die Leitung der Brauerei hier in Trollshaven. Wenn du magst, zeige ich dir gerne ein bisschen was zum Thema Brauen.")
talkEntry:addResponse("Ich kümmere mich um die Getränke für die Taverne zur Hanfschlinge. Die meisten meiner Rezepte sind geheim, aber ich kann dir helfen ein bisschen was zu lernen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("brew")
talkEntry:addTrigger("drink")
talkEntry:addResponse("Runewick and Galmair both claim to have fine breweries, but only my brews get served by Borgate at the Hemp Necktie Inn!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gebräu")
talkEntry:addTrigger("Getränk")
talkEntry:addResponse("Runewick und Galmair beanspruchen beide den Ruf, die besten Braumeister zu haben für sich. Aber nur meine Getränke werden von Borgate in der Taverne zur Hanfschlinge serviert!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ingredient")
talkEntry:addResponse("There are plenty of trees and bushes with fruit throughout Illarion, but some ingredients like hops need to be grown. Ye can find farmers tending fields and harvesting crops in Runewick and Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zutat")
talkEntry:addResponse("Es gibt zahlreiche Bäume und Büsche, an denen Früchte wachsen, in Illarion. Andere Zutaten, wie Hopfen, müssen allerdings angebaut werden. Du fin'st Farmer, die sich auf den Feldern um ihre Ernten kümmern, in Runewick und Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ratte")
talkEntry:addResponse("Arr, nur eine tote Ratte ist eine gute Ratte! Diese diebischen Biester stehlen meine Äpfel und können sehr schmerzhaft zubeißen. Aber es gibt natürlich wesentlich schlimmere Monster, denen man in den dunklen Ecken Illarions begegnen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rat")
talkEntry:addResponse("Arr only a dead rat is a good rat! Those thieving beasts are always stealing my apples and they have a nasty bite. There are many worse monsters to be found in the shadows mind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Harr! Adron is the god of festivities and wine so us brewers are sure to pray to him. Irmorom is the father of dwarven kind but I also leave my offerings at the temple dedicated to Adron you can find on the island behind the inn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Harr! Adron ist der Gott der Feste und des Weins. Deshalb verehren wir Braumeister ihn. Irmorom ist zwar der Vater des Zwergengeschlechts, aber ich bringe auch Adron Gaben in seinen Tempel im Hinterhof der Taverne.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dwarf")
talkEntry:addTrigger("dwarve")
talkEntry:addResponse("Harr! Us dwarves make the best beer for sure, proper strong ale fit for Irmorom himself. Borgate, the barkeep for the Hemp Necktie Inn is also a dwarf, so you won't catch him selling any of that watery stuff.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zwerg")
talkEntry:addResponse("Harr! Wir Zwerge brauen natürlich das beste Bier, Hopfensaft, der selbst Irmoroms würdig ist. Borgate, der Barkeeper der Taverne zur Hanfschlinge, ist ebenfalls ein Zwerg, du wirst ihn also niemals wässriges Zeug verkaufen sehen.")
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
talkEntry:addResponse("I am not a trader, I'm a master brewer!")
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
talkEntry:addResponse("Ich bin kein Händler, ich bin Braumeister!")
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
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Falls du meine Unterstützung brauchst, frag einfach nach 'Hilfe'. Allerdings kann dir Viola Baywillow viel mehr über Illarion und die verschiedenen Reiche erzählen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nimbur")
talkEntry:addTrigger("Goldbrew")
talkEntry:addResponse("Harr that's me! Just ask for 'help' if you are new around here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nimbur")
talkEntry:addTrigger("Goldbrew")
talkEntry:addResponse("Harr, das bin ich! Frag einfach nach 'Hilfe', falls du neu hier bist.")
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
talkingNPC:addCycleText("Verdammte Ratten! Dauernd knabbern sie meine Äpfel an.", "Blasted rats! They keep gnawing at my apples.")
talkingNPC:addCycleText("Arr, ein gammliger Apfel kann das ganze Getränk ruinieren!", "Arr, one rotten apple and it can spoil the whole brew!")
talkingNPC:addCycleText("#me schreibt ein Rezept auf ein zerfetztes Stück Pergament.", "#me scribbles a recipe on a tattered piece of parchment.")
talkingNPC:addCycleText("#me trinkt einen Schluck aus seinem Krug und grinst fröhlich, ehe er schnell einen größeren Schluck hinterhernimmt.", "#me sips from a mug, grinning gleefully before quickly taking a bigger gulp.")
talkingNPC:addCycleText("Die Taverne zur Hanfschlinge verkauft die besten Getränke weit und breit... meine!", "The Hemp Necktie Inn sells the best brews around... mine!")
talkingNPC:addCycleText("#me grummelt, 'Borgate muss mehr Bier verkaufen!'", "#me grumbles, 'Borgate needs to sell more beer!'")
talkingNPC:addCycleText("#me grummelt, als er etwas Bier auf sein Hemd verschüttet.", "#me grumbles as he sloshes some ale down his shirt.")
talkingNPC:addCycleText("Harr! Es gibt nichts besseres als ein gutes Zwergenbier.", "Harr! Nothing better than good dwarven beer.")
talkingNPC:addCycleText("Ruh dich eine Weile in der Taverne zur Hanfschlinge aus und genieß ein oder zwei Drinks.", "Rest a while at the Hemp Necktie Inn and enjoy a drink or two.")
talkingNPC:addCycleText("#me hickst.", "#me hiccups.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dies ist dein Tutor Nimbur Goldbrew, der Brauer.", "This is your tutorial guide Nimbur Goldbrew, the brewer.")
mainNPC:setUseMessage("Finger weg!", "Do not touch me!")
mainNPC:setConfusedMessage("Bitte wechsle die Sprache deines Charakters zur Gemeinsprache mit dem Befehl '!l common'.", "Please switch the language of your character to the common tongue with the command '!l common'.")
mainNPC:setEquipment(1, 356)
mainNPC:setEquipment(3, 365)
mainNPC:setEquipment(11, 196)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 23)
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
