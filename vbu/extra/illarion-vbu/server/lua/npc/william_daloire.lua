local consequence_quest = require("npc.base.consequence.quest")
local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is William Daloire the herbalist. Keywords: trade, buy, sell, greetings, profession, tell something."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist William Daloire der Kräuterkundige. Schlüsselwörter: Handel, kaufe, verkaufe, Grüße, Beruf, erzähl was."))
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
talkEntry:addResponse("Best goods!")
talkEntry:addResponse("I have best herbs for all kinds of purposes.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addResponse("Beste Waren!")
talkEntry:addResponse("Ich habe die besten Kräuter für alle möglichen Verwendungen.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addResponse("Oldra.")
talkEntry:addResponse("Greetings.")
talkEntry:addResponse("Be greeted.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grüße")
talkEntry:addTrigger("Gruß")
talkEntry:addTrigger("Guten Morgen")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Gute Nacht")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addTrigger("Mohltied")
talkEntry:addResponse("Oldra zum Gruße.")
talkEntry:addResponse("Grüße.")
talkEntry:addResponse("Seid gegrüßt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetings.")
talkEntry:addResponse("Be greeted.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Grüße.")
talkEntry:addResponse("Seid gegrüßt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell. May Oldra be with you.")
talkEntry:addResponse("Farewell. Please come again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Lebt wohl! Möge Oldra über Euch wachen!")
talkEntry:addResponse("Lebt wohl! Und schaut mal wieder vorbei.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Adé!")
talkEntry:addResponse("A bientôt!")
talkEntry:addResponse("May Oldra be with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Adé!")
talkEntry:addResponse("A bientôt!")
talkEntry:addResponse("Möge Oldra über Euch wachen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Thank you for asking. Since I stopped smoking Sibanac I feel great!")
talkEntry:addResponse("I drank some herbal tea for my headache, now I feel better.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Danke der Nachfrage. Seitdem ich kein Sibanac mehr rauche geht es mir ausgezeichnet!")
talkEntry:addResponse("I trank Tee gegen meine Kopfschmerzen und nun geht es mir wieder gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I'm a merchant, I sell fresh herbs. I am called William Daloire.")
talkEntry:addResponse("I'm William Daloire, at you service.")
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
talkEntry:addResponse("Ich bin ein Händler der frische Kräuter verkauft. Ich werde William Daloire genannt.")
talkEntry:addResponse("Ich heiße William Daloire, was kann ich für Euch tun?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nah I don't sell quests. I mean, sorry. I don't have any quests for you, rather.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Soetwas verkaufe ich nicht. Ähm... Ich wollte sagen, ich biete soetwas nicht an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Nah I don't sell quests. I mean, sorry. I don't have any quests for you, rather.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Soetwas verkaufe ich nicht. Ähm... Ich wollte sagen, ich biete soetwas nicht an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(317, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Mirarie")
talkEntry:addTrigger("Bragolin")
talkEntry:addConsequence(consequence_quest(317, "=", 10))
talkEntry:addResponse("Oh? A letter for me? Hrm... Ah, I see. Please tell Miss Bragolin I'll send her a letter to answer her question.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(317, "=", 9))
talkEntry:addTrigger("letter")
talkEntry:addTrigger("message")
talkEntry:addConsequence(consequence_quest(317, "=", 10))
talkEntry:addResponse("Oh? A letter for me? Hrm... Ah, I see. Please tell Miss Bragolin I'll send her a letter to answer her question.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(317, "=", 9))
talkEntry:addTrigger("Mirarie")
talkEntry:addTrigger("Bragolin")
talkEntry:addConsequence(consequence_quest(317, "=", 10))
talkEntry:addResponse("Oh? Ein Brief für mich? Ah, ich verstehe. Bitte sagt Fräulein Bragolin ich werde ihr einen Brief schreiben um ihre Fragen zu beantworten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(317, "=", 9))
talkEntry:addTrigger("Brief")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_quest(317, "=", 10))
talkEntry:addResponse("Oh? Ein Brief für mich? Ah, ich verstehe. Bitte sagt Fräulein Bragolin ich werde ihr einen Brief schreiben um ihre Fragen zu beantworten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I'm a herbalist, so as you might expect: I sell herbs. Want to take a look?")
talkEntry:addResponse("I don't just sell herbs: I also sell useful tools. Come have a look.")
talkEntry:addResponse("I sell herbs and tools too. Want to see?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin ein Kräuterhändler, das heißt ich handle mit Kräutern. Möchtet Ihr das Angebot sehen?")
talkEntry:addResponse("I verkaufe nicht nur Kräuter, sondern auch sehr nützliche Werkzeuge. Möchtet Ihr das Angebot sehen?")
talkEntry:addResponse("Ich verkaufe Kräuter und einige Werkzeuge. Möchtet Ihr das Angebot sehen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I'm a herbalist, so as you might expect: I sell herbs. Want to take a look?")
talkEntry:addResponse("I don't just sell herbs: I also sell useful tools. Come have a look.")
talkEntry:addResponse("I sell herbs and tools too. Want to see?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin ein Kräuterhändler, das heißt ich handle mit Kräutern. Möchtet Ihr das Angebot sehen?")
talkEntry:addResponse("I verkaufe nicht nur Kräuter, sondern auch sehr nützliche Werkzeuge. Möchtet Ihr das Angebot sehen?")
talkEntry:addResponse("Ich verkaufe Kräuter und einige Werkzeuge.Möchtet Ihr das Angebot sehen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Smoking sibanac isn't good for your health.")
talkEntry:addResponse("There are some herbs which you can only find in the desert.")
talkEntry:addResponse("Herbs can have very different qualities. Druids can tell you more that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Sibanac zu rauchen ist nicht gesund.")
talkEntry:addResponse("Einige Käuter findet man nur in der Wüste.")
talkEntry:addResponse("Kräuter können sehr unterschiedliche Eigenschaften haben, ein Druide kann euch dazu sicher mehr erzählen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("The elder gods gave their power to the new ones before they left this world.")
talkEntry:addResponse("The old gods aren't worshipped often nowadays.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Die alten Götter gaben ihre Macht den jungen Göttern, bevor sie diese Welt verließen.")
talkEntry:addResponse("Zu den alten Göttern betet heutzutage kaum einer mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("I don't pray to him. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Bràgon")
talkEntry:addResponse("I don't pray to him. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Bràgon")
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("I don't pray to her. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("I don't pray to her. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("I don't pray to him. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("I don't pray to her. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("I don't pray to him. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("I don't pray to him. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("I do not pray to that evil fiend. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Ich bete nicht zu diesem finsteren Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargùn")
talkEntry:addTrigger("Nargún")
talkEntry:addResponse("I don't pray to him. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargùn")
talkEntry:addTrigger("Nargún")
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Ushara is the goddess of earth, while Oldra is the goddess of life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Ushara ist die Göttin der Erde, während Oldra die Göttin des Lebens ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("I don't pray to him. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("I don't pray to her. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("I don't pray to her. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara is the goddess of earth, while Oldra is the goddess of life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara ist die Göttin der Erde, während Oldra die Göttin des Lebens ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("I don't pray to him. Do you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("I hear that he secretly takes pride in his plants.")
talkEntry:addResponse("He's a man who knows his stuff, at least. Even if it isn't herbs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Was hat ein Kräuterhändler mit dem Erzmagier zu tun? Nichts.")
talkEntry:addResponse("Davon weiß ich nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I hear that he secretly takes pride in his plants.")
talkEntry:addResponse("He's a man who knows his stuff, at least. Even if it isn't herbs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Was hat ein Kräuterhändler mit Elvaine Morgan zu tun? Nichts.")
talkEntry:addResponse("Davon weiß ich nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Even in a magical town you find good herbs. Plants grow almost everywhere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Auch dort kann man Kräuter finden. Pflanzen wachsen fast überall.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("I think the Don prefers a good 'whine' to tea.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don schätzt guten Wein bmehr als Kräutertee.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Even underground you'll find herbs. Plants grow almost everywhere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Auch dort kann man Kräuter finden. Pflanzen wachsen fast überall.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Why would a herbalist concern the queen? Right, I don't.")
talkEntry:addResponse("I don't think we have anything in common.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Was hat ein Kräuterhändler mit der Königin zu tun? Nichts.")
talkEntry:addResponse("Davon weiß ich nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Why would a herbalist concern the queen? Right, I don't.")
talkEntry:addResponse("I don't think we have anything in common.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Was hat ein Kräuterhändler mit dem Rosaline Edwards zu tun? Nichts.")
talkEntry:addResponse("Davon weiß ich nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Even in the desert you find herbs. Plants grow almost everywhere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Auch dort kann man Kräuter finden. Pflanzen wachsen fast überall.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Place sounds like a wasteland. Perhaps it's the only place herbs won't grow.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Auch dort kann man Kräuter finden. Pflanzen wachsen fast überall.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("You can even find herbs there! As I always say: plants grow almost everywhere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Auch dort kann man Kräuter finden. Pflanzen wachsen fast überall.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Herbs are plentiful there. Plants grow almost everywhere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Auch dort kann man Kräuter finden. Pflanzen wachsen fast überall.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Goba.. Gobi-what? I've never heard of that herb.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Goba...Gobi-was? Was für ein Kraut ist das denn?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("A pleasure to meet you,%CHARNAME.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Es ist eine Freude Eure Bekanntschaft zu machen, %CHARNAME.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("William")
talkEntry:addTrigger("Daloire")
talkEntry:addResponse("Yes, that's me. I'm William Daloire, at you service.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("William")
talkEntry:addTrigger("Daloire")
talkEntry:addResponse("Ja, das bin ich. William Daloire, was kann ich für Euch tun?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me duftet nach Kräutern.", "#me's scent fills the air thickly, a cocktail of herbal smells.")
talkingNPC:addCycleText("#me wischt ein paar alte Blätter vom Tisch.", "#me quickly brushes some old leaves from the tabletop.")
talkingNPC:addCycleText("#me blickt nach draußen.", "#me glances outside, deep in thought.")
talkingNPC:addCycleText("#me zwinkert der Verkäuferin am anderen Tisch zu.", "#me winks suggestively at the merchant behind the other table.")
talkingNPC:addCycleText("#me pfeift eine vergnügliche Melodie.", "#me whistles a happy melody in a rather shrill tone.")
talkingNPC:addCycleText("#me wiegt ein Beutelchen mit Kräutern.", "#me weighs a small bag of herbs out carefully on the counter.")
talkingNPC:addCycleText("Kräuter! Frische Kräuter mit bester Qualität!", "Herbs! Fresh herbs of the finest quality!")
tradingNPC:addItem(trade.tradeNPCItem(126,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(799,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(133,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(134,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(135,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(136,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(137,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(140,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(141,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(142,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(143,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(144,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(145,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(147,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(148,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(149,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(151,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(153,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(155,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(156,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(157,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(158,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(159,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(160,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(161,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(162,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(163,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(405,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(406,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(407,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(752,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(753,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(759,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(763,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(767,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(133,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(134,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(135,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(136,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(137,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(140,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(141,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(142,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(143,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(144,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(145,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(147,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(148,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(149,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(151,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(153,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(155,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(156,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(157,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(158,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(159,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(160,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(161,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(162,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(163,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(405,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(406,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(407,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(752,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(753,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(759,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(763,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(767,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(3787,"buyPrimary"))
tradingNPC:addNotEnoughMoneyMsg("Das könnt ihr euch nicht leisten.", "You can not afford that.")
tradingNPC:addDialogClosedMsg("Vielen Dank.", "Thank you.")
tradingNPC:addDialogClosedNoTradeMsg("Auf Wiedersehen.", "Goodbye.")
tradingNPC:addWrongItemMsg("No thanks.", "Nein danke.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist William Daloire der Kräuterkundige.", "This NPC is William Daloire the herbalist.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 831)
mainNPC:setEquipment(3, 363)
mainNPC:setEquipment(11, 196)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 0)
mainNPC:setEquipment(9, 183)
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
