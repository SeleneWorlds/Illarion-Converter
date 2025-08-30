local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Ada Golweneth the Elara Priest. Keywords: Hello, gods, Elara, favour, sacrifice."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Ada Golweneth die Elarapriesterin. Schlüsselwörter: Hallo, Götter, Elara, Gunst, Opfergabe."))
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
talkEntry:addResponse("Hello!")
talkEntry:addResponse("Greetings. Is there something I can do for you?")
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
talkEntry:addResponse("Sei gegrüßt. Kann ich irgendetwas für dich tun?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hello!")
talkEntry:addResponse("Greetings. Is there something I can do for you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hallo!")
talkEntry:addResponse("Sei gegrüßt. Kann ich irgendetwas für dich tun?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("May Elara's wisdom guide you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Möge Elaras Weisheit dich leiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("May Elara's wisdom guide you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Möge Elaras Weisheit dich leiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I am well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mir geht es gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Ada Golweneth. It is nice to meet you.")
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
talkEntry:addResponse("Ich heiße Ada Golweneth. Es freut mich dich zu treffen.")
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
talkEntry:addResponse("The only thing I trade in is knowledge. If you are looking for material goods or wealth, the Runewick marketplace is east of here.")
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
talkEntry:addResponse("Das Einzige womit ich handle ist Wissen. Solltest du aber nach materiellen Gütern oder Wohlstand suchen, der Marktplatz Runewicks befindet sich östlich von hier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I do not issue any quests.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I do not issue any quests.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
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
talkEntry:addResponse("I am a priestess of Elara. I tend to her manuscripts of wisdom within this library and to her altar. Things tend to get dusty in here from time to time.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin Priesterin der Elara. Ich kümmere mich hier in der Bücherei um ihre weisen Aufzeichnungen und um ihren Altar. Hier drinne verstauben Sachen schon mal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a priestess of Elara. I tend to her manuscripts of wisdom within this library and to her altar. Things tend to get dusty in here from time to time.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin Priesterin der Elara. Ich kümmere mich hier in der Bücherei um ihre weisen Aufzeichnungen und um ihren Altar. Hier drinne verstauben Sachen schon mal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("There are many gods. Five elder and eleven younger to be precise. I am a follower of Elara myself. Which one do you wish for me to expound upon?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Es gibt viele Götter. Fünf Alte und elf Junge wenn man es genau nimmt. Ich selbst bin ein Jünger Elaras. Welchen davon soll ich dir genauer vorstellen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("religion")
talkEntry:addResponse("There are many gods. Five elder and eleven younger to be precise. I am a follower of Elara myself. Which one do you wish for me to expound upon?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("religion")
talkEntry:addResponse("Es gibt viele Götter. Fünf Alte und elf Junge wenn man es genau nimmt. Ich bin ein Jünger Elaras. Welchen davon soll ich dir genauer vorstellen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("faith")
talkEntry:addResponse("There are many gods. Five elder and eleven younger to be precise. I am a follower of Elara myself. Which one do you wish for me to expound upon?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Glaube")
talkEntry:addResponse("Es gibt viele Götter. Fünf Alte und elf Junge wenn man es genau nimmt. Ich bin ein Jünger Elaras. Welchen davon soll ich dir genauer vorstellen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("God of drunkenness. I do hear that Adron's followers are excellent brewers, at least when they are not too busy sampling their product. Runewick produces the best wine in the region, so there is an altar to him in the tavern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Der Gott der Trunkenheit. Ich hörte unter Adrons Anhänger gibt es hervorragende Brauer, solange sie nicht zu beschäftigt sind, ihre eigenen Produkte zu testen. Der Runewicker Wein ist der beste Illarions weshalb sich sein Altar auch in der Taverne befindet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("He is the elder god of fire. The elder gods do not walk this world as often as the younger gods do. Brágon's warriors and priests now follow Malachín.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Er ist der alte Gott des Feuers. Die alten Götter verweilen im Gegensatz zu den jungen nur sehr selten in unserer Welt. Brágons Priester und Krieger haben sich heute Malachín zugewandt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Cherga is the goddess of spirits. It is she that guides our spirits after death. Her followers are all rather morbid and spend far too much time around the dead. Her altars tend to exist only in graveyards, notably one on Pauldron Isle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Cherga ist die Göttin der Geister. Sie ist diejenige, die die Geister nach dem Tod begleitet. Ihre Anhänger sind recht trübselig und beschäftigen sich zu sehr mit dem Tod. Ihre Tempel findet man fast nur auf Friedhöfen, ich kenne einen auf der Schulterplatte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara is the goddess of knowledge and wisdom. She is followed primarily by scholars and mages who wish to with to expand their knowledge. Many student also look to her for guidance with their studies.")
talkEntry:addResponse("It is said that the knowledge obtained by a follower of Elara in life is written down upon a scroll. Upon their death that knowledge is used to answer the reason for greed, the reason for violence, and the reason for suffering.")
talkEntry:addResponse("There is a parable about a holy man who prayed to Elara to tell him the meaning of life. The truth caused him to go mad and he pleaded for her to take it back. Upon doing so, he died content.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara ist die Göttin des Wissens und der Weisheit. Ihre Anhänger sind vor allem Gelehrte und Magier, die immer mehr lernen wollen. Auch sucht so mancher Student ihren Beistand für seine Studien.")
talkEntry:addResponse("Man sagt, dass alles Wissen, welches ein Elara Anhänger in seinem Leben erworben hat, niedergeschrieben wird. Nach ihrem Tod wird dieses Wissen genutzt um die Gründe für Geiz, Gewalt und Leid zu ergründen.")
talkEntry:addResponse("Es gibt eine Geschichte über einen heiligen Mann dessen Gebete von Elara eines Tages erhört wurden. Er erfuhr den Sinn des Lebens. Doch er konnte das Wissen nicht ertragen und bat Elara es ihm wieder zu nehmen. Nachdem das geschah, starb er friedlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("The elder god of the spirit. Eldan was never interested in the realm of mortals, he prefers his solitude, as does his few followers. The majority of which now follow Elara.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Der alte Gott des Geistes. Noch nie hat sich Eldan für die Belange der Sterblichen interessiert. Er und seine Anhänger bleiben lieber alleine. Die meisten seiner Jünger haben sich Elara zugewandt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("She is the elder goddess of air. Findari was once followed by bards and artists. However, the elder gods and goddess no long wander this realm, and her followers now follow Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Sie ist die alte Göttin der Luft. Einst wurde Findari von Barden und Künstlern verehrt. Seitdem die alten Götter sich aber von dieser Welt abgewandt haben verehren ihre Anhänger nun Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom is god of crafts and trade. Without him and his followers, your armour would be ill-fitting and towns wouldn't prosper. It is only fitting that there is an altar dedicated to him in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom ist der Gott des Handwerks und des Handelns. Ohne ihn und seine Anhänger trügen wir nur grobschlächtige Rüstungen und Städte würden nicht aufblühen. Da passt es gut, dass ihm in Galmair ein Altar gewidmet ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("God of battle and the hunt. The followers of Malachín spend all too much time training for battle and telling war stories. It is of no surprise that there is an altar dedicated to him in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Der Gott der Jagd und der Schlachten. Die Anhänger Malachíns verbringen viel zu viel Zeit damit für die Schlacht zu üben und Kriegsgeschichten zu erzählen. Es ist keine Überraschung, dass sich sein Tempel nahe Cadomyr befindet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me stares at you in stunned silence before hastily uttering, 'Don't say that name in here. Don't say that name around me! He might hear you!'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me schaut dich fassungslos an 'Sprich seinen Namen hier nicht aus. Sprich ihn nicht in meiner Nähe aus, er könnte ihn hören.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Nargùn is a chaotic god followed by madmen. Malcontents the lot. Gamblers will pray to him hoping for good fortune with a roll of the dice. I hear gamblers seek out his altar above the gaming den in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Nargùn ist ein chaotischer Gott und seine Anhänger sind Wahnsinnige, allesamt Querulanten. Spieler beten zu ihm in der Hoffnung auf einen guten Wurf. Man sagt über der Spielhöhle Galmairs hätten Spieler ihm einen Altar errichtet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("The all-mother to halflings, Oldra is the goddess of fertility. Harvests are bountiful with her blessing. Her altar is in Runewick's providence of Yewdale, just west of here across the golden bridges.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Besonders verehrt von Halblingen ist Oldra die Göttin der Fruchtbarkeit. Ihrem Segen entspringt eine reiche Ernte. In Runewicks Vorort Yewdale findet sich westlich der goldenen Brücke ihr Altar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("God of criminals! Ronagan's followers are all thieves and assassins who hide in the shadows. Rumor has it that there is an altar dedicated to him deep in the Galmair sewers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Der Gott der Kriminellen. Ronagans Anhänger sind allesamt Diebe und Mörder, die sich in den Schatten verbergen. Gerüchteweise wurde ihm ein Altar in den Abwasserkanälen Galmairs eingerichtet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Now there is a goddess of frivolous pursuits. Love and pleasure is all Sirani's followers concern themselves with. It seems odd that she has an altar to her in Cadomyr, but I suppose it is befitting of the noble class.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Es gibt eine Göttin der frivolen Beschäftigungen. Liebe und Vergnügen sind alles womit sich Anhänger Siranies befassen. Es scheint merkwürdig, dass sie ihren Altar in Cadomyr hat, doch ich schätze, dass dies den adligen Zugute kommt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("She is the elder goddess of water. Tanora is the mother of lizardfolk, who call her Zelphia. She does still wander this realm. Some say she is looking for something lost to her a long time ago.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Tanora ist die alte Göttin des Wassers. Sie ist die Mutter der Echsenmenschen, die sie Zelphya nennen. Sie wandelt immer noch unter uns. Man sagt, sie suche etwas, was sie vor langer Zeit verlor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara is the elder goddess of earth. There are a few old druids who claim to have met her. The elder gods no longer roam this realm. By now her followers have all converted to following Oldra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara ist die alte Göttin der Erde. Ein paar alte Druiden behaupten, sie getroffen zu haben. Die älteren Götter durchstreifen diese Welt nicht mehr. Heute sind all ihre Anhänger zu Oldra gewechselt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("The god of loyalty. Zhambra's followers do make the best friends a person could ask for. Should you have need of help, simply call on them and they will provide it. His altar is next to the palace in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Der Gott des Vertrauens. Zhambra Anhänger sind die besten Freunde, die man sich wünschen kann. Solltest du Hilfe brauchen, sie werden zur Stelle sein. Sein Altar ist neben dem Palast von Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(409, "=>", function(number) return (250); end))
talkEntry:addResponse("Elara is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(409, "=>", function(number) return (200); end))
talkEntry:addResponse("Elara is delighted with you and your strife for knowledge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(409, "=>", function(number) return (150); end))
talkEntry:addResponse("Elara is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(409, "=>", function(number) return (100); end))
talkEntry:addResponse("Elara is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(409, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 7))
talkEntry:addResponse("Elara is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(409, "=>", function(number) return (50); end))
talkEntry:addResponse("Elara is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(409, ">", function(number) return (-50); end))
talkEntry:addResponse("Elara is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(409, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 7))
talkEntry:addResponse("Elara is displeased with you, if you go on this way you will not be able to call yourself devoted to Elara anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(409, ">", function(number) return (-100); end))
talkEntry:addResponse("Elara is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(409, ">", function(number) return (-150); end))
talkEntry:addResponse("Elara is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(409, ">", function(number) return (-200); end))
talkEntry:addResponse("Elara is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(409, ">", function(number) return (-250); end))
talkEntry:addResponse("Elara is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addResponse("Elara is wrathful about you. Very unwise of you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(409, "=>", function(number) return (250); end))
talkEntry:addResponse("Elara ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(409, "=>", function(number) return (200); end))
talkEntry:addResponse("Elara ist außerordentlich zufrieden mit dir und deinem Streben nach Wissen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(409, "=>", function(number) return (150); end))
talkEntry:addResponse("Elara ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(409, "=>", function(number) return (100); end))
talkEntry:addResponse("Elara ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(409, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 7))
talkEntry:addResponse("Elara ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(409, "=>", function(number) return (50); end))
talkEntry:addResponse("Elara ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(409, ">", function(number) return (-50); end))
talkEntry:addResponse("Elara ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(409, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 7))
talkEntry:addResponse("Elara ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Elaras zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(409, ">", function(number) return (-100); end))
talkEntry:addResponse("Elara ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(409, ">", function(number) return (-150); end))
talkEntry:addResponse("Elara ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(409, ">", function(number) return (-200); end))
talkEntry:addResponse("Elara ist wütend auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(409, ">", function(number) return (-250); end))
talkEntry:addResponse("Elara ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addResponse("Elara ist rasend vor Zorn auf dich. Das war nicht sehr weise von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sacrifice")
talkEntry:addResponse("Knowledge is best kept written.")
talkEntry:addResponse("Wizards are known for their wisdom.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("opfer")
talkEntry:addTrigger("opfergabe")
talkEntry:addResponse("Wissen wird am besten schriftlich festgehalten.")
talkEntry:addResponse("Magier sind bekannt für ihre Weisheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Archmage Elvaine Morgan is the founder of the magic academy and Runewick. He originally sailed here from Lor Angor decades ago. Without him, none of this would exist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Erzmagier Elvaine Morgan ist der Gründer der magischen Akademie und Runewicks. Ursprünglich kam er aus Lor Angor Jahrzehnte zuvor. Ohne ihn gäbe es all das hier nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Archmage Elvaine Morgan is the founder of the magic academy and Runewick. He originally sailed here from Lor Angor decades ago. Without him, none of this would exist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Erzmagier Elvaine Morgan ist der Gründer der magischen Akademie und Runewicks. Ursprünglich kam er aus Lor Angor Jahrzehnte zuvor. Ohne ihn gäbe es all das hier nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("You are already there. You are currently within the largest library on all of Illarion. Due to the numerous tomes filled with wisdom housed here and the local magic academy, Runewick is considered to be the center of all learning.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Da bist du gerade. Du befindest dich in der größten Bücherei Illarions. Wegen der unzähligen Wälzer voller Weisheit und der magischen Akademie ist Runewick das Zentrum des Lernens.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Don Valerio Guilianni hails from the region of Gynk. He has a rather hands off style of ruling Galmair. Most issues matter not to him unless it interferes with his people or his gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Don Valerio Guilianni stammt aus Gynk. Mit sicherer Hand herrscht er in Galmair. Die meisten Probleme interessieren ihn nicht, außer sie beeinflussen seine Leute oder sein Gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ruled by Don Valerio Guilianni. It is primarily a trade town, filled with merchants and crafters. Although. It has a darker side. They say deep in its underbelly there is a black market of sorts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Die Stadt wird von Don Valerio Guilianni regiert. Eine Handelsstadt voll von Kaufleuten und Handwerkern. Aber auch mit einer dunklen Seite. Man sagt tief im Inneren der Stadt gäbe es eine Art Schwarzmarkt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Queen Rosaline is the only surviving member of the house Edwards. Normally Albarian nobility only passes to male heirs. There currently are none, so she rules. Perhaps this is why she has no children.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Königin Rosaline ist die einzige Überlebende des Hauses Edwards. Normalerweise erben nur männliche Nachfolger in albarischen Adelshäusern doch da es keinen gibt, regiert sie nun. Vielleicht hat sie deshalb keine Kinder.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Queen Rosaline is the only surviving member of the house Edwards. Normally Albarian nobility only passes to male heirs. There currently are none, so she rules. Perhaps this is why she has no children.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Königin Rosaline ist die einzige Überlebende des Hauses Edwards. Normalerweise erben nur männliche Nachfolger in albarischen Adelshäusern doch da es keinen gibt, regiert sie nun. Vielleicht hat sie deshalb keine Kinder.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("This jewel in the desert is ruled by Queen Rosaline Edwards. Although it is Albarian by birth, the town itself contains a unique subculture. Compared to Albar it is downright civilized.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Dieses Juwel in der Wüste wird von Königin Rosaline Edwards regiert. Obwohl albarischer Abstammung beherbergt die Stadt selbst eine einzigartige Subkultur. Im Vergleich zu Albar geht es dort regelrecht zivilisiert zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Nice to meet you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Angenehm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ada")
talkEntry:addTrigger("Golweneth")
talkEntry:addResponse("Yes?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ada")
talkEntry:addTrigger("Golweneth")
talkEntry:addResponse("Ja?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me blättert schnell durch einen Stapel Pergamente.", "#me rapidly shuffles through a pile of parchments.")
talkingNPC:addCycleText("#me kritzelt Notizen auf ein Stück Pergament.", "#me scribbles notes on a piece of parchment.")
talkingNPC:addCycleText("#me rollt eine Schriftrolle auf und überfliegt sie kurz bevor sie diese wieder im Regal verstaut.", "#me unwinds a scroll, scanning it quickly before rerolling it and placing it back on the shelf.")
talkingNPC:addCycleText("#me blättert durch ein Buch, verweilt hier und da um zu lesen, bevor sie weiterblättert.", "#me flips through the pages of the book, stopping occasionally to read before continuing on.")
talkingNPC:addCycleText("#me durchstöbert die Regale.", "#me browses the shelves, looking for a text.")
talkingNPC:addCycleText("Es ist eine wohlbekannte Tatsache, dass Wissen Macht ist.", "It is a well known fact that knowledge is power.")
talkingNPC:addCycleText("Es gibt Leute, die sich weigern zu lernen. Sie lernen nicht aus den Fehlern von denen um sie herum und sind so verdammt dazu die Fehler zu wiederholen.", "There are those who refuse to learn. They will not learn from the mistakes of those around them and are therefore forever doomed to repeat them.")
talkingNPC:addCycleText("Lernen endet nicht damit ein Buch zu schließen. Es endet nicht. Stattdessen kann man es in allem und jedem finden.", "Learning does not end with closing a book. It does not end. Instead, you can find it in everything and everyone.")
talkingNPC:addCycleText("Man kann von jedem etwas lernen. Selbst ein Idiot kann dir etwas beibringen.", "You can learn anything from anyone. Even a fool has something to teach.")
talkingNPC:addCycleText("Die Feder ist mächtiger als die Klinge.", "The quill is mightier than the blade.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(3)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Ada Golweneth die Elarapriesterin.", "This NPC is Ada Golweneth the Elara Priestess.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 850)
mainNPC:setEquipment(11, 558)
mainNPC:setEquipment(5, 2620)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 0)
mainNPC:setEquipment(9, 183)
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
