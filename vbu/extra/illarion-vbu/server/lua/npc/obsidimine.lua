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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Obsidimine. Keywords: Hello, quest, brother, cave."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Obsidimine. Schlüsselwörter: Hallo, Quest, Aufgabe, Bruder, Höhle."))
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
talkEntry:addResponse("Arrrr! Greetings to ye, it has been a while since I seen anyone about.")
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
talkEntry:addResponse("Arrrr! Grüß dich, ist schon eine Weile her, dass ich jemanden hier getroffen habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Arrrr! Greetings to ye, it has been a while since I seen anyone about.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Arrrr! Grüß dich, ist schon eine Weile her, dass ich jemanden hier getroffen habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Arrrr. Don't be a stranger!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Arrrr. Lass von dir hören!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Arrrr. Don't be a stranger!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Arrrr. Lass von dir hören!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Missin' me brother, Emeramine, me sure is.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ich vermisse meinen Bruder, Emeramine, das ist sicher.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Me be Obsidimine, but most just calls me Obsidi.")
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
talkEntry:addResponse("Ich bin Obsidimine, aber die meisten nennen mich einfach Obsidi.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("That's me hobby, don't ya know? Explorin' caves. Bein' a spelunker is serious work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Das ist mein Hobby, weißt du das nicht? Höhlenforscher zu sein, ist harte Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("That's me hobby, don't ya know? Explorin' caves. Bein' a spelunker is serious work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Das ist mein Hobby, weißt du das nicht? Höhlenforscher zu sein ist harte Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Me be Obsidimine, but most just calls me Obsidi.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Ich bin Obsidimine, aber die meisten nennen mich einfach Obsidi.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("brother")
talkEntry:addTrigger("Eme")
talkEntry:addResponse("Me brother, Emeramine or Eme, he be lost inside! We were explorin' inside when me was looking down. I was adjustin' me boot ya see, when me heard a loud noise. It was a roarin' like sound me'd swear it be! Me looked up and me brother was gone in a puff of smoke! Me really thinks Eme just wanted to be the first to explore this grand cave we found, but me ain't sure.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bruder")
talkEntry:addTrigger("Eme")
talkEntry:addResponse("Mein Bruder, Emeramine oder Eme, ist in der Höhle verschollen. Wir waren dabei, sie zu erforschen, als ich meine Stiefel richten musste. Ich sah gerade nach unten und dann hörte ich ein lautes Geräusch. Das war ein Geräusch wie ein lautes Brüllen, das schwör ich! Ich sah auf und mein Bruder war in einer Rauchwolke verschwunden! Ich glaube, Eme wollte einfach der erste sein, der diese große Höhle erforscht, aber ich bin mir nicht ganz sicher.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("spelunker")
talkEntry:addTrigger("cave")
talkEntry:addResponse("That's me hobby, don't ya know? Explorin' caves. Bein' a spelunker is serious work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Höhlenforscher")
talkEntry:addTrigger("Höhle")
talkEntry:addResponse("Das ist mein Hobby, weißt du das nicht? Höhlenforscher zu sein ist harte Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("volcano")
talkEntry:addResponse("Volcanoes be a grand source for new and interestin' rocks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Vulkan")
talkEntry:addResponse("Der Vulkan ist eine großartige Quelle für neue und interessante Gesteinsarten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom be da father of all creation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom ist der Vater allen Lebens.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker"))
talkEntry:addConsequence(consequence_quest(510, "=", 1))
talkEntry:addResponse("A body sure gets parched by all this here lava. Be a good sport and bring me two bottles of beer, will ya?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher"))
talkEntry:addConsequence(consequence_quest(510, "=", 1))
talkEntry:addResponse("Ein Körper dörrt richtig aus bei all der Lava hier. Sei so gut und hol mir zwei Flaschen Bier, ja?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker"))
talkEntry:addConsequence(consequence_quest(510, "=", 1))
talkEntry:addResponse("A body sure gets parched by all this here lava. Be a good sport and bring me two bottles of beer, will ya?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher"))
talkEntry:addConsequence(consequence_quest(510, "=", 1))
talkEntry:addResponse("Ein Körper dörrt richtig aus bei all der Lava hier. Sei so gut und hol mir zwei Flaschen Bier, ja?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_item(2501, "all", ">", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 30 silver coins."))
talkEntry:addConsequence(consequence_deleteitem(2501, 2, nil))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(510, "=", 2))
talkEntry:addResponse("#me tips a bottle back and takes a long pull of the drink before coming up for air. 'Ah... that be the good stuff that is. Thank ye.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 1))
talkEntry:addCondition(condition_item(2501, "all", ">", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 30 Silberstücke."))
talkEntry:addConsequence(consequence_deleteitem(2501, 2, nil))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(510, "=", 2))
talkEntry:addResponse("#me hebt eine Flasche an und nimmt ein paar kräftige Schlücke, ehe er absetzt um Luft zu holen. 'Ah... das ist das gute Zeug! Dank' dir!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 1))
talkEntry:addCondition(condition_item(2501, "all", "<", 2, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Me throat is too dry. Me can't talk more until me gets some beer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 1))
talkEntry:addCondition(condition_item(2501, "all", "<", 2, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Meine Kehle ist zu trocken. Ich kann nicht mehr reden, bis ich ein paar Bier bekommen habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 1))
talkEntry:addCondition(condition_item(2501, "all", "<", 2, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Me throat is too dry. Me can't talk more until me gets some beer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 1))
talkEntry:addCondition(condition_item(2501, "all", "<", 2, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Meine Kehle ist zu trocken. Ich kann nicht mehr reden, bis ich ein paar Bier bekommen habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker II"))
talkEntry:addConsequence(consequence_quest(510, "=", 3))
talkEntry:addResponse("Me needs to look at the rocks inside that there castle. Kill two of the hell hounds around the volcano base so me can work faster!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher II"))
talkEntry:addConsequence(consequence_quest(510, "=", 3))
talkEntry:addResponse("Ich muss das Gestein im Inneren der Burg untersuchen. Töte zwei der Höllenhunde in der Nähe des Fußes des Vulkans, damit ich schneller arbeiten kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker II"))
talkEntry:addConsequence(consequence_quest(510, "=", 3))
talkEntry:addResponse("Me needs to look at the rocks inside that there castle. Kill two of the hell hounds around the volcano base so me can work faster!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher II"))
talkEntry:addConsequence(consequence_quest(510, "=", 3))
talkEntry:addResponse("Ich muss das Gestein im Inneren der Burg untersuchen. Töte zwei der Höllenhunde in der Nähe vom Fuß des Vulkans, damit ich schneller arbeiten kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 30 silver coins."))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(510, "=", 6))
talkEntry:addResponse("Ya did a fine job, lettin' me sneak in and poke around the rocks for a bit. Take these here coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 5))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 30 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(510, "=", 6))
talkEntry:addResponse("Du hast einen guten Job gemacht. Hast mich reinschleichen und etwas an den Gesteinsbrocken rumstöbern lassen. Nimm diese Münzen dafür.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, ">", 2))
talkEntry:addCondition(condition_quest(510, "<", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Be a good soul and kill two of the hell hounds around the volcano base. Me can not explore till you do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, ">", 2))
talkEntry:addCondition(condition_quest(510, "<", 5))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Sei eine gute Seele und töte zwei der Höllenhunde nahe dem Fuße des Vulkans. Ich kann nicht erkunden, bis das erledigt ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, ">", 2))
talkEntry:addCondition(condition_quest(510, "<", 5))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Be a good soul and kill two of the hell hounds around the volcano base. Me can not explore till you do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, ">", 2))
talkEntry:addCondition(condition_quest(510, "<", 5))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Sei eine gute Seele und töte zwei der Höllenhunde nahe dem Fuße des Vulkans. Ich kann nicht erkunden, bis das erledigt ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker III"))
talkEntry:addConsequence(consequence_quest(510, "=", 7))
talkEntry:addResponse("By Irmorom! There are trolls on the mountain top! That one there nearly set me ablaze while I was on me beer break! Kill the firespitter so me can explore more!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher III"))
talkEntry:addConsequence(consequence_quest(510, "=", 7))
talkEntry:addResponse("Bei Irmorom! Da sind Trolle auf dem Berggipfel! Dieser da hat mich fast abgefackelt, während ich meine Bierpause gemacht habe! Töte den Feuerspeier, damit ich weiter forschen kann!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker III"))
talkEntry:addConsequence(consequence_quest(510, "=", 7))
talkEntry:addResponse("By Irmorom! There are trolls on the mountain top! That one there nearly set me ablaze while I was on me beer break! Kill the firespitter so me can explore more!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher III"))
talkEntry:addConsequence(consequence_quest(510, "=", 7))
talkEntry:addResponse("Bei Irmorom! Da sind Trolle auf dem Berggipfel! Dieser da hat mich fast abgefackelt, während ich meine Bierpause gemacht habe! Töte den Feuerspeier, damit ich weiter forschen kann!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 45 silver coins."))
talkEntry:addConsequence(consequence_money("+", 4500))
talkEntry:addConsequence(consequence_quest(510, "=", 9))
talkEntry:addResponse("Tall volcano! So much to explore and you be a big help! *Tosses you a coin bag.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 8))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 45 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 4500))
talkEntry:addConsequence(consequence_quest(510, "=", 9))
talkEntry:addResponse("Großer Vulkan! Es gibt so viel zu erforschen und du bist eine große Hilfe! *Wirft dir einen Münzbeutel zu.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, ">", 6))
talkEntry:addCondition(condition_quest(510, "<", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Arr!! The firespitter has to go! Kill it for me and I will reward you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, ">", 6))
talkEntry:addCondition(condition_quest(510, "<", 8))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Arr!! Der Feuerspeier muss weg! Töte ihn für mich und ich werde dich belohnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, ">", 6))
talkEntry:addCondition(condition_quest(510, "<", 8))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Arr!! The firespitter has to go! Kill it for me and I will reward you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, ">", 6))
talkEntry:addCondition(condition_quest(510, "<", 8))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Arr!! Der Feuerspeier muss weg! Töte ihn für mich und ich werde dich belohnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker IV"))
talkEntry:addConsequence(consequence_quest(510, "=", 10))
talkEntry:addResponse("Me don't like to explore without me brother... would you go inside and see what you can find out. Go to all of the levels. (Each level must be visited)")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 9))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher IV"))
talkEntry:addConsequence(consequence_quest(510, "=", 10))
talkEntry:addResponse("Ich mag nicht ohne meine Bruder forschen... würdest du hinein gehen und schauen, was du herausfinden kannst? Besuche alle Ebenen. (Jede Ebene muss besucht werden)")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 9))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker IV"))
talkEntry:addConsequence(consequence_quest(510, "=", 10))
talkEntry:addResponse("Me don't like to explore without me brother... would you go inside and see what you can find out. Go to all of the levels. (Each level must be visited)")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 9))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher IV"))
talkEntry:addConsequence(consequence_quest(510, "=", 10))
talkEntry:addResponse("Ich mag nicht ohne meine Bruder forschen... würdest du hinein gehen und schauen, was du herausfinden kannst? Besuche alle Ebenen. (Jede Ebene muss besucht werden)")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 11))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 95 silver coins."))
talkEntry:addConsequence(consequence_money("+", 9500))
talkEntry:addConsequence(consequence_quest(510, "=", 12))
talkEntry:addResponse("You ain't blowin' smoke up me... are you being real with me? So many levels. Can't recall the last... All righty then!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 11))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 95 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 9500))
talkEntry:addConsequence(consequence_quest(510, "=", 12))
talkEntry:addResponse("Du willst mir doch keinen Bären.. erzählst du mir die Wahrheit? So viele Ebenen. Ich kann mich gar nicht mehr erinnern ... also gut!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Me need you to explore all the levels of the cave for me. Me don't like to go without me brother.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 10))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du musst alle Ebenen der Höhle für mich erkunden. Ich mag nicht ohne meinen Bruder gehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 10))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Me need you to explore all the levels of the cave for me. Me don't like to go without me brother.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 10))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du musst alle Ebenen der Höhle für mich erkunden. Ich mag nicht ohne meinen Bruder gehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 12))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker V"))
talkEntry:addConsequence(consequence_quest(510, "=", 13))
talkEntry:addResponse("Me heards that dragons hoard their wealth. Before Eme disappeared he was talkin' of vases bein' stuffed with gems. Search the vases and find me a gem of every colour from the dragon's stash.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 12))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher V"))
talkEntry:addConsequence(consequence_quest(510, "=", 13))
talkEntry:addResponse("Ich hab' gehört, dass Drachen Reichtümer anhäufen. Bevor Eme verschwand, hat er von Vasen geredet, die mit Edelsteinen vollgestopft sind. Suche die Vasen im Drachenhort und finde einen Edelstein jeder Farbe für mich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 12))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker V"))
talkEntry:addConsequence(consequence_quest(510, "=", 13))
talkEntry:addResponse("Me heards that dragons hoard their wealth. Before Eme disappeared he was talkin' of vases bein' stuffed with gems. Search the vases and find me a gem of every colour from the dragon's stash.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 12))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher V"))
talkEntry:addConsequence(consequence_quest(510, "=", 13))
talkEntry:addResponse("Ich hab' gehört, dass Drachen Reichtümer anhäufen. Bevor Eme verschwand, hat er mir von Vasen erzählt, die mit Edelsteinen vollgestopft sind. Suche die Vasen im Drachenhort und finde einen Edelstein jeder Farbe für mich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 14))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded seventy-five silver coins."))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_quest(510, "=", 15))
talkEntry:addResponse("#me pokes through the cut gemstones, counting them and looking over the dazzling array of colours with a sparkle in his eye, as he passes you some coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 14))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 75 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_quest(510, "=", 15))
talkEntry:addResponse("#me stochert in den geschliffenen Edelsteinen herum und zählt sie. Mit einem Funkeln in den Augen lässt er seinen Blick über die beeindruckende Auswahl an Farben wandern, während er dir ein paar Münzen reicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 13))
talkEntry:addCondition(condition_quest(510, "<", 14))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Gems, gems .. search the vases! A dwarf is not complete without a gem of every colour. I only want those from inside here, don't try and cheat me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 13))
talkEntry:addCondition(condition_quest(510, "<", 14))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Edelsteine, Edelsteine .. such' nach den Vasen! Ein Zwerg ist kein Zwerg, wenn er nicht einen Edelstein von jeder Farbe besitzt. Ich will nur die aus der Höhle hier, versuch' nicht, mich zu verscheissern!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 13))
talkEntry:addCondition(condition_quest(510, "<", 14))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Gems, gems .. search the vases! A dwarf is not complete without a gem of every colour. I only want those from inside here, don't try and cheat me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 13))
talkEntry:addCondition(condition_quest(510, "<", 14))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Edelsteine, Edelsteine .. such' nach den Vasen! Ein Zwerg ist kein Zwerg, wenn er nicht einen Edelstein von jeder Farbe besitzt. Ich will nur die aus der Höhle hier, versuch' nicht, mich zu verscheissern!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 15))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker VI"))
talkEntry:addConsequence(consequence_quest(510, "=", 16))
talkEntry:addResponse("There seems to be tombstones with dragon names on them inside. Right peculiar if you ask me. One was even called the 'Eater of Bunnies,' but I can't recall. Can you go look for me and let me know? What is this dragon's name?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 15))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher VI"))
talkEntry:addConsequence(consequence_quest(510, "=", 16))
talkEntry:addResponse("Drinnen scheinen Grabsteine mit den Namen von Drachen zu sein. Ziemlich seltsam, wenn du mich fragst. Einer hieß sogar 'Hasenfresser' oder so ähnlich, ich kann mich nicht mehr genau erinnern. Kannst du für mich nachsehen und mir Bescheid geben, wie genau der Name dieses Drachen war?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 15))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker VI"))
talkEntry:addConsequence(consequence_quest(510, "=", 16))
talkEntry:addResponse("There seems to be tombstones with dragon names on them inside. Right peculiar if you ask me. One was even called the 'Eater of Bunnies,' but I can't recall. Can you go look for me and let me know? What is this dragon's name?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 15))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher VI"))
talkEntry:addConsequence(consequence_quest(510, "=", 16))
talkEntry:addResponse("Drinnen scheinen Grabsteine mit den Namen von Drachen zu sein. Ziemlich seltsam, wenn du mich fragst. Einer hieß sogar 'Hasenfresser' oder so ähnlich, ich kann mich nicht mehr genau erinnern. Kannst du für mich nachsehen und mir Bescheid geben, wie genau der Name dieses Drachen war?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 16))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sira")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five rabbit dishes."))
talkEntry:addConsequence(consequence_item(555, 5, 999, nil))
talkEntry:addConsequence(consequence_quest(510, "=", 17))
talkEntry:addResponse("Hrm, Sirath, me heard of a Sirath once. She was a terror of the skies. Aye... Aye! The bunnies did flee from her they did! Whenever anyone seen bunnies runnin', this was a sign for all to run for their lives! Take these meals and think of her!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 16))
talkEntry:addTrigger("Sira")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünf Hasengerichte."))
talkEntry:addConsequence(consequence_item(555, 5, 999, nil))
talkEntry:addConsequence(consequence_quest(510, "=", 17))
talkEntry:addResponse("Hrm, Sirath. Ich hab einmal von Sirath gehört. Sie war ein Schrecken der Lüfte. Aye ... Aye! Die Hasen sind vor ihr geflohen, wirklich! Immer wenn man die Hasen rennen gesehen hat, war das ein Zeichen für alle Anderen, um ihr Leben zu rennen! Nimm diese Gerichte und denk an sie!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 16))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Me don't know why its important right now, me just needs to know the name of the dragon who ate bunnies. Please check all the tombstones inside.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 16))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Ich weiß gerade nicht, warum das wichtig ist, aber ich muss einfach wissen, wie der Drache hieß, der Hasen fraß! Bitte überprüfe drinnen alle Grabsteine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 17))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker VII"))
talkEntry:addConsequence(consequence_quest(510, "=", 18))
talkEntry:addResponse("The hedge maze inside, me is not one for magic, but it's said to have visionary tendencies. Reckon you can travel inside thinkin' about me brother Eme and see where he has got to?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 17))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher VII"))
talkEntry:addConsequence(consequence_quest(510, "=", 18))
talkEntry:addResponse("Ich halte ja nichts von Magie, aber das Heckenlabyrinth im Inneren soll Visionen hervorrufen. Meinst du, du kannst mal reingehen und an meinen Bruder Eme denken, um zu sehen, was ihm zugestoßen ist?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 17))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker VII"))
talkEntry:addConsequence(consequence_quest(510, "=", 18))
talkEntry:addResponse("The hedge maze inside, me is not one for magic, but it's said to have visionary tendencies. Reckon you can travel inside thinkin' about me brother Eme and see where he has got to?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 17))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher VII"))
talkEntry:addConsequence(consequence_quest(510, "=", 18))
talkEntry:addResponse("Ich halte ja nichts von Magie, aber das Heckenlabyrinth im Inneren soll Visionen hervorrufen. Meinst du, du kannst mal reingehen und an meinen Bruder Eme denken, um zu sehen, was ihm zugestoßen ist?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 19))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 85 silver coins."))
talkEntry:addConsequence(consequence_money("+", 8500))
talkEntry:addConsequence(consequence_quest(510, "=", 20))
talkEntry:addResponse("#me sniffles loudly before tears start streaming down his face as he hands you a sack of coins. 'I was affeared of this!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 19))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 85 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 8500))
talkEntry:addConsequence(consequence_quest(510, "=", 20))
talkEntry:addResponse("#me schnieft laut, ehe Tränen aus seinen Augen zu strömen beginnen und er dir einen Beutel mit Münzen reicht. 'Das hab' ich befürchtet!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 18))
talkEntry:addCondition(condition_quest(510, "<", 19))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Explore the hedge maze till ye gets a vision of what happened to Eme.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 18))
talkEntry:addCondition(condition_quest(510, "<", 19))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Erforsche das Heckenlabyrinth, bis du eine Vision bekommst, die dir zeigt, was mit Eme passiert ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 18))
talkEntry:addCondition(condition_quest(510, "<", 19))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Explore the hedge maze till ye gets a vision of what happened to Eme.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 18))
talkEntry:addCondition(condition_quest(510, "<", 19))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Erforsche das Heckenlabyrinth, bis du eine Vision bekommst, die dir zeigt, was mit Eme passiert ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 20))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker VIII"))
talkEntry:addConsequence(consequence_quest(510, "=", 21))
talkEntry:addResponse("If Eme is gone.. me wants proof. Me cannot live not knowin' for sure. Search the bodies in the coffins and bring me back somethin' of his.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 20))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher VIII"))
talkEntry:addConsequence(consequence_quest(510, "=", 21))
talkEntry:addResponse("Wenn Eme wirklich tot ist, will ich einen Beweis! Ich kann nicht weiterleben, ohne Gewissheit zu haben. Durchsuche die Leichen in den Särgen und bringe mir etwas von ihm zurück.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 20))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker VIII"))
talkEntry:addConsequence(consequence_quest(510, "=", 21))
talkEntry:addResponse("If Eme is gone.. me wants proof. Me can not live not knowin' for sure. Search the bodies in the coffins and bring me back somethin' of his.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 20))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher VIII"))
talkEntry:addConsequence(consequence_quest(510, "=", 21))
talkEntry:addResponse("Wenn Eme wirklich tot ist, will ich einen Beweis! Ich kann nicht weiterleben, ohne Gewissheit zu haben. Durchsuche die Leichen in den Särgen und bringe mir etwas von ihm zurück.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 22))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded one hundred silver coins."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(510, "=", 23))
talkEntry:addResponse("#me takes the skull, gently wrapping it in a cloth as tears fall from his eyes. 'Me knows this is him. He had the biggest head of all the family. He were famous. I will bury it with the family, deep in the mountain at home. Take these coins as a thank you.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 22))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 100 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(510, "=", 23))
talkEntry:addResponse("#me nimmt den Schädel entgegen und hüllt ihn behutsam in ein Tuch, während ihm Tränen aus den Augen laufen. 'Ich weiß, dass er das ist. Er hatte den größten Kopf in der Familie. Dafür war er bekannt. Ich werde ihn bei unserer Familie begraben, tief im Berg zu Hause. Nimm diese Münzen als Dank.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 21))
talkEntry:addCondition(condition_quest(510, "<", 22))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Find me proof of what happened to Eme inside a coffin, so me don'ts go out of me mind!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 21))
talkEntry:addCondition(condition_quest(510, "<", 22))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Finde in einem der Särge Beweise für Emes Schicksal, sonst verlier' ich noch den Verstand!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 21))
talkEntry:addCondition(condition_quest(510, "<", 22))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Find me proof of what happened to Eme inside a coffin, so me don'ts go out of me mind!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 21))
talkEntry:addCondition(condition_quest(510, "<", 22))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Finde in einem der Särge Beweise für Emes Schicksal, sonst verlier' ich noch den Verstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 23))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker IX"))
talkEntry:addConsequence(consequence_quest(510, "=", 24))
talkEntry:addResponse("Eme wouldn't have gone down before hidin' a family heirloom of our Pappy's. It's a specially engraved emerald amulet. He's bound to have tossed it into a barrel, chest, or something down there. Please find it for me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 23))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher IX"))
talkEntry:addConsequence(consequence_quest(510, "=", 24))
talkEntry:addResponse("Eme wäre nicht abgetreten, ohne vorher das Familienerbstück unseres alten Herrn zu verstecken. Es ist ein speziell graviertes Smaragdamulett. Er hat es bestimmt in irgendein Fass, oder eine Truhe oder sowas Ähnliches hineingeworfen. Kannst du es für mich suchen gehen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 23))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker IX"))
talkEntry:addConsequence(consequence_quest(510, "=", 24))
talkEntry:addResponse("Eme wouldn't have gone down before hidin' a family heirloom of our pappy's. It's a specially engraved emerald amulet. He's bound to have tossed it into a barrel, chest, or something down there. Please find it for me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 23))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher IX"))
talkEntry:addConsequence(consequence_quest(510, "=", 24))
talkEntry:addResponse("Eme wäre nicht abgetreten, ohne vorher das Familienerbstück unseres alten Herrn zu verstecken. Es ist ein speziell graviertes Smaragdamulett. Er hat es bestimmt in irgendein Fass, oder eine Truhe oder sowas Ähnliches hineingeworfen. Kannst du es für mich suchen gehen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 25))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are rewarded a latent emerald."))
talkEntry:addConsequence(consequence_item(3523, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(510, "=", 26))
talkEntry:addResponse("Me thanks you for this as it's worth more to me than most items. Have this gem me found earlier as a reward.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 25))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst einen latent magischen Smaragd."))
talkEntry:addConsequence(consequence_item(3523, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(510, "=", 26))
talkEntry:addResponse("Ich will dir für das Amulett danken, denn es ist für mich von höherem Wert, als die meisten anderen Gegenstände. Nimm diesen Edelstein, den ich vorhin gefunden habe als Belohnung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 24))
talkEntry:addCondition(condition_quest(510, "<", 25))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Find Pappy's heirloom amulet. I am sure Eme would have tossed it into a barrel or chest below.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 24))
talkEntry:addCondition(condition_quest(510, "<", 25))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Such das Amulett, das ein Erbstück unseres alten Herrn ist. Ich bin mir sicher, dass Eme es unten in einem Faß oder einer Truhe versteckt hätte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 24))
talkEntry:addCondition(condition_quest(510, "<", 25))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Find Pappy's heirloom amulet. I am sure Eme would have tossed it into a barrel or chest below.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 24))
talkEntry:addCondition(condition_quest(510, "<", 25))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Such das Amulett, das ein Erbstück unseres alten Herrn ist. Ich bin mir sicher, dass Eme es unten in einem Faß oder einer Truhe versteckt hätte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 26))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker X"))
talkEntry:addConsequence(consequence_quest(510, "=", 27))
talkEntry:addResponse("Eme is gone... *sighs deeply.* Reckon me could ask you one more favour. On the lowest level, there is a lute in the dragon's lair. Me wants one of its golden strings. Me plans on giving it as an offering to Irmorom for Eme's soul.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 26))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher X"))
talkEntry:addConsequence(consequence_quest(510, "=", 27))
talkEntry:addResponse("Eme ist nicht mehr... *seufzt schwer*. Schätze, ich könnte dich noch um einen weiteren Gefallen bitten. In der untersten Ebene vom Drachenhort, gibt es eine Laute. Ich will eine ihrer goldenen Saiten, damit ich sie für Emes Seele an Irmorom opfern kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 26))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker X"))
talkEntry:addConsequence(consequence_quest(510, "=", 27))
talkEntry:addResponse("Eme is gone... *sighs deeply.* Reckon me could ask you one more favour. On the lowest level there is a lute in the dragon's lair. Me wants one of its golden strings. Me plans on giving it as an offering to Irmorom for Eme's soul.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 26))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher X"))
talkEntry:addConsequence(consequence_quest(510, "=", 27))
talkEntry:addResponse("Eme ist nicht mehr... *seufzt schwer*. Schätze, ich könnte dich noch um einen weiteren Gefallen bitten. In der untersten Ebene vom Drachenhort, gibt es eine Laute. Ich will eine ihrer goldenen Saiten, damit ich sie für Emes Seele an Irmorom opfern kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 28))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 125 silver coins."))
talkEntry:addConsequence(consequence_money("+", 12500))
talkEntry:addConsequence(consequence_quest(510, "=", 29))
talkEntry:addResponse("This is the offering me needs to properly put Eme to rest. Me doesn't know how to thank you. Have these here coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 28))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 125 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 12500))
talkEntry:addConsequence(consequence_quest(510, "=", 29))
talkEntry:addResponse("Dies ist die Opfergabe, die ich brauche, um Eme auf angemessene Weise zu Ruhe zu legen. Ich weiß nicht, wie ich dir dafür danken kann. Hier, nimm diese Münzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 27))
talkEntry:addCondition(condition_quest(510, "<", 28))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Me needs this golden string from the dragon's lute, to give as an offering for Eme's soul.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 27))
talkEntry:addCondition(condition_quest(510, "<", 28))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich brauche diese goldene Saite von der Laute des Drachen, als Opfergabe für Emes Seele.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 27))
talkEntry:addCondition(condition_quest(510, "<", 28))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Me needs this golden string from the dragon's lute, to give as an offering for Eme's soul.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 27))
talkEntry:addCondition(condition_quest(510, "<", 28))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich brauche diese goldene Saite von der Laute des Drachen, als Opfergabe für Emes Seele.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 29))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker XI"))
talkEntry:addConsequence(consequence_quest(510, "=", 30))
talkEntry:addResponse("Me blames that Dragon of Death for Eme's passin'. Kill it and me thinks me may be able to move on.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 29))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher XI"))
talkEntry:addConsequence(consequence_quest(510, "=", 30))
talkEntry:addResponse("Ich gebe dem Todesdrachen die Schuld an Emes Tod. Töte ihn! Ich denke, dann bin ich endlich bereit, das Ganze zu verarbeiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 29))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Spelunker XI"))
talkEntry:addConsequence(consequence_quest(510, "=", 30))
talkEntry:addResponse("Me blames that Dragon of Death for Eme's passin'. Kill it and me thinks me may be able to move on.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 29))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Höhlenforscher XI"))
talkEntry:addConsequence(consequence_quest(510, "=", 30))
talkEntry:addResponse("Ich gebe dem Todesdrachen die Schuld an Emes Tod. Töte ihn! Ich denke, dann bin ich endlich bereit, das Ganze zu verarbeiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 31))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 200 silver coins and an axe."))
talkEntry:addConsequence(consequence_money("+", 20000))
talkEntry:addConsequence(consequence_item(2660, 1, 866, {["descriptionEn"] = "The axe has the name 'Xarakrut' embossed on the side in common. The rest of the engraving is written in an old, Dwarven runic script.", ["descriptionDe"] = "Die Axt hat den Namen 'Xarakrut' in der Allgemeinsprache in ihre Seite graviert. Der Rest der Gravur scheint in einer alten, zwergischen Runenschrift ausgeführt zu sein.", ["rareness"] = "4"}))
talkEntry:addConsequence(consequence_quest(510, "=", 32))
talkEntry:addResponse("Me thanks you for all your effort for me and me dearly departed brother. Irmorom will surely have a special place waitin' for you. *offers you an axe*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 31))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 200 Silberstück und eine Axt"))
talkEntry:addConsequence(consequence_money("+", 20000))
talkEntry:addConsequence(consequence_item(2660, 1, 866, {["descriptionEn"] = "The axe has the name 'Xarakrut' embossed on the side in common. The rest of the engraving is written in an old, Dwarven runic script.", ["descriptionDe"] = "Die Axt hat den Namen 'Xarakrut' in der Allgemeinsprache in ihre Seite graviert. Der Rest der Gravur scheint in einer alten, zwergischen Runenschrift ausgeführt zu sein.", ["rareness"] = "4"}))
talkEntry:addConsequence(consequence_quest(510, "=", 32))
talkEntry:addResponse("Ich danke dir für alles, was du für mich und meinen geliebten, verstorbenen Bruder getan hast. Irmorom wird sicher einen ganz besonderen Platz für dich haben. *hält dir eine Axt hin*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 30))
talkEntry:addCondition(condition_quest(510, "<", 31))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Kill that Dragon of Death and me will go on with me life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 30))
talkEntry:addCondition(condition_quest(510, "<", 31))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bezwinge diesen Todesdrachen, damit mein Leben endlich weitergehen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 30))
talkEntry:addCondition(condition_quest(510, "<", 31))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Kill that Dragon of Death and me will go on with me life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 30))
talkEntry:addCondition(condition_quest(510, "<", 31))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Bezwinge diesen Todesdrachen, damit mein Leben endlich weitergehen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 32))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addResponse("Ye have honoured me family. Me can ask no more of you. Go with Irmorom's blessing and remember us spelunkers dig deep and explore far.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 32))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du hast meiner Famile genug Ehre erwiesen. Mehr kann ich nicht von dir verlangen. Geh' mit Irmoroms Segen und erinner dich daran, dass wir Höhlenforscher tief graben und weit erkunden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 32))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Ye have honoured me family. Me can ask no more of you. Go with Irmorom's blessing and remember us spelunkers dig deep and explore far.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(510, "=", 32))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du hast meiner Famile genug Ehre erwiesen. Mehr kann ich nicht von dir verlangen. Geh' mit Irmoroms Segen und erinner dich daran, dass wir Höhlenforscher tief graben und weit erkunden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Hm, haven't heard about any caves in that area.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Hm, ich hab' nichts von Höhlen in diesem Gebiet gehört.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Some right fine caves around them there parts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Es gibt ein paar ziemlich interessante Höhlen in diesem Gebiet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Can't say as me's been there, as it's a might hot fer me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ich kann nicht behaupten, dass ich da schonmal war, weils' mir dort einfach zu heiß ist.")
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
talkingNPC:addCycleText("#me schaut neugierig auf einen Stein in seiner Hand.", "#me looks curiously at a stone in his hand.")
talkingNPC:addCycleText("Ich mag Steine!", "Me likes rocks!")
talkingNPC:addCycleText("Wo ist mein Bruder Eme?", "Where be me brother, Eme?")
talkingNPC:addCycleText("#me klopft sich den Staub von seiner Kleidung.", "#me beats dust off his clothing.")
talkingNPC:addCycleText("Hey du! Kennst du in dieser Gegend irgendwelche neuen Höhlen?", "Hey you! Do you know of any new caves in the area?")
talkingNPC:addCycleText("#s Eme?? Wo bist du? Ich fühle mich so allein!", "#s Eme?? Where are you? Me is getting lonely.")
talkingNPC:addCycleText("#me trinkt einen Krug Bier.", "#me drinks a mug of beer.")
talkingNPC:addCycleText("#me singt 'Einst kannte ich ein fesches Zwergenmadl, die hatte so stramme Wadl und bei meinem nächsten Marsch, ging ich an ihr vorbei und zwickte sie in ihren... Arm.'", "#me sings 'There once was a Dwarven lass, she had plenty of sass, one day when I went to pass, me reached out and pinched her on the arm.'")
talkingNPC:addCycleText("#me singt, 'Das Zwergenmadl von mir, säuft am liebsten Bier, doch edlen Wein, den trinkt sie garnicht gern, dem bleibt sie lieber fern!'", "#me sings 'That Dwarven lass of mine, she is mighty fine, she don't drink that fancy wine, it's beer for her as we dine.'")
talkingNPC:addCycleText("Dank dem gesegneten Irmorom, der diese Felsen hier erschaffen hat.", "Thank the blessed Irmorom for these here rocks he created.")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Obsidimine.", "This NPC is Obsidimine.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 818)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 2763)
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
