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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Cato Lupis, a Priest of Malachin. Keywords: Hello, god, favour, sacrifice."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Cato Lupis, ein Priester des Malachin. Schlüsselwörter: Hallo, Gott, Gunst, Opfergabe."))
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
talkEntry:addResponse("Greetings!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetings!")
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
talkEntry:addResponse("Grüße!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Malachin be with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Malachin be with you!")
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
talkEntry:addResponse("Malachin sei mit dir!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse(" I am doing quite well, thank you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mir geht es gut, danke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Cato Lupis, templar of Malachin.")
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
talkEntry:addResponse("Ich bin Cato Lupis, Templer des Malachin.")
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
talkEntry:addResponse("I am not a merchant. Head back to the Cadomyrian marketplace if you wish to trade.")
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
talkEntry:addResponse("Ich bin kein Händler. Geh zum Markt in Cadomyr zurück, wenn du handeln möchtest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a templar of Malachin. I slay the forces of the unholy and the unjust.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a templar of Malachin. I slay the forces of the unholy and the unjust.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin Templer des Malachin. Ich töte die Mächte der Unheiligen und Ungerechten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("God")
talkEntry:addResponse("Although many gods are prayed to in these lands, it is Malachin whom I honour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addResponse("Obwohl in diesen Ländern zu vielen Göttern gebetet wird, ist es Malachin, den ich ehre. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Religion")
talkEntry:addResponse("Although many gods are prayed to in these lands, it is Malachin whom I honour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Religion")
talkEntry:addResponse("Obwohl in diesen Ländern zu vielen Göttern gebetet wird, ist es Malachin, den ich ehre. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("The followers of Adron spend too much time drinking wine and partying. Though I will admit that those brewers who pray to him are the finest in the land. His followers tend to gather at the tavern in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Die Anhänger Adrons verbringen zu viel Zeit damit Wein zu trinken und zu feiern. Allerdings muss ich gestehen, dass seine Anhänger die besten Braumeister sind. Seine Anhänger neigen dazu sich in der Taverne in Runewick zu versammeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("He is the elder god of fire and although Bragon no longer walks this realm, his warrior spirit remains in all of us. Malachin now leads those who once followed him. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Er ist der alte Gott des Feuers und auch wenn er längst nicht mehr in diesen Gefilden weilt, lebt sein Kampfgeist in uns allen. Malachin führt jetzt die, die ihm einst folgten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("She is the goddess of spirits and the underworld. In death Cherga either guides you back or guides you to the afterlife. Her altar can be found on Pauldron Isle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Sie ist die Göttin der Geister und der Unterwelt. Im Tod geleitet Cherga einen entweder zurück oder ins Jenseits. Ihr Altar findet sich auf der Schulterplatteninsel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("The goddess of knowledge. Elara's altar is in the library of Runewick. There it is surrounded by books and the scholars and mages who follow her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Die Göttin des Wissens. Elaras Altar befindet sich in der Bücherei Runewicks. Dort ist er umgeben von Büchern und Gelehrten und Magiern, die ihr huldigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("One of the elder gods. No longer do they walk this plane. Eldan is the god of spirit and prefers to be a hermit as do his few followers. The rest follow Elara now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Einer der Alten Götter die nicht länger auf dieser Ebene verweilen. Eldan ist der Gott des Geistes und bevorzugt - so wie seine wenigen Anhänger - als Einsiedler zu leben. Der Rest folgt nun Elara.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("The elder goddess of air. Findari no longer walks these lands and those few bards that followed her follow Adron now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Die alte Göttin der Luft. Sie weilt nicht mehr unter uns und die paar Barden, die ihr folgten, folgen nun Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("He is the god of merchants and fine craftsmanship. If you want armor and weapons made right, find a crafter who follows Irmorom. His altar can be found in the mountains of Galmair. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Er ist der Gott der Händler und des feinen Handwerks. Solltest du eine gute Waffe oder Rüstung suchen, suche einen Handwerker, der zu Irmorom betet. Seinen Altar findest du in den Bergen Galmairs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Malachin is the god of battle and hunting. He is prayed to by soldiers for protection in battle, hunters for a swift kill, and by paladins to bring evil doers to justice.")
talkEntry:addResponse("A believer of Malachin who dies is brought forth to his great hall. There they feast and tell tales of great deeds. Should they prove to be dishonourable, they are doomed to walk the realm between here and the afterlife.")
talkEntry:addResponse("Honourable orc tribes will pray to Malachin to ensure the provision of food for the tribe. Successful hunting by all followers is a means to prove their devotion and will leave an offering of dried remains for him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Malachin ist der Gott der Jagd und des Kampfes. Er wird von Kriegern für Schutz in der Schlacht, von Jägern für einen guten Schuss und von Paladinen zum Richten von Bösewichten angebetet.")
talkEntry:addResponse("Anhänger Malachins die sterben, kommen in seine große Halle. Dort feiern sie mit anderen und erzählen Geschichten von großen Taten. Sollten sie jedoch für unwürdig befunden werden, sind sie verdammt zwischen der Welt und dem Jenseits zu wandern.")
talkEntry:addResponse("Ehrenhafte Orkstämme beten zu Malachin um die Versorgung des Stammes mit Nahrung zu sichern. Mit einer erfolgreichen gemeinschaftlichen Jagd beweisen sie ihre Treue und opfern getrocknete Reste der Jagdbeute.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Do not speak that name in my presence!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Sprich seinen namen nicht in meiner Gegenwart!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("He is the god of chaos. Nargun's followers gamble away their coin and their lives. Many of them may as well be mad! Thank Malachin that his altar is far away from here in Galmair's underground.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Er ist der Gott des Chaos. Narguns Anhänger verspielen ihr Geld und ihr Leben. Viele von denen sind sicher auch verrückt. Malachin sei Dank, dass Narguns Altar fern von hier in Galmairs Unterwelt liegt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("She is the goddess of the harvest. Without Oldra's cooks and farmers we would all starve. And her healers take care of the wounded after battle. Her altar is in Yewdale near Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Sie ist die Göttin der Ernte. Ohne Olras Köche und Bauern würden wir alle verhungern. Und ihre Heiler kümmern sich um die Verwundeten nach der Schlacht. Ihr Altar findet sich in Eibental nahe Runewicks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Common criminals follow him as well as dishonourable assassins. Ronagan's lair is deep inside Galmair's underground. I would watch your coin purse should you ever venture near there.  ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Seine Anhänger sind gewöhnliche Kriminelle und ehrlose Assassinen. Ronagans Höhle findet sich tief in Galmairs Untergrund. Ich an deiner Stelle würde auf den Geldbeutel achten, falls du dich dort jemals hin wagst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("The goddess of love and pleasure. Though many a desert adventure has found shelter under the care of her pacifistic followers. Continue down the road to the south and you will find her altar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Die Göttin von Liebe und Freude. Auch haben viele Wüstenabenteurer Zuflucht bei ihren friedlichen Anhängern gefunden. Folge der Straße südwärts und du wirst ihren Altar finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Tanora is the elder goddess of water. Of all the elder gods, she still walks these lands. Her children the lizardfolk love and honour her with religious zeal. Whereas sailors fear dying beneath her waves. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Sie ist die alte Göttin des Wassers Von allen alten Göttern ist sie die Einzige, die in diesen Landen verkehrt.  Ihre Kinder, die Echsenmenschen lieben und verehren sie mit religiösem Eifer. Wohingegen Seemänner fürchten in ihren Fluten zu sterben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("She is the elder goddess of earth. A few old elves and druids follow her, but most of Ushara's followers follow Oldra now.  ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Sie ist die alte Göttin der Erde. Ein paar alte Druiden und Elfen verehren sie noch, doch die meisten Anhänger Usharas folgen nun Oldra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra is the god of loyalty and friendship. His followers are an honour to fight next to in a shield wall. Seek out his followers at the temple dedicated to him near the palace in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra ist der Gott der Treue und der Freundschaft. Es ist eine Ehre neben einem seiner Anhänger im Schildwall zu kämpfen. Du findest seine Anhänger im Tempel in der Nähe des Palastes von Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(413, "=>", function(number) return (250); end))
talkEntry:addResponse("Malachin is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(413, "=>", function(number) return (200); end))
talkEntry:addResponse("Malachin is delighted with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(413, "=>", function(number) return (150); end))
talkEntry:addResponse("Malachin is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(413, "=>", function(number) return (100); end))
talkEntry:addResponse("Malachin is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(413, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 11))
talkEntry:addResponse("Malachin is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(413, "=>", function(number) return (50); end))
talkEntry:addResponse("Malachin is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(413, ">", function(number) return (-50); end))
talkEntry:addResponse("Malachin is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(413, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 11))
talkEntry:addResponse("Malachin is displeased with you, if you go on this way you will not be able to call yourself devoted to Malachin anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(413, ">", function(number) return (-100); end))
talkEntry:addResponse("Malachin is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(413, ">", function(number) return (-150); end))
talkEntry:addResponse("Malachin is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(413, ">", function(number) return (-200); end))
talkEntry:addResponse("Malachin is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(413, ">", function(number) return (-250); end))
talkEntry:addResponse("Malachin is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addResponse("Malachin is wrathful about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(413, "=>", function(number) return (250); end))
talkEntry:addResponse("Malachin ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(413, "=>", function(number) return (200); end))
talkEntry:addResponse("Malachin ist außerordentlich zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(413, "=>", function(number) return (150); end))
talkEntry:addResponse("Malachin ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(413, "=>", function(number) return (100); end))
talkEntry:addResponse("Malachin ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(413, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 11))
talkEntry:addResponse("Malachin ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(413, "=>", function(number) return (50); end))
talkEntry:addResponse("Malachin ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(413, ">", function(number) return (-50); end))
talkEntry:addResponse("Malachin ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(413, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 11))
talkEntry:addResponse("Malachin ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Malachins zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(413, ">", function(number) return (-100); end))
talkEntry:addResponse("Malachin ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(413, ">", function(number) return (-150); end))
talkEntry:addResponse("Malachin ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(413, ">", function(number) return (-200); end))
talkEntry:addResponse("Malachin ist wütend auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(413, ">", function(number) return (-250); end))
talkEntry:addResponse("Malachin ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addResponse("Malachin ist rasend vor Zorn auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sacrifice")
talkEntry:addResponse("The god of battle always needs weapons.")
talkEntry:addResponse("Help the hunters get ready for the trip.")
talkEntry:addResponse("Did you know that there is a type of dagger named after Malachin?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("opfer")
talkEntry:addTrigger("opfergabe")
talkEntry:addResponse("Der Gott des Gefechts braucht immer neue Waffen.")
talkEntry:addResponse("Hilf dem Jäger sich für sein Jagd bereitzumachen.")
talkEntry:addResponse("Wusstest du schon, dass es einen nach Malachin benannten Dolch gibt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("I really do not have much to say about him. He strikes me to be a loner who busy with his studies.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I really do not have much to say about him. He strikes me to be a loner who busy with his studies.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Über ihn gibt es wirklich nicht viel zu berichten. Mir erscheint er als Einzelgänger, der mit seinen Studien beschäftigt ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("The people of that town would sooner speak esoterically than doing anything worthy of my interests. When I do visit Runewick, I tend to hunt in the surrounding forests.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Die Leute dort würden eher fein daherreden als etwas zu tun, das mein Interesse wert wäre. Wenn ich Runewick besuche, jage lieber in den umliegenden Wäldern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("I find him to be a greedy dwarf. He does run Galmair with his own sense of justice. Though I am not sure his ends justify the means.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ich finde, er ist ein gieriger Zwerg. Galmair regiert er mit seinem ganz eigenen Sinn für Gerechtigkeit. Allerdings bin ich mir nicht sicher, ob das Ergebnis die Mittel rechtfertigt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("It is a dingy town. There is all manner of coal dust and sludge. And the people there will try to cheat or rob you out of your hard earned coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Es ist eine schäbige Stadt. Es gibt alle Arten von Staub und Schlamm. Und die Leute dort werden versuchen, dich um deine hart erarbeiteten Münzen zu bringen oder dich gar berauben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Queen Rosaline Edwards is as wise as she is beautiful. Through her just rule the town of Cadomyr has flourished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Queen Rosaline Edwards is as wise as she is beautiful. Through her just rule the town of Cadomyr has flourished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Königin Rosaline Edwards ist so weise wie sie schön ist. Durch ihre gerechte Regierung Cadomyrs, gedeiht die Stadt prächtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is the realm of the just and honourable. It is only fitting that an altar to Malchin be housed here and surrounded by such noble warriors.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist das Reich der Gerechten und Ehrenhaften. Da passt es, dass der Altars Malachin hier errichtet wurde, wo ihn  edle Krieger umgeben.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Wahre Gerechtigkeit erfreut die Ehrenhaften und erfüllt die Herzen der Übeltäter mit Schrecken.", "When proper justice is ensured, it brings joy to the honourable and strikes terror in the hearts of wrongdoers.")
talkingNPC:addCycleText("Mach was richtig ist. Stehe ein für die Unterdrückten. Verteidige die Wehrlosen. Und vor allem, suche immer Gerechtigkeit.", "Do what is right. Stand up for the oppressed. Defend the defenceless. And above all, seek justice!")
talkingNPC:addCycleText("Eine Schlacht in der es nichts zu verlieren gibt, bringt nicht den gleichen Ruhm wie eine Schlacht, in der alles verloren werden kann.", "A battle where you stand nothing to lose does not bring the same glory as a battle where there is everything to be lost.")
talkingNPC:addCycleText("Schrei wütend und lass die Wölfe des Krieges los!", "Cry havoc and let loose the wolves of war!")
talkingNPC:addCycleText("Es gehört zur Vorbereitung auf eine Schlacht zu helfen den Frieden zu sichern.", "It is in the preparation for battle that we can help preserve the peace.")
talkingNPC:addCycleText("#me schärft sein Schwert an einem Wetzstein.", "#me sharpens his sword with a whetstone.")
talkingNPC:addCycleText("#me poliert einen Schild.", "#me polishes a shield.")
talkingNPC:addCycleText("#me zerrt an den Handschuhen in seinen Stulpen.", "#me tugs on the gloves inside his gauntlets.")
talkingNPC:addCycleText("#me's Hand ruht auf dem Griff seines Schwertes.", "#me idly rests his hand on the pommel of his sword.")
talkingNPC:addCycleText("#me zieht die Riemen des Kriegshorns, das von seiner Schulter hängt, nach.", "#me adjusts the strap of the warhorn that hangs from his shoulder.")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Cato Lupis, ein Priester des Malachin.", "This NPC is Cato Lupis, a Priest of Malachin.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 364)
mainNPC:setEquipment(11, 2419)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 0)
mainNPC:setEquipment(9, 1479)
mainNPC:setEquipment(10, 1505)
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
