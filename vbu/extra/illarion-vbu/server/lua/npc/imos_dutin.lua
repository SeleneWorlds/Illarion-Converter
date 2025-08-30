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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Imos Dutin, the Priest of Nargun. Keywords: Hello, god, favour, sacrifice."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Imos Dutin, ein Priester des Nargun. Schlüsselwörter: Hallo, Gott, Gunst, Opfergabe."))
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
talkEntry:addResponse("Lord Nargun's blessing on you and welcome.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Lord Nargun's blessing on you and welcome.")
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
talkEntry:addResponse("Unser Herr Nargun segne dich. Herzlich Willkommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("May the raven guide you on your path, and may your bones roll true.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("May the raven guide you on your path, and may your bones roll true.")
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
talkEntry:addResponse("Mögen die Raben deine Wege begleiten und das Glück dir hold sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("With Nargun's blessing am I doing well, he keeps me on my toes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mit Narguns Segen geht's mir gut. Er hält mich auf Trab.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Imos Dutin, priest of Nargun, How may I help you?")
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
talkEntry:addResponse("Ich bin Imos Dutin, Nargunpriester. Wie kann ich dir helfen?")
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
talkEntry:addResponse("I will gladly speak of Lord Nargun and roll some bones to take some coins, but I do not trade or sell things.")
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
talkEntry:addResponse("Wenn du willst rede ich über Nargun oder wir würfeln um ein paar Münzen, aber ich handel nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am Lord Nargun's servant, tend his altar and speak to those who seek favor of Nargun or have questions about him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am Lord Nargun's servant, tend his altar and speak to those who seek favor of Nargun or have questions about him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich diene unserem Herrn Nargun, sorge für seinen Altar und bin für die da, die seine Gunst suchen oder eine Frage an ihn haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("God")
talkEntry:addResponse("Lord Nargun, the God of Chaos and trickery. Some won't even speak his name for fear of attracting his attention.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addResponse("Nargun, der Gott des Chaos und der Listen. Es gibt tatsächlich Leute die seinen Namen nicht aussprechen aus Angst seine Aufmerksamkeit zu erregen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Religion")
talkEntry:addResponse("Lord Nargun, is one of the eleven younger gods, and not one of the five elder gods.. I follow my lord's religion spreading his will of chaos and tricks. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Religion")
talkEntry:addResponse("Unser Herr Nargun ist einer der elf jüngeren Götter und keiner der fünf Alten Götter. Ich befolge die Regeln seiner Religion und verbreite seine Lehren über Chaos und Liste.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Yes, yes.. I know my lord Nargun, sometimes watches over Adron's doing since Adron is the god of wine and festivities. Most of Adron's followers are drunkards, making Lord Nargun's day to have some fun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Ja, ja. Ich weiß dass Nargun manchmal über Adron wacht, da dieser der Gott des Weines und der Feste ist. Die meisten von Adrons Anhänger sind Tunkenbold und bringen unserem Herrn viel Spaß.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Bragon. Yes, Bragon is the elder god of fire. A stiff board of the gods being so noble. But his followers are also ferocious warriors. And warriors cause great chaos. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Bragon, ja Bragon der alte Gott des Feuers. Kaum einer der brettsteifen Götter ist so edel. Doch seine Anhänger sind wilde Krieger, und die verursachen ein schönes Chaos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga:The goddess Cherga, now there is a goddess who does not care if you are good or evil.")
talkEntry:addResponse("Cherga:The goddess Cherga, now there is a goddess who does not care if you are good or evil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Der Göttin Cherga ist es egal ist ob man gut oder schlecht war.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Hmm, what to say about goddess Elara. A smart one that one. My Lord Nargun does not like her followers much. They tend to figure out his tricks and stop his chaos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Was kann man nur über Göttin Elara sagen? Sie ist clever. Mein Herr Nargun kann ihre Anhänger nicht besonders leiden. Sie neigen dazu seine Tricks zu durchschauen und das Chaos zu ordnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("The recluse god Eldan. One never knows what that lot is thinking. Eldan's followers be mostly the magic users who spend their days in books studying theories.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Eldan, der Einsiedler unter den Göttern. Man weiß nie was er denkt.  Seine Anhänger, vor allem die Magier, stecken tagelang ihre Nasen in Bücher und brüten über Theorien.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("That be the windy goddess Findari, she can be quite tame, mostly only causes trouble for those she sees going against her will. Her followers are mostly artist and bards but lots of them elven follow her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Die windige Göttin Findari kann recht zahm sein. Doch meist verursacht sie denen, die gegen sie sind, Schwierigkeiten.Die meisten ihrer Anhänger sind Spielleute und Schauspieler doch auch einige Elfen fühlen sich zu ihr hingezogen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Ahh that boring god, Irmorom, god of trade and craft. But what can be said for a god who cares only for making coin. Lord Nargun likes to watch crafters and give them light unfelt nudges to mess up their wares so they do not turn out perfect.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Ahh, dieser langweilige Gott Irmorom. Der Gott des Handels und des Handwerks. Was soll man über einen Gott sagen, dem es nur darum geht, Geld anzuhäufen. Nargun liebt es den Handwerkern zuzuschauen und durch den ein oder anderen Knuff dazu beizutragen, dass nicht alles perfekt wird.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("That do gooder god Malachin. He doesn't know chaos or how to have a wee bit of fun. He is god of battle and hunting and doesn't do tricks. Nor do his followers who are mostly knights, paladins and other rule following do gooders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Der gute Malachin. Er kennt kein Chaos und hat nie Spaß. Er ist der Gott der Jagd und der Schlachten und spielt keine Streiche. Das gilt auch für seine Anhänger, die meist Ritter, Paladine oder andere regelbesessene Leute sind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("A god Lord Nargun's finds interesting. He is the god of blood and bones, he is. His followers spread chaos and allows for trickery like Lord Nargun likes, but they love to spill blood for fun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Ein Gott den Nargun interessant findet. Er ist der Gott des Blutes und der Knochen. Seine Anhänger verbreiten Chaos und Betrug so wie auch Nargun aber sie töten aus Spaß.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Praise Lord Nargun! He is the god of chaos and fortune. He likes to have fun with mortals causing chaos and doing tricks and mischief. He is the lord of fun!")
talkEntry:addResponse("Narguns followers often don't admit to being his follower. Then they can cause as much chaos as possible! Though there is no pleasing Nargun. He is as fickle as his followers. Sometimes he helps you trick. Sometimes he tricks you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Lobe Nargun den Gott von Chaos und Zufall. Er liebt es es mit seinen Tricks unter den Sterblichen Chaos und Unfug zu säen. Er ist der Herr des Spaßes.")
talkEntry:addResponse("Narguns Anhänger bekennen sich oft nicht zu ihm weil sie dann viel besser Verwirrung stiften können. Nargun ist nicht immer angenehm, er ist so wankelmütig wie seine Anhänger. Manchmal unterstützt er deine Streiche, manchmal trickst er dich aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Goddess Oldra, mother of all things. Lord Nargun is grateful for her followers, it lets him have more fun each generation. Her followers are often farmers, mothers, midwives, and many halflings. Lord Nargun likes to cause chaos with them at times.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Die Göttin Oldra, die Mutter aller Dinge. Unser Herr Nargun ist ihren Anhängern dankbar, sie erlauben es ihm seinen Spß mit jeder Generation zu haben. Ihre Anhänger sind meist Bauern, Mütter, Hebammen und viele Halblinge. Nargun sorgt bei ihnen gerne für Chaos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Now you there be a god close to Lord Nargun's heart. Ronagan is the god of thieves and shadows. That group knows how to have fun and cause a good bit of chaos and fun! His followers are thieves, and assassins")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan:Jetzt sind wir Narguns Herzen nahe. Ronagan ist der Gott der Diebe und der Schatten. Seine Anhänger, Diebe und Assassinen, wissen wie man Spaß haben kann und vor allem verursachen sie jede Menge an Chaos.")
talkEntry:addResponse("Ronagan:Jetzt sind wir Narguns Herzen nahe. Ronagan ist der Gott der Diebe und der Schatten. Seine Anhänger, Diebe und Assassinen, wissen wie man Spaß haben kann und vor allem verursachen sie jede Menge an Chaos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("What can be said for goddess Sirani? Goddess of love and pleasure. Foolish things are done in the name of love and pleasure, so she is a good goddess. My lord Nargun loves to play tricks on her followers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani:Was kann man nur über die Göttin Sirani sagen? Die Göttin von Liebe und Freude. Unsinnige Dinge wurden in ihrem Namen verzapft, deshalb lieben wir sie. Unser Herr Nargun spielt ihren Anhängern gerne Streiche.")
talkEntry:addResponse("Sirani:Was kann man nur über die Göttin Sirani sagen? Die Göttin von Liebe und Freude. Unsinnige Dinge wurden in ihrem Namen verzapft, deshalb lieben wir sie. Unser Herr Nargun spielt ihren Anhängern gerne Streiche.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("The sad goddess Tanora. Her lizardfolk take things way too seriously. Lord Nargun finds no humor in their lives, but they always like to fight for power over each other and cause chaos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Die traurige Göttin Tanora. Ihre Echsenmenschen nehmen alles zu ernst. Nargun weiß da keinen Humor zu erkennen aber sie sind chaotisch und kämpfen gerne untereinander.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("She be the grandmother of the mortals land. She is like goddess Oldra but is more a stick in the mud. She is so serious and thinking, not things Lord Nargun likes. Her followers are old female druids or elves. No fun there for Lord Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Sie ist die Urmutter des Landes der Sterblichen. Sie ist wie Oldra bloß ein Spielverderber. Sie ist so ernst und nachdenklich, nichts was Nargun gefallen würde. Ihre Anhänger sind alte Druiden und Elfen. Da hat Nargun keinen Spaß.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra, god of Friendship and Loyalty, that stick in the mud. His followers distest lord Nargun and want everyone to be friends and trust worthy to each other, there is no fun there for Lord Nargun to cause chaos with them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra, der Gott der Freundschaft und Treue, ein Spielverderber. Seine Anhänger verabscheuen Nargun und wollen dass alle befreundet sind und sich vertrauen. Wo bleibt da Spaß und Chaos?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (250); end))
talkEntry:addResponse("Nargún is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (200); end))
talkEntry:addResponse("Nargún is delighted with you, lucky one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (150); end))
talkEntry:addResponse("Nargún is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (100); end))
talkEntry:addResponse("Nargún is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 6))
talkEntry:addResponse("Nargún is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (50); end))
talkEntry:addResponse("Nargún is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-50); end))
talkEntry:addResponse("Nargún is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 6))
talkEntry:addResponse("Nargún is displeased with you, if you go on this way you will not be able to call yourself devoted to Nargún anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-100); end))
talkEntry:addResponse("Nargún is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-150); end))
talkEntry:addResponse("Nargún is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-200); end))
talkEntry:addResponse("Nargún is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-250); end))
talkEntry:addResponse("Nargún is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addResponse("Nargún is wrathful about you. Are you not afraid of the god of chaos?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (250); end))
talkEntry:addResponse("Nargún ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (200); end))
talkEntry:addResponse("Nargún ist außerordentlich zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (150); end))
talkEntry:addResponse("Nargún ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (100); end))
talkEntry:addResponse("Nargún ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 6))
talkEntry:addResponse("Nargún ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (50); end))
talkEntry:addResponse("Nargún ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-50); end))
talkEntry:addResponse("Nargún ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 6))
talkEntry:addResponse("Nargún ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Nargúns zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-100); end))
talkEntry:addResponse("Nargún ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-150); end))
talkEntry:addResponse("Nargún ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-200); end))
talkEntry:addResponse("Nargún ist wütend auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-250); end))
talkEntry:addResponse("Nargún ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addResponse("Nargún ist rasend vor Zorn auf dich. Fürchtest du den Gott des Chaos etwa nicht?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sacrifice")
talkEntry:addResponse("Nargún changes his preferences ever so often.")
talkEntry:addResponse("Have you tried bananas today?")
talkEntry:addResponse("There are divinations to predict what Nargún desires today. Have you tried telling by druids tea leaves?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("opfer")
talkEntry:addTrigger("opfergabe")
talkEntry:addResponse("Nargún ändert seine Vorlieben ständig.")
talkEntry:addResponse("Hast du es heute schon mit Bananen versucht?")
talkEntry:addResponse("Es gibt Möglichkeiten herauszufinden, wonach Nargún heute verlangt. Hast du es versucht aus Druidentee-Blättern zu lesen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Bah, stuffy mage. But still lord Nargun his fun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Bah, stuffy mage. But still lord Nargun his fun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Pah, ein verklemmter Magier, aber immer für einen Streich Narguns gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Stuffy town of those good doers. Chaos would be good there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Was für eine verklemmte Stadt. Chaos täte denen mal gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ahh the Don. A dwarf after Lord Nargun's heart. He would do anything for a coin! He likes to roll the bones with Lord Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ah der Don, ja ein Zwerg nach Narguns Geschmack. Der würde für Geld alles tun. Er wirft gerne mal die Würfel mit Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("A grand town! Lots of people and lots of fun. Chaos grows there with every whisper.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Eine großartige Stadt, ein Haufen Leute und jede Menge Spaß. Chaos entsteht dort mit jedem Geflüster.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("A no fun noble. Rules, rules, rules! All she cares about is who is following the rules of her town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("A no fun noble. Rules, rules, rules! All she cares about is who is following the rules of her town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Eine unlustige Adlige. Regeln, nichts als Regeln. Sie interessiert nur, dass diese auch befolgt werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Nobles! Bah! But easy to cause trouble or mischief with. A whisper of someone trying to bend the queen's ear more than another noble living there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Adelige, na ja. Aber es ist eifach unter ihnen Chaos zu stiften und Missgunst zu säen. Ein Flüstern, das das Ohr der Königin erreicht ist mehr wert als die anderen Adligen dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Wirf die Würfel und schau was Nargun dir gibt.", "Roll your bones and see what Nargun gives you.")
talkingNPC:addCycleText("Folge dem Pfad des Raben, er ist verschlungen und lustig.", "Follow the Raven's path, it be fun and chaotic.")
talkingNPC:addCycleText("Nargun segne dich, mal sehen was dein Schicksal bereithält.", "Lord Nargun bless you, and see what fate has in store for you.")
talkingNPC:addCycleText("Glück oder Pech, Nargun sei mit dir.", "Bad luck, good luck, or no luck at all, Lord Nargun be with you.")
talkingNPC:addCycleText("Verbreite Chaos und Unfug in Naguns Namen.", "Spread chaos and mischief, in Lord Nargun's name.")
talkingNPC:addCycleText("#me kniet nieder und schüttelt einen Holzbecher in dem es klappert, bevor er die Würfel wirft und sagt: 'Nargun sei gepriesen.'", "#me kneels down, shaking a wooden cup that rattles with each shake. Before turning out the bones. 'Lord Nargun be praised.'")
talkingNPC:addCycleText("#me starrt auf die Steinwand als würde er dort etwas suchen.", "#me stares intently at the stone wall, as though looking for something.")
talkingNPC:addCycleText("#me füttert einen Raben, der ihm zu folgen scheint.", "#me feeds a raven that seems to follow him around.")
talkingNPC:addCycleText("#me schaut sich mit einem verschmitzten Grinsen auf den Lippen um.", "#me looks around with mischief grin on his lips.")
talkingNPC:addCycleText("#me murmelt leise darüber Spaß und Chaos in Narguns Namen zu verbreiten.", "#me mutters under his breath about causing fun and chaos for his Lord Nargun")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Imos Dutin, ein Priester des Nargun.", "This NPC is Imos Dutin, the Priest of Nargun.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 1415)
mainNPC:setEquipment(3, 813)
mainNPC:setEquipment(11, 196)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 826)
mainNPC:setEquipment(10, 697)
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
