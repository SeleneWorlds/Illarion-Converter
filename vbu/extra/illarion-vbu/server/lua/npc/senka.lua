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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Senka, the Priestess of Ronagan. Keywords: Hello, god, favour, sacrifice."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Senka, eine Priesterin des Ronagan. Schlüsselwörter: Hallo, Gott, Gunst, Opfergabe."))
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
talkEntry:addResponse("Welcome")
talkEntry:addResponse("Greetings")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Welcome")
talkEntry:addResponse("Greetings")
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
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Willkommen.")
talkEntry:addResponse("Grüße.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Hopefully for you, we shall not meet again.")
talkEntry:addResponse("May Ronagan guide you to your mark.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Hopefully for you, we shall not meet again.")
talkEntry:addResponse("May Ronagan guide you to your mark.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Du kannst ja hoffen, dass wir uns nie wiedersehen.")
talkEntry:addResponse("Möge Ronagan dich nach Hause geleiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I see no reason to tell you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Was geht dich das an?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Senka.")
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
talkEntry:addResponse("Ich bin Senka.")
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
talkEntry:addResponse("I do not trade except in lives. Go to the marketplace to find a merchant.")
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
talkEntry:addResponse("Ich bin kein Händler. Versuchs am Marktplatz, dort findest du Krämer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("To most I am a priestess of Ronagan. To some, I am a knife in the dark when they least expect it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("To most I am a priestess of Ronagan. To some, I am a knife in the dark when they least expect it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Für die meisten bin ich Priesterin Ronagans. Aber für manche bin ich auch das Messer in der Dunkelheit, das sie nicht erwarten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("God")
talkEntry:addResponse("There are many gods. Perhaps you should ask me about a specific one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addResponse("Es gibt viele Götter. Vielleicht solltest du etwas genauer werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Religion")
talkEntry:addResponse("There are many gods. Perhaps you should ask me about a specific one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Religion")
talkEntry:addResponse("Es gibt viele Götter. Frag nach einem speziellen und du wirst etwas erfahren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("He is the god of wine. Many of Adrons followers are drunk and naive. This makes them easy targets to filch coins off of. His followers gather around the tavern in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Er ist der Gott des Weines. Viele seiner Jünger sind besoffen und naiv. Das macht sie zu einfachen Opfern, ihnen ihre Münzen abzunehmen. Sie sammeln sich meistens in der Taverne von Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("An elder god. Pay no mind to him. Bragon's fiery warriors are few, and many have converted to follow Malachin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Einer der Alten Götter, kümmer dich nicht um ihn. Es gibt nur wenige von Bragons feurigen Kriegern. Die meisten sind zu Malachin konvertiert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Her followers are hardly worth your time. They are too busy laying the dead to rest around Pauldron Isle and singing praises to Cherga, goddess of spirits. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Ihre Anhänger sind unsere Zeit nicht wert. Sie sind zu beschäftigt damit die Toten auf der Schulterplatten-Insel beizusetzen und Lobhymnen auf Cherga, die Göttin der Geister, anzustimmen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Ah. The mages and scholars of Elara. Too concerned with their search for knowledge to notice when things disappear. They typically have their noses buried in library books, especially in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Ah ja, die Magier und Gelehrten Elaras. Viel zu beschäftigt Wissen anzuhäufen merken sie nicht, wenn Dinge abhanden kommen. Üblicherweise haben sie ihre Nasen in Büchern, besonders in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("An elder god who is hardly worth worrying about. Eldan and his followers find the hermit life best for their spirit. All others follow Elara now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Einer der Alten Götter die uns nichts angehen. Eldan und seine Anhänger glauben in Einsiedeleien ihren Geist entdecken zu können. Die meisten seiner Anhänger sind jetzt Anhänger von Elara.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("The elder goddess whose few bards are only concerned with filling the air around them with bad music. The rest now follow Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Eine der alten Götter deren paar Barden es nur darum geht die Luft mit schlechter Musik zu verpesten.  Die meisten von Findaris Anhängern beten jetzt Adron an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("The finest crafters and the best merchants follow Irmorom. They will go pray for him to bless their work at the altar near Galmair's Market Square. They are often too focused to notice their purse go missing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Die geschicktesten Handwerker und besten Händler folgen Irmorom. Sie beten in an seinem Altar nahe Galmairs Marktplatz an ihre Arbeit zu segnen. Häufig sind sie so konzentriert, dass sie gar nicht merken, dass ihr Geldbeutel weg ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("The followers of Malachin are primarily concerned with battle and hunting. I do not like dealing with them and am glad that many of them congregate far away from here in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Die Anhänger von Malachin geht es nur um Jagd und Schlachten. Ich hab nicht gerne mit ihnen zu schaffen und bin froh den Altar weit weg in Cadomyr zu wissen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me narrows her eyes: 'We do not speak the name of the god of Blood and Bones out loud as to not summon him from the darkness. I hear his followers gather not far from the Hemp Necktie Inn.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Wir sprechen den Namen des Gottes von Blut und Gebeinen nicht aus um ihn nicht aus der Dunkelheit zu beschwören. Ich hörte seine Anhänger rotten sich in der Nähe des Gasthauses zur Hanfschlinge zusammen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("#me chuckles: 'A chaotic god whose followers are all mad. You can only trust them to be unpredictable. Strangely enough, the followers of Nargun do pay homage to him in one spot near the Galmair Blackmarket.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Ein chaotischer Gott dessen Anhänger allesamt verrückt sind. Du kannst darauf vertrauen, dass du ihnen nicht trauen kannst. Schlimm genug, dass seine Anhänger ihm nahe des Galmairer Schwarzmarktes huldigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("The generosity of Oldra and her followers does not go unnoticed. I find it best to leave them be as they feed and heal all indiscriminately. Many of her followers can be found in Yewdale, just west of Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Die Freizügigkeit von Oldra und ihren Anhängern ist bekannt. Ich finde man sollte sie nicht stören, wahllos die leute zu füttern und zu heilen. Viele ihrer Anhänger findet man bei ihrem Altar in Eibental in der Nähe von Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Though he may be considered the god of thieves and shadows to those who have never been pennyless, but he is also patron to the poor. Orphans, homeless, and the needy all find solace through Ronagan.")
talkEntry:addResponse("When a follower dies, their spirit is brought before his castle. They must then make their way to the Thieves Den, his paradise. Ronagan is merciful and will grant more tries to those who fail. Such tries are not unlimited.")
talkEntry:addResponse("Merchants too do leave offerings to Ronagan. A coin or ten left on the altar for his protection from thieves. We collect this money and spread the word to others to keep an eye out for them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Wenn er von denen die niemals am Hungertuch nagten auch der Gott der Diebe und Schatten genannt wird, er ist auch der Patron der Armen. Waise, Obdachlose und Bedürftige finden Trost bei Ronagan.")
talkEntry:addResponse("Stirbt ein Anhänger wird er vor seinen Palast gebracht. Er muss dann seinen Weg durch die Diebeshöhlen finden. Ronagan ist gnädig und erlaubt denen die versagen beliebig viele Versuche.")
talkEntry:addResponse("Händler opfern Ronagan denn die ein oder andere Münze auf seinem Altar schützt ihn vor Dieben. Wir nehmen das Geld an uns und lassen alle wissen, auf wen sie achten sollen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Although the followers of Sirani are vain and focused on pleasure and love, there is a sweetness to them. They tend to be found around the Oasis near Cadomyr giving food and water to all travelers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Obwohl die Anhänger von Sirani eitel sind und sich auf Lust und Liebe konzentrieren sind sie nicht schlecht. Sie versammeln sich bei der Oase nahe Cadomyrs und geben Essen und Wasser an alle Reisenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("An elder goddess. Tanora's lizardfolk followers have water for brains. They would most certainly jump off of a bridge for her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Eine der Alten Götter. Tanoras Echsenmenschen haben nichts als Wasser im Kopf. Die würden für sie sogar von einer Klippe springen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("An elder goddess. Ushara has a few druids and old elves that have minds filled with earth. She is nothing to concern yourself with as all others follow Oldra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Eine der Alten Götter. Ushara wird von einigen Druiden und alten Elfen verehrt die wohl nichts als an Erde denken. Man braucht sie nicht zu beachten, ihre Anhänger sind jetzt bei Oldra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Friendship and loyalty. I have mixed feelings about the followers of Zhambra. They have a relentless desire for rules and justice. Yet they are more loyal than some dogs. Thankfully most live in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Freundschaft und Vertrauen, ich weiß nicht wie ich zu den Anhängern von Zhambra stehen soll. Sie haben einen unbändigen Drang nach Regeln und Gerechtigkeit. Dennoch sind sie loyaler als einige Hunde. Zum Glück leben die meisten in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(417, "=>", function(number) return (250); end))
talkEntry:addResponse("Ronagan is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(417, "=>", function(number) return (200); end))
talkEntry:addResponse("Ronagan is delighted with you and your path.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(417, "=>", function(number) return (150); end))
talkEntry:addResponse("Ronagan is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(417, "=>", function(number) return (100); end))
talkEntry:addResponse("Ronagan is happy with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(417, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 15))
talkEntry:addResponse("Ronagan is still pleased with you, but you might soon lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(417, "=>", function(number) return (50); end))
talkEntry:addResponse("Ronagan is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(417, ">", function(number) return (-50); end))
talkEntry:addResponse("Ronagan is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(417, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 15))
talkEntry:addResponse("Ronagan is displeased with you, soon you will not be able to call yourself devoted to Ronagan anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(417, ">", function(number) return (-100); end))
talkEntry:addResponse("Ronagan is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(417, ">", function(number) return (-150); end))
talkEntry:addResponse("Ronagan is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(417, ">", function(number) return (-200); end))
talkEntry:addResponse("Ronagan is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(417, ">", function(number) return (-250); end))
talkEntry:addResponse("Ronagan is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addResponse("Ronagan is wrathful about you. You'd better watch your back.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(417, "=>", function(number) return (250); end))
talkEntry:addResponse("Ronagan ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(417, "=>", function(number) return (200); end))
talkEntry:addResponse("Ronagan ist außerordentlich zufrieden mit dir und deinem Lebensweg.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(417, "=>", function(number) return (150); end))
talkEntry:addResponse("Ronagan ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(417, "=>", function(number) return (100); end))
talkEntry:addResponse("Ronagan ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(417, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 15))
talkEntry:addResponse("Ronagan ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(417, "=>", function(number) return (50); end))
talkEntry:addResponse("Ronagan ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(417, ">", function(number) return (-50); end))
talkEntry:addResponse("Ronagan ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(417, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 15))
talkEntry:addResponse("Ronagan ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Ronagans zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(417, ">", function(number) return (-100); end))
talkEntry:addResponse("Ronagan ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(417, ">", function(number) return (-150); end))
talkEntry:addResponse("Ronagan ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(417, ">", function(number) return (-200); end))
talkEntry:addResponse("Ronagan ist wütend auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(417, ">", function(number) return (-250); end))
talkEntry:addResponse("Ronagan ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addResponse("Ronagan ist rasend vor Zorn auf dich. Behalt deinen Rücken im Auge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sacrifice")
talkEntry:addResponse("Thieves like daggers, they are easy to conceal, and black clothes help to conceal the thief himself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("opfer")
talkEntry:addTrigger("opfergabe")
talkEntry:addResponse("Diebe mögen Dolche, sie sind einfach zu verdecken. Und schwarze Kleidung hilft dem Dieb sich selbst zu verstecken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("I pay little mind to the rulers of other towns. I owe my allegiance only to the Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I pay little mind to the rulers of other towns. I owe my allegiance only to the Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Die Regierenden der anderen Städte interessieren mich wenig. Dem Don gebührt meine Treue.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("A pretty town full of people who do not mind their purses well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ein hübsches Städtchen voll mit Leuten, die nicht besonders auf ihre Geldbeutel aufpassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Don Valerio Guiliani rules Galmair. Pay your taxes and gain his protection. Forget and we may meet again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Don Valerio Guiliani regiert Galmair. Zahl deine Steuern und du hast seinen Schutz, wenn nicht werden wir uns wiedersehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("The town above us. Others may consider us to be riff-raff and undesirables. So quickly do they forget that there is honour among thieves. As well as a knife in the back of those who do our friends harm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Die Stadt über uns. Andere mögen uns als unerwünschtes Gesindel betrachten. Sie vergessen dabei, dass auch Diebe eine Ehre haben. So wie sie vergessen, dass ein Messer im Rücken der Dank für die ist, die unseren Freunden schaden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("I pay little mind to the rulers of other towns. I owe my allegiance only to the Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I pay little mind to the rulers of other towns. I owe my allegiance only to the Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Die Regierenden der anderen Städte interessieren mich wenig. Dem Don gebührt meine Treue.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("A jewel in the desert indeed. As is much of what we take from there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ein Juwel in der Wüste so wie das Meiste was wir uns dort nehmen.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Ronagan selbst erbarmt sich der Waisen die von allen wie Dreck behandelt werden.", "It is Ronagan that takes pity on the orphans when all others have cast them aside like garbage.")
talkingNPC:addCycleText("Nicht ist schöner als von denen zu nehmen, die in Samt und Seide gehen und denen zu geben, die in Lumpen daherkommen.", "There is nothing more pleasurable in life than to take from those who wear silk and give to those who wear rags.")
talkingNPC:addCycleText("Alle Leute verbergen sich im Schatten.", "All people hide in shadows.")
talkingNPC:addCycleText("Wenn du vorhast zu stehlen, bleib alleine.", "If you intend to steal, do so alone.")
talkingNPC:addCycleText("Ein Assassine tötet beim ersten Mal, oder nie wieder.", "An assassin kills but once, else they never will again.")
talkingNPC:addCycleText("#me schnippt ein Goldstück.", "#me flips a gold coin.")
talkingNPC:addCycleText("#me spielt mit einem Dolch.", "#me plays with a dagger.")
talkingNPC:addCycleText("#me scheint im Schatten zu verschwinden wenn man nicht genau hinschaut.", "#me seems to disappear into the shadow, should one not be paying attention,")
talkingNPC:addCycleText("#me zählt die Münzen in einem Geldbeutel.", "#me counts the coins in a pouch.")
talkingNPC:addCycleText("#me lüftet den Hut etwas", "#me pull up her hood.")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Senka, eine Priesterin des Ronagan.", "This NPC is Senka, the Priestess of Ronagan.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 830)
mainNPC:setEquipment(3, 819)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 384)
mainNPC:setEquipment(9, 841)
mainNPC:setEquipment(10, 1501)
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
