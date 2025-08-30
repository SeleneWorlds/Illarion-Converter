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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Dreal Coalbreaker, the Priest of Irmorom. Keywords: Hello, god, favour, sacrifice."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Dreal Coalbreaker, ein Priester des Irmorom. Schlüsselwörter: Hallo, Gott, Gunst, Opfergabe."))
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
talkEntry:addResponse("Greetin's.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetin's.")
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
talkEntry:addResponse("Tach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Irmorom be with ya.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Irmorom be with ya.")
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
talkEntry:addResponse("Irmorom mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Oh, I'm doin' fairly well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Oh, mir geht's ziemlich gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Dreal Coalbreaker.")
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
talkEntry:addResponse("Ich bin Dreal Coalbreaker.")
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
talkEntry:addResponse("I'm no merchant. Ya can find 'em in the marketplace.")
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
talkEntry:addResponse("Ich bin kein Händler. Die findest du am Markt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a priest of Irmorom. I tend to his altar. But every once in awhile I manage ta get away and do some blacksmithing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a priest of Irmorom. I tend to his altar. But every once in awhile I manage ta get away and do some blacksmithing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin Irmorompriester und kümmere mich um seinen Altar. Aber hin und wieder schaffe ich's fort zu kommen und ein wenig zu schmieden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("God")
talkEntry:addResponse("Irmorom is who I follow. Though I do my best to respect the other gods. They all have something to teach us and an effect on our day to day lives.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addResponse("Ich folge Irmorom. Allerdings tue ich auch mein bestes die anderen Götter zu respektieren. Sie alle können uns etwas lehren und unser alltägliches Leben beeinflussen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Religion")
talkEntry:addResponse("There are five elder gods, all of whom want little to do with us. The eleven younger gods hold the world in their stead. Of those, I follow Irmorom.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Religion")
talkEntry:addResponse("Es gibt die fünf Alten Götter, die allesamt nur noch wenig mit uns zu tun haben wollen. An ihre Stelle sind die elf Jungen Götter getreten. Als einem von ihnen folge ich Irmorom.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("He is the god of wine and merrymakin'. All of his followers enjoy a good drink and the camaraderie of others. Ye can find Adron's altar in the tavern over in Runewick.  I never thought them mages did anything fun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Er ist der Gott des Weines und der Heiterkeit. All seine Anhänger lieben einen guten Schluck und die Gesellschaft von anderen. Du findest Adrons Altar in der Taverne drüben in Runewick. Ich hätte nie gedacht, dass Magier etwas lustiges tun könnten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("He's the elder god of fire. Bragon's flame still lights our forges, even though he has long since left this realm. His priests and follower follow Malachin now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon:Er ist der alte Gott des Feuers. Selbst wenn er vor langer Zeit unsere Welt verlassen hat, brennt Bragons Feuer noch heute in unseren Schmieden. Seine Priester und Anhänger folgen nun Malachin.")
talkEntry:addResponse("Bragon:Er ist der alte Gott des Feuers. Selbst wenn er vor langer Zeit unsere Welt verlassen hat, brennt Bragons Feuer noch heute in unseren Schmieden. Seine Priester und Anhänger folgen nun Malachin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("There is not one person alive who will not meet Cherga in the afterlife. I see no reason ta fear death, for it comes to us all. I would not go seek her out. Should ya do, her altar is on Pauldron Isle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Es gibt niemanden unter den Lebenden, der im Jenseits nicht vor Cherga treten wird. Ich sehe keinen Grund den Tod zu fürchten, er kommt zu uns allen. Ich würde aber auch nicht losziehen sie zu suchen. Solltest du das wollen, findest du sie auf der Schulterplatte. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara is the goddess of knowledge. 'Er followers are all into books and written learnin'. They'd rather sit in a library than go do. It doesn't surprise me that her altar is buried in the Runewick Library.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara ist die Göttin der Weisheit. Ihre Anhänger lieben Bücher und studieren Schriften. Lieber sitzen sie in einer Bücherei als mal raus zu gehen. Überrascht mich nicht, dass ihr Altar in der Bücherei Runewicks vergraben ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("He's the elder god of spirit. Bit of hermit along with his few followers. Eldan's never been interested in dis world, though his spirit is in all of us. Da few that used ta follow him, follow Elara now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Er ist der alte Gott des Geistes. Wie seine Anhänger ist er ein Einsiedler. Eldan hat unsere Welt noch nie interessiert, doch sein Geist ist in uns allen. Seine wenigen Anhänger haben sich Elara zugewandt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari is the elder goddess of air. 'Er wind blows the sails of trade ships across seas, but also brings the storms to sink 'em. Sailors fear 'er, though 'er bard follow Adron now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari ist die alte Göttin der Luft. Ihre Winde blasen in die Segel der Handelsschiffe, ihre Stürme versenken sie. Seeleute fürchten sie aber ihre Barden folgen jetzt Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom is the god of trade and fine craftsmanship. Many a crafter looks to him for inspiration in their work and merchants pray to him in hopes that business will thrive. Dwarves tend to be both.")
talkEntry:addResponse("Should a follower of Irmorom die, they are brought before him in his mountain hall. There they must create their final, finest work. Should they succeed, they are sent to paradise. Fail and be reborn to learn anew.")
talkEntry:addResponse("Those who follow Irmorom believe that coin should be gained from hard work, fair trade, and fine craftsmanship. Thieves and swindlers will not find favor from Irmorom.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom ist der Gott des Handels und des Handwerks. Viele Handwerker erhoffen von ihm Inspiration für ihre Arbeit, Händler bitten ihn um gute Geschäfte. Wir Zwerge neigen dazu beides zu sein.")
talkEntry:addResponse("Stirbt ein Anhänger Irmoroms, so wird er zu ihm in seine Felsenhalle gebracht. Dort müssen sie ihr letztes und bestes Werk anfertigen. Hat er Erfolg, wird er ins Paradies geschickt. Scheiter und werde wiedergeboren um es neu zu lernen.")
talkEntry:addResponse("Die, die Irmorom folgen glauben, dass Geld durch ehrlicher Arbeit, ehrlichem Handel und vom Handwerk verdient werden sollte. Diebe und Schwindler werden keine Gunst von Irmorom erhalten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("He's the god of the hunt. Malachin's followers are great fighters and incredible trackers. Look for his altar south of Cadomyr, above the mine. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Er ist der Gott der Jagd. Malachins Anhänger sind hervorragende Krieger und unglaubliche Fährtenleser. Suche nach seinen Altar südlich von Cadomyr, über der Mine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me pales, eyes going wide. After a moment's pause he turns towards you, furious, 'Do not speak his name anywhere near this here altar! Do ya hear me?!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me wird blass, die Augen groß. Nach einer Weile dreht er sich verärgert zu dir. 'Sprich seinen Namen niemals in der Nähe dieses Altars! Hast du mich verstanden?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("#w Nargun's da god of chaos. His followers are all mad, they is. He's da reason that strange things occur and water wheels turn backwards. His altar is in Galmair's black market, well below ground.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("#w Nargun ist der Gott des Chaos. Ihm folgen nur Verrückte. Er ist der Grund dafür, dass seltsame Dinge passieren und Wasserräder sich rückwärts drehen. Sein Tempel ist am Schwarzmarkt von Galmair, tief unter der Erde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("She's the goddess of fertility and the harvest. Those who follow Oldra tend ta be midwives and mothers. Others are halflings, farmers, and cooks. It's why ya can find her altar in Yewdale, west of Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Sie ist die Göttin der Fruchtbarkeit und der Ernte. Vor allem Hebammen und Mütter beten zu ihr. Dazu kommen Halblinge, Landwirte und Köche. Deshalb findest du ihren Altar in Eibental, westlich von Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("I do not consider the god of criminals to be a respectable god. His followers like to steal from honest crafters and merchants. If ye wish ta look, Ronagan's altar is in the Galmair underbelly.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan:Ich halte den Gott der Verbrecher nicht für einen ehrbaren Gott. Seine Anhänger stehlen von hart arbeitenden Handwerkern und Händlern. Wenn du ihn suchst, Ronagans Altar findet sich in Galmairs Untergrund.")
talkEntry:addResponse("Ronagan:Ich halte den Gott der Verbrecher nicht für einen ehrbaren Gott. Seine Anhänger stehlen von hart arbeitenden Handwerkern und Händlern. Wenn du ihn suchst, Ronagans Altar findet sich in Galmairs Untergrund.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Now there's a lovely goddess. Sirani and 'er followers are all about the pleasurable things in life. They make for hospitable hosts should ye find yerself in need. 'Er altar is near Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Sie ist eine liebenswürdige Göttin. Sirani und ihre Anhänger befassen sich mit all den erfreulichen Dingen im Leben. Sie sind gastfreundlich zu Leuten in Not. Ihr Altar findet sich nahe Cadomyrs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("She's the elder goddess of water. Tanora still walks these lands, as do 'er lizardfolk children. I hear from those that have met her, that she seems lost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Sie ist die ältere Göttin des Wassers. Tanora weilt noch unter den Sterblichen so wie auch ihre Echsenmenschen. Leute, die sie getroffen haben, berichten sie würde verloren aussehe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("She's the elder goddess of earth. 'Er soil helps makes crops grow. Few elder elves and druids still follow 'er. Most follow Oldra now in 'er stead.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Sie ist die ältere Göttin der Erde. Ihr Boden lässt die Pflanzen wachsen. Ein paar alte Elfen und Druiden folgen ihr noch immer. Die meisten jedoch haben sich Oldra zugewandt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("He's the god of loyalty. Zhambra's followers are true to their word. Ya can always depend on them to be fair. In a fight I want one of 'em by my side. His altar is near the palace in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Er ist der Gott der Treue. Zhambras Anhänger stehen zu ihrem Wort. Man kann sich darauf verlassen, dass sie ehrlich sind. So einen wünsch ich mir an meiner Seite wenn es zum Kampf kommt. Sein Altar ist nahe des Palastes in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(414, "=>", function(number) return (250); end))
talkEntry:addResponse("Irmorom is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(414, "=>", function(number) return (200); end))
talkEntry:addResponse("Irmorom is delighted with you and your hard work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(414, "=>", function(number) return (150); end))
talkEntry:addResponse("Irmorom is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(414, "=>", function(number) return (100); end))
talkEntry:addResponse("Irmorom is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(414, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 12))
talkEntry:addResponse("Irmorom is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(414, "=>", function(number) return (50); end))
talkEntry:addResponse("Irmorom is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(414, ">", function(number) return (-50); end))
talkEntry:addResponse("Irmorom is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(414, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 12))
talkEntry:addResponse("Irmorom is displeased with you, if you go on this way you will not be able to call yourself devoted to Irmorom anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(414, ">", function(number) return (-100); end))
talkEntry:addResponse("Irmorom is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(414, ">", function(number) return (-150); end))
talkEntry:addResponse("Irmorom is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(414, ">", function(number) return (-200); end))
talkEntry:addResponse("Irmorom is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(414, ">", function(number) return (-250); end))
talkEntry:addResponse("Irmorom is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addResponse("Irmorom is wrathful about you. May thy tools break!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(414, "=>", function(number) return (250); end))
talkEntry:addResponse("Irmorom ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(414, "=>", function(number) return (200); end))
talkEntry:addResponse("Irmorom ist außerordentlich zufrieden mit dir und deiner harten Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(414, "=>", function(number) return (150); end))
talkEntry:addResponse("Irmorom ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(414, "=>", function(number) return (100); end))
talkEntry:addResponse("Irmorom ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(414, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 12))
talkEntry:addResponse("Irmorom ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(414, "=>", function(number) return (50); end))
talkEntry:addResponse("Irmorom ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(414, ">", function(number) return (-50); end))
talkEntry:addResponse("Irmorom ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(414, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 12))
talkEntry:addResponse("Irmorom ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Irmoroms zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(414, ">", function(number) return (-100); end))
talkEntry:addResponse("Irmorom ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(414, ">", function(number) return (-150); end))
talkEntry:addResponse("Irmorom ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(414, ">", function(number) return (-200); end))
talkEntry:addResponse("Irmorom ist wütend auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(414, ">", function(number) return (-250); end))
talkEntry:addResponse("Irmorom ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addResponse("Irmorom ist rasend vor Zorn auf dich. Möge dein Werkzeug brechen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sacrifice")
talkEntry:addResponse("Irmorom only accepts freshly made crafts of highest quality.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("opfer")
talkEntry:addTrigger("opfergabe")
talkEntry:addResponse("Irmorom akzeptiert nur frisch gefertigte Gegenstände von perfekter Qualität.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("He's a smart one, I'll tell ya that. But the old Archmage Morgan doesn't leave his abode very often.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("He's a smart one, I'll tell ya that. But the old Archmage Morgan doesn't leave his abode very often.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Er ist klug, sag ich dir. Doch der alte Erzmagier Morgan verlässt seine Behausung nicht sehr oft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Whole town's filled with mages. That's where the original magic academy on Illarion is. I don't got anything against 'em learned types, but I think they ought to do more handiwork than bookwork.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Die ganze Stadt ist voller Magier. Dies ist auch der Ort der ursprünglichen magischen Akademie in Illarion. Ich hab ja nichts gegen Magier aber sie sollten mehr Handwerk als Studien betreiben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("The Don inherited Galmair from his father. Done good too. The town has flourished under 'im. He rules the town with an iron fist. So don't ya go crossing him or disrupting anything here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don erbte Galmair von seinem Vater. Auch er macht das gut, die Stadt gedeiht unter ihm. Er regiert mit eiserner Faust. Besser du kommst ihm nicht in die Quere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("The best craftsmen can be found here. Most of 'em smiths of some kind. I can hear the hammers in the smithy from dawn til dusk. It is music to my ears, and it pleases Irmorom.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Hier findest du die besten Handwerker. Meist Schmiede und so was. Ich höre den Klang der Hämmer die ganze Nacht lang. Das ist Musik in meinen Ohren und gefällt Irmorom.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("She it a pretty young thing. The only heir to the Edwards line she is. Cadomyr has changed significantly under her rule.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("She it a pretty young thing. The only heir to the Edwards line she is. Cadomyr has changed significantly under her rule.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Sie ist ein hübsches junges Ding. Die einzige verbliebene Nachfahre der Edwards. Cadomyr hat sich unter ihrer Regierung ganz schön verändert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("The nobles of Cadomyr enjoy displaying their wealth. Their vanity lines Galmairian pockets with Cadomyrian gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Die Adligen Cadomyrs stellen ihren Reichtum gerne zur Schau und füllen so Galmairs Taschen mit Cadomyrer Gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Nichts geht über einen fairen Handel, eine gelungene Arbeit oder einen Krug guten Bieres.", "There is nothing better in life than knowing that ya have made a fair trade, created a fine work, and drunk a good beer.")
talkingNPC:addCycleText("Ein guter Handwerker arbeitet nur mit Verstand und Muskeln, ein hervorragender mit Herz und Seele.", "A good crafter puts only his mind and his muscle into his work. A fine crafter puts his heart and soul into it.")
talkingNPC:addCycleText("Ich kann Irmas kaum erwarten. Der große Markt, die Handwerksmesse zu Irmoroms Ehren  und das beste Bier geteilt mit Freunden.", "I can not wait for Irmas. Grand market days, contests to find whom Irmorom has blessed this year, and the finest brews shared among friends.")
talkingNPC:addCycleText("Versuch nicht dich mit jedem Handwerk zu beschäftigen, oder du wirst es nichtmal schaffen eins zu meistern.", "Do not dabble in all trades, for ya will never be able to master even one.")
talkingNPC:addCycleText("Wettbewerb belebt das Geschäft.", "A little competition goes a long way.")
talkingNPC:addCycleText("#me schnippt eine Goldmünze in die Luft.", "#me flips a gold coin.")
talkingNPC:addCycleText("#me nimmt einen großen Schluck aus einer Bierflasche.", "#me takes a long swig from a bottle of beer.")
talkingNPC:addCycleText("#me schnitzt an einem Stück Holz.", "#me widdles a piece of wood with a knife.")
talkingNPC:addCycleText("#me untersucht einen Erzbrocken genau.", "#me closely examines an ore.")
talkingNPC:addCycleText("#me summt eine fröhliche Melodie.", "#me hums a merry tune.")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Dreal Coalbreaker, ein Priester des Irmorom.", "This NPC is Dreal Coalbreaker, the Priest of Irmorom.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 1419)
mainNPC:setEquipment(3, 1445)
mainNPC:setEquipment(11, 2418)
mainNPC:setEquipment(5, 23)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 1468)
mainNPC:setEquipment(9, 2111)
mainNPC:setEquipment(10, 1517)
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
