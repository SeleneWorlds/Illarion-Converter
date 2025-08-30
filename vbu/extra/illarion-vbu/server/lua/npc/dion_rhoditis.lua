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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Dion Rhoditis the Adron Priest. Keywords: Hello, gods, Adron, favour, sacrifice."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Dion Rhoditis der Adronpriester. Schlüsselwörter: Hallo, Götter, Adron, Gunst, Opfergabe."))
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
talkEntry:addResponse("What brought you here?")
talkEntry:addResponse("Nice to meet you.")
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
talkEntry:addResponse("Hallo!")
talkEntry:addResponse("Was führt dich denn her?")
talkEntry:addResponse("Angenehm.")
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
talkEntry:addResponse("What brought you here?")
talkEntry:addResponse("Nice to meet you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hallo!")
talkEntry:addResponse("Was führt dich denn her?")
talkEntry:addResponse("Angenehm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Bye-bye!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Ciao.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Bye-bye!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Ciao.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Incredibly well! At least until I finish this glass of wine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Blendend, zumindest so lange noch Wein da ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Dion Rhoditis. Priest of Adron and lover of fine wine!")
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
talkEntry:addResponse("Ich bin Dion Rhoditis, Adronpriester und Liebhaber feiner Weine.")
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
talkEntry:addResponse("Ich bin doch kein Händler!")
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
talkEntry:addResponse("I am Dion Rhoditis. Priest of Adron and lover of fine wine!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin Dion Rhoditis, Adronpriester und Liebhaber feiner Weine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am Dion Rhoditis. Priest of Adron and lover of fine wine!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin Dion Rhoditis, Adronpriester und Liebhaber feiner Weine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Depends on which one you want to know about. Adron is the most interesting of them all!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Tja, hängt davon ab welcher. Ganz klar, Adron ist natürlich der Beste.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("religion")
talkEntry:addResponse("I follow all of the respectable gods, but few actually seem like they would be fun to drink with!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("religion")
talkEntry:addResponse("Ich folge allen achtbaren Göttern, aber die meisten scheinen nicht die beste Trinkgesellschaft zu sein!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("faith")
talkEntry:addResponse("I follow all of the respectable gods, but few actually seem like they would be fun to drink with!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Glaube")
talkEntry:addResponse("Ich folge allen achtbaren Göttern, aber die meisten scheinen nicht die beste Trinkgesellschaft zu sein!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron is the god of wine and festivities! With his blessing your cup will never run dry! I rue the day for those who try to stop the endless flow of wine. Adrons wrath will be upon them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron ist der Gott des Weines und der Feste. Hast du seinen Segen wird dein Glas niemals leer sein.Ich bedauere die, die keinen Wein mehr anfassen wollen. Adrons Zorn wird sie treffen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("He is one of them Elder Gods. If you ask me, those followers of Brágon don't have a fun bone in their body. Not that it matters, most of his followers follow Malachín now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Er ist einer der alten Götter. Wenn du mich fragst haben die Anhänger Brágons keinen Sinn für Humor. Aber eigentlich ist es auch egal, die meisten verehren ja jetzt Malachín.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("I'd rather not spend too much time thinking about the goddess of death. I'd rather live life and enjoy wine! Cherga's followers are all rather dull anyhow. They spend their time tending to the cemetery on Pauldron Isle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Ich würd mir nicht zu viel Gedanken über die Göttin des Todes machen. Genieße lieber den Tag und ein gutes Glas Wein. Chergas Getreue sind nämlich ziemlich langweilige Gesellen. Sie verbringen ihre Zeit damit sich um den Friedhof auf der Schulternplatteninsel zu kümmern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara is the goddess of knowledge and wisdom. Her scholarly followers tend to hole themselves up in the Runewick library studying. Occasionally they come down here when they need a break. And a drink.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara ist die Göttin des Wissens und der Weisheit. Ihre gelehrten Verehrer neigen dazu, sich selbst in der Bücherei Runewicks zu vergraben. Manchmal kommen sie hierher, wenn sie eine Pause brauchen. Und ein Getränk.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("An Elder God. Eldan and his few followers are hermits and have no time to enjoy life. That is, what's left of them. His former followers tend to follow Elara now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Einer der alten Götter. Eldan und seine paar Anhänger sind Einsiedler und haben keine Zeit ihr Leben zu genießen. Also, was davon noch übrig ist. Die meisten seiner früheren Anhänger haben sich nun Elara zugewandt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari is one of the elder goddesses. Back in her day she was followed by bards and other fun spirits. These days they attend Adron's parties.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari ist eine der alten Götter. Zu ihrer Zeit wurde sie von Barden und anderen lustigen Gesellen verehrt. Heutzutage findest du diese Leute auf Adrons Festen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("The god of crafting and trade. His followers do amazing craftsmanship. But if you ask me, that is all they do. If you're interested, you can find Irmorom's altar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Der Gott des Handelns und des Handwerks. Seine Anhänger stellen die erstaunlichsten Dinge her. Aber das war's auch schon. Wenn es dich interessiert, Irmoroms Tempel ist in Galmair zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("The stringent followers of Malachín. They are all battle this and battle that. Though when they cut loose and have a cup or five, boy, do they party! If you want to find them, they are near Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Die strengen Anhänger Malachíns kämpfen für dies und für das. Aber wenn sie mal losgelassen werden, Mann, was können die feiern! Wenn du sie besuchen willst, ihr Heiligtum findet sich in der Nähe Cadomyrs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me goes into a stunned silence. He attempts to stutter a response to no avail.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me verstummt erst. Dann versucht er erfolglos eine Antwort zu stottern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Nargùn is the god of chaos. His followers are a real treat at parties. You never know what will happen next. The entertainment never ends! Those who go looking for him can find him in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Nargùn ist der Gott des Chaos. Seine Anhänger sind ein echter Gewinn für jede Party. Du weißt nie was als nächstes passiert, die Unterhaltung endet nie. Wenn du in Galmair suchst, hast du vielleicht Glück und findest ihren Tempel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra and her followers are all sweethearts. If not for them, we wouldn't have bountiful harvests of grapes for wine. We should all go visit her altar in Yewdale to thank her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra und ihre Anhänger sind Schätzchen. Wären sie nicht, hätten wir nichts was auf den Tisch käme und auch keine Trauben für Wein. Lasst uns zu ihrem Altar in Eibenthal pilgern um ihr zu danken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("The followers of Ronagan like to take advantage of the followers of Adron. Just as we are well into our cups and having a good time, they take our purse! I am just glad his altar is far away in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Anhänger Ronagans nutzen gerne mal Anhänger Adrons aus. Während wir zu tief in die Gläser schauen und Spaß haben, nehmen sie unsere Geldbeutel. Zum Glück ist deren Altar weit weg in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Such wonderful people Sirani's followers are. They know how to live life to the fullest. She is all about enjoying the pleasures in life. Her altar is found in a luscious oasis near Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Siranis Anhänger sind wirklich tolle Leute. Sie verstehen das Leben in vollen Zügen zu genießen. Bei ihr geht es wirklich nur um die Freude am Leben. Ihr Altar befindet sich in einer üppigen Oase bei Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Tanora is the Elder Goddess of water. She is still around, somewhere. Wanders the land from time to time. Her followers are all her lizardfolk. They aren't any fun to drink with.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Tanora ist die Alte Göttin des Wassers. Sie soll irgendwo noch unter uns weilen. Ihre Anhänger sind vor allem Echsenmenschen mit denen man nicht so viel Spaß haben kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("She is one of those Elder Gods. Goddess of earth. Ushara has a few old elves that follow her along with hermit druids who claim to have met her. For the most part her followers follow Oldra now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Die Göttin der Erde ist eine der alten Götter. Ushara hat einige alte Elfen, die ihr huldigen genauso wie ein paar vereinzelte Druiden, die behaupten sie mal getroffen zu haben. Aber die meisten ihrer früheren Anhänger haben sich jetzt Oldra zugewandt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("He's the god of friendship and loyalty. Zhambra's followers are uptight chivalric warriors. But I tell yah, if you make friends with one of them, you have a lifelong drinking buddy. His altar is near the palace in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Er ist der Gott der Freundschaft und des Vertrauens. Zhambras Anhänger sind verklemmte, galante Krieger. Aber ich kann dir sagen, wenn du mal einen zum Freund hast, er wird ein Leben lang mit dir trinken. Der Altar findet sich im Übrigen nahe des Palastes von Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(410, "=>", function(number) return (250); end))
talkEntry:addResponse("Adron is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(410, "=>", function(number) return (200); end))
talkEntry:addResponse("Adron is delighted with you and your strife for knowledge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(410, "=>", function(number) return (150); end))
talkEntry:addResponse("Adron is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(410, "=>", function(number) return (100); end))
talkEntry:addResponse("Adron is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(410, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 8))
talkEntry:addResponse("Adron is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(410, "=>", function(number) return (50); end))
talkEntry:addResponse("Adron is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(410, ">", function(number) return (-50); end))
talkEntry:addResponse("Adron is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(410, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 8))
talkEntry:addResponse("Adron is displeased with you, if you go on this way you will not be able to call yourself devoted to Elara anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(410, ">", function(number) return (-100); end))
talkEntry:addResponse("Adron is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(410, ">", function(number) return (-150); end))
talkEntry:addResponse("Adron is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(410, ">", function(number) return (-200); end))
talkEntry:addResponse("Adron is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(410, ">", function(number) return (-250); end))
talkEntry:addResponse("Adron is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addResponse("Adron is wrathful about you. Very unwise of you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(410, "=>", function(number) return (250); end))
talkEntry:addResponse("Adron ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(410, "=>", function(number) return (200); end))
talkEntry:addResponse("Adron ist außerordentlich zufrieden mit dir und damit, wie du dein Leben geniest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(410, "=>", function(number) return (150); end))
talkEntry:addResponse("Adron ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(410, "=>", function(number) return (100); end))
talkEntry:addResponse("Adron ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(410, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 7))
talkEntry:addResponse("Adron ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(410, "=>", function(number) return (50); end))
talkEntry:addResponse("Adron ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(410, ">", function(number) return (-50); end))
talkEntry:addResponse("Adron ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(410, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 7))
talkEntry:addResponse("Adron ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Adrons zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(410, ">", function(number) return (-100); end))
talkEntry:addResponse("Adron ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(410, ">", function(number) return (-150); end))
talkEntry:addResponse("Adron ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(410, ">", function(number) return (-200); end))
talkEntry:addResponse("Adron ist wütend auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(410, ">", function(number) return (-250); end))
talkEntry:addResponse("Adron ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addResponse("Adron ist rasend vor Zorn auf dich. Schau lieber aufmerksam in dein Glas bei deinem nächsten Tavernenbesuch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sacrifice")
talkEntry:addResponse("Hey, do you seriously ask what to sacrifice to the god of wine?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("opfer")
talkEntry:addTrigger("opfergabe")
talkEntry:addResponse("Fragst du ehrlich was du dem Gott des Weins opfern kannst?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("I've spoken to him once or twice, but he isn't much of a drinker.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ich hab ein paar mal mit ihm gesprochen. Nur trinken tut er nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I've spoken to him once or twice, but he isn't much of a drinker.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ich hab ein paar mal mit ihm gesprochen. Nur trinken tut er nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Here! What better place to drink?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Hier! Gibt es einen besseren Ort zum Trinken?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Never met him. He doesn't get out and drink much.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ich hab ihn noch nicht getroffen. Er geht selten raus um etwas zu trinken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("There tend to be a lot of dwarves there. If you aren't careful they will drink you under the table.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Da laufen eine Menge Zwerge rum. Wenn du nicht aufpasst, trinken die dich unter den Tisch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("She seems nice enough, but I wouldn't know. I've never drank with her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Sie scheint nett zu sein, aber woher soll ich das wissen. Ich habe nie mit ihr getrunken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("She seems nice enough, but I wouldn't know. I've never drank with her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Sie scheint nett zu sein, aber woher soll ich das wissen. Ich habe nie mit ihr getrunken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Lovely folks, they throw great parties.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ein lustiges Völkchen. Sie schmeißen tolle Feste.")
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
talkEntry:addTrigger("Dion")
talkEntry:addTrigger("Rhoditis")
talkEntry:addResponse("Adron guides my way. Sometimes, weaving.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dion")
talkEntry:addTrigger("Rhoditis")
talkEntry:addResponse("Adron weist mir den Weg. Manchmal verläuft er in Schlangenlinien.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me füllt ein Glas mit Wein und trinkt dann aus der Flasche.", "#me fills a glass with wine, then drinks from the bottle.")
talkingNPC:addCycleText("#me nimmt einen tiefen Schluck aus der Weinflasche.", "#me takes a long drink from a bottle of wine.")
talkingNPC:addCycleText("#me seufzt: 'Mein Glas ist schon wieder leer. Ein Glück, dass noch mehr Wein da ist.'", "#me sighs, 'My glass is empty. Good thing there is more wine!'")
talkingNPC:addCycleText("#me singt ein schiefes Trinklied.", "#me sings a drinking song offkey.")
talkingNPC:addCycleText("#me untersucht sorgfältig ein Glas.", "#me carefully examines a glass.")
talkingNPC:addCycleText("Gute Leute trinken guten Wein!", "Good people drink good wine!")
talkingNPC:addCycleText("Hicks!", "Hic!")
talkingNPC:addCycleText("Trink mit deinen Freunden. Trink mit deinen Feinden. Aber trink niemals alleine.", "Drink with your friends. Drink with your enemies. Drink, but never drink alone.")
talkingNPC:addCycleText("Warum ist mein Wein leer?", "Why is the wine gone?")
talkingNPC:addCycleText("Wein macht aus Feinden Freunde, aus Lügnern Wahrsager und aus Magiern interessante Leute.", "Wine turns enemies into friends, liars into soothsayers, and makes mages actually interesting.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(6)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Dion Rhoditis der Adronpriester.", "This NPC is Dion Rhoditis the Adron Priest.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 180)
mainNPC:setEquipment(11, 195)
mainNPC:setEquipment(5, 40)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 1447)
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
