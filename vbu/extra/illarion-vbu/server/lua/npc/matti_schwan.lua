local condition_language = require("npc.base.condition.language")
local condition_sex = require("npc.base.condition.sex")
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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Matti Schwan, the Priest of Sirani. Keywords: Hello, god, favour, sacrifice."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Matti Schwan, ein Priester der Sirani. Schlüsselwörter: Hallo, Gott, Gunst, Opfergabe."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addTrigger("Good night")
talkEntry:addResponse("#me grins, 'Hello, dearie.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_sex(0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me grins, 'Hello, dearie.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_sex(0))
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
talkEntry:addResponse("#me grinst: 'Hallo Liebling!'")
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
talkEntry:addResponse("Hello! My, do you look absolutely gorgeous today.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hello! My, do you look absolutely gorgeous today.")
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
talkEntry:addResponse("Hallo, du siehst heute umwerfend aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Take care, sweetie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Take care, sweetie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Pass auf dich auf Süßer.")
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
talkEntry:addResponse("Pass auf dich auf Süße.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Fabulous. Absolutely fabulous. Thank you for asking.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Fabelhaft. Absolut fabelhaft. Danke der Nachfrage.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Matti Schwan. Brother of Sirani.")
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
talkEntry:addResponse("Ich bin Matti Schwan, ein Bruder im Namen Siranis.")
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
talkEntry:addResponse("Oh. No honey, if you are looking to buy or sell something you need to head back to Cadomyr.")
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
talkEntry:addResponse("Oh nein Schatz. Wenn du was kaufen oder verkaufen willst, musst du zurück nach Cadomyr gehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Well. It isn't quite what you think. First off, there is sand everywhere out here. I am constantly having to keep the altar clean. And then I am always answering women's questions on fashion. Their men know nothing!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Well. It isn't quite what you think. First off, there is sand everywhere out here. I am constantly having to keep the altar clean. And then I am always answering women's questions on fashion. Their men know nothing!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ja, ja, es ist nicht das, was du denkst. Zuallererst der Sand hier überall. Ich putze den ganzen Tag den Altar. Und dann muss ich ständig die Fragen der Frauen bezüglich Mode beantworten. Ihre Männer verstehen davon gar nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("God")
talkEntry:addResponse("Well, there are many gods, dearie. Perhaps you should ask me about a specific one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addResponse("Nun, es gibt viele Götter, Liebling. Vielleicht solltest du mich nach einem bestimmten fragen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Religion")
talkEntry:addResponse("I am a follower of Sirani. I prefer to take pleasure in life and help ease some of the pain and suffering in this world.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Religion")
talkEntry:addResponse("Ich bin ein Mann Siranis.Ich ziehe es vor, Freude am Leben zu haben und versuche einige der Schmerzen und Leiden in dieser Welt zu lindern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("By. The. Goddess. Adron's followers put on the best parties. God of wine and festivals. His altar is in the tavern in Runewick. Try the wine while you are there dear. I hear it is to die for!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Bei der Göttin. Adrons Jünger geben die besten Feste. Der Gott des Weines und der Feste. Sein Altar steht in der Taverne Runewicks. Koste den Wein dort, wenn du vorbeikommst, er ist göttlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("He's a fiery one, that Bragon. His warriors are quite fit and train often. But this elder god has turned a blind eye and many of his former followers follow Malachin now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Ein feuriger Mann der Bragon. Seine Krieger sind gut in Form und trainieren oft. Doch als einer der alten Götter schaut er nicht mehr auf uns und viele seiner Anhänger haben sich Malachin zugewandt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Her followers are a drag, but what can you expect from people who spend their time around dead people. Anyway, the goddess Cherga tends to the spirits in the afterlife. Her altar is in a graveyard on Pauldron Isle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Ihre Anhänger sind Langweiler. Aber was kann man schon von Leuten erwarten, die den ganzen Tag mit Toten zu tun haben.Jedenfalls geleitet Cherga die Seelen ins Jenseits. Ihr Altar ist auf der Schulterplatten Insel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("All study and no play makes Elara's followers duller than a box a rocks. Though I suppose if obtaining knowledge  is what makes her scholars and mages happy, who am I to judge. Her altar is in Runewicks library.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Öde wie ein Haufen Steine sind Elaras Anhänger. Immer nur lernen, keine Vergnügungen. Aber wenn die Gelehrten und Magier Spaß daran haben zu lernen, wer wäre ich das zu verurteilen' Ihr Altar ist in Runewicks Bibliothek.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("He is one of the elder gods. Eldan and his followers are quite dull. Though you are most likely never going to see one of them as they tend to live a spiritual hermit existence. Those that remain follow Elara now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Er ist einer der alten Götter. Eldan und seine Anhänger sind ziemlich langweilig. Wobei du vermutlich nie einen von ihnen sehen wirst, denn sie fristen ihre Existenz als Einsiedler. Der Rest folgt nun Elara.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("The elder goddess of air. Her name is music to my ears. Findari was once followed by predominantly bards, but since she flew away many of them now follow Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Die alte Göttin der Luft. Ihr Name ist Musik in meinen Ohren. Findari wurde einstmals vor allem von Barden angebetet doch seit sie sich zurückzog, haben sich die meisten davon Adron zugewandt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("The followers of Irmorom are perhaps the finest crafters I have ever seen. And believe me, they strike a hard bargain for their wares. Head to the marketplace in Galamir, his altar is not far from there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Die Anhänger Irmoroms sind wohl die geschicktesten Handwerker, die ich je sah. Glaub mir, sie verlangen hohe Preise für ihre Waren. Geh zum Markt von Galmair, nicht weit von dort wirst du seinen Altar finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Talk about fine in furs. Malachin is the god of battle and hunting, and all his followers do is prepare for both.  Head back towards Cadomyr, his altar is above the mine if you don't believe me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Reden wir über wertvolle Pelze. Malachin ist der Gott der Jagd und der Schlachten und seine Anhänger sind stets auf beides vorbereitet. Wenn du mir nicht glaubst, geh zurück Richtung Cadomyr, sein Altar ist über der Mine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me places a hand on his chest and looks at you absolutely stunned.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me legt eine Hand auf seine Brust und schaut dich reglos an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Ack. You could say all things are fair in love and war, but Nargun does love his chaos. I swear, his followers are either insane, or have gambled away their money. Thank Sirani his altar is far away in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Man könnte ja sagen in Liebe und Krieg geht es immer gerecht zu aber Nargun liebt sein Chaos. Ich schwöre, seine Anhänger sind entweder wahnsinnig oder haben ihr Geld verspielt. Sirani sei Dank, sein Altar ist weit weg, in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("The bountiful feasts in Oldra's honour are absolutely to die for. She is also followed by mothers to be and healers for her grandmotherly wisdom. But if you just want some good food, go find it in Yewdale, along with her altar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Die großzügigen Feste zu Oldras Ehren sind wunderschön. Sie wird von werdenden Müttern und Heilern ob ihrer großmütterlichen Weisheit angebetet. Und wenn es dir nur nach einem guten Essen gelüstet, in Eibenthal an ihrem Altar findest du bestimmt etwas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan is the god of thieves and shadows. Not all who pray to him are thieves or assassins. Some are simply in need of a loaf of bread to feed their family or are forgotten orphans.. His altar is well hidden in the underground of Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan ist der Gott der Diebe und Schatten. Doch nicht nur Diebe und Mörder beten ihn an. So manche brauchen nur etwas Brot um ihre hungrigen Familien zu ernähren oder sind vergessene Waisen. Sein Altar findet sich, gut versteckt, unter Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Sirani is the goddess of love and pleasure. Everyone, and I mean everyone, prays to her for matchmaking. But everyone forgets that she is also a goddess of hospitality, peace, and companionship.")
talkEntry:addResponse("There is so much pain and suffering in this world. It is the responsibility of the followers of Sirani to bring comfort and balance. We abhor war and encourage peace and healing and all that is good in life.")
talkEntry:addResponse("When a follower of Sirani dies, they are kissed by her. The good then find themselves in a beautiful paradise. If they have wronged others, but are regretful, are forgiven and let in. Those who are wicked with no regrets, are sent back to be reborn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Sirani ist die Göttin der Liebe und der Freude. Jeder, und damit meine ich wirklich jeder, betet zu ihr wenn es um eine Eheanbahnung geht. Und doch wird gerne vergessen, dass sie auch eine Göttin der Gastfreundschaft, des Friedens und der Kameradschaft ist.")
talkEntry:addResponse("Es gibt so viel Schmerz und Leid in dieser Welt. Es liegt in der Verantwortung der Anhänger Siranis, Trost und Gleichgewicht zu bringen. Wir verabscheuen Krieg und fördern Frieden und Gesundheit sowie alles Gute im Leben.")
talkEntry:addResponse("Wenn ein Anhänger Siranis stirbt, blickt sie in dessen Herz und küsst ihn dann. Die Guten kommen in ein gesegnetes Paradies. Auch wer bereut wird eingelassen. Diejenigen, die böse sind und nichts bereuen, werden neu geboren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Tanora, the elder goddess of water, is the only elder who still wanders these lands. Though she is heavily worshiped by her lizardfolk, I doubt that is why she stayed. It is rumored that she searches for something lost. Or is it someone'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Tanora, die alte Göttin des Wassers ist die Einzige der Alten, die noch in unserer Welt weilen. Auch wenn sie inbrünstig von ihren Echsenmenschen verehrt wird glaube ich doch den Gerüchten, dass sie etwas sucht. Oder vielleicht jemanden'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("The rather down to earth elder goddess, Ushara, has few remaining followers since she left. They all tend to be older than dire elves and druids. Everyone else follows Oldra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Die der Erde zugewandte alte Gottheit. Ushara hat nur noch wenige Anhänger seit sie unsere Welt verlassen hat. Ein paar seltsame Elfen und alte Druiden sind ihr geblieben. Alle Anderen beten jetzt zu Oldra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("The followers of Zhambra are perhaps the most loyal people I have ever met. They also look quite fine in armor if you ask me. If you're curious, I would go take a look around his altar near the palace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra:Die Anhänger Zhambras sind die treuesten Leute, die man finden kann. In ihren Rüstungen sehen sie auch gut aus. Wenn du neugierig bist, schau nur in der Nähe des Palastes. Dort ist sein Altar.")
talkEntry:addResponse("Zhambra:Die Anhänger Zhambras sind die treuesten Leute, die man finden kann. In ihren Rüstungen sehen sie auch gut aus. Wenn du neugierig bist, schau nur in der Nähe des Palastes. Dort ist sein Altar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(415, "=>", function(number) return (250); end))
talkEntry:addResponse("Sirani is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(415, "=>", function(number) return (200); end))
talkEntry:addResponse("Sirani is delighted with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(415, "=>", function(number) return (150); end))
talkEntry:addResponse("Sirani is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(415, "=>", function(number) return (100); end))
talkEntry:addResponse("Sirani is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(415, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 13))
talkEntry:addResponse("Sirani is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(415, "=>", function(number) return (50); end))
talkEntry:addResponse("Sirani is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(415, ">", function(number) return (-50); end))
talkEntry:addResponse("Sirani is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(415, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 13))
talkEntry:addResponse("Sirani is displeased with you, if you go on this way you will not be able to call yourself devoted to Sirani anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(415, ">", function(number) return (-100); end))
talkEntry:addResponse("Sirani is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(415, ">", function(number) return (-150); end))
talkEntry:addResponse("Sirani is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(415, ">", function(number) return (-200); end))
talkEntry:addResponse("Sirani is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(415, ">", function(number) return (-250); end))
talkEntry:addResponse("Sirani is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addResponse("Sirani is wrathful about you. Can't you feel it in your heart?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(415, "=>", function(number) return (250); end))
talkEntry:addResponse("Sirani ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(415, "=>", function(number) return (200); end))
talkEntry:addResponse("Sirani ist außerordentlich zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(415, "=>", function(number) return (150); end))
talkEntry:addResponse("Sirani ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(415, "=>", function(number) return (100); end))
talkEntry:addResponse("Sirani ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(415, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 13))
talkEntry:addResponse("Sirani ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(415, "=>", function(number) return (50); end))
talkEntry:addResponse("Sirani ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(415, ">", function(number) return (-50); end))
talkEntry:addResponse("Sirani ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(415, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 13))
talkEntry:addResponse("Sirani ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Siranis zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(415, ">", function(number) return (-100); end))
talkEntry:addResponse("Sirani ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(415, ">", function(number) return (-150); end))
talkEntry:addResponse("Sirani ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(415, ">", function(number) return (-200); end))
talkEntry:addResponse("Sirani ist wütend auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(415, ">", function(number) return (-250); end))
talkEntry:addResponse("Sirani ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addResponse("Sirani ist rasend vor Zorn auf dich. Kannst du es nicht in deinem Herz spüren?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sacrifice")
talkEntry:addResponse("Try jewelry and beautiful clothes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("opfer")
talkEntry:addTrigger("opfergabe")
talkEntry:addResponse("Versuch es mit Schmuck und schöner Kleidung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("He strikes me to be quite the bore. Always absorbed in his studies on his little private island. But I suppose if that is how he gets his kicks, the more power to him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("He strikes me to be quite the bore. Always absorbed in his studies on his little private island. But I suppose if that is how he gets his kicks, the more power to him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Auf mich wirkt er wie ein Langweiler. Immer auf seiner winzigen Insel in seine Studien vertieft. Aber ich glaube es gefällt ihm und steigert auch seine Macht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("A nice ocean front town. But with the docks so close, a good blast of wind causes the whole town to smell like fish.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ein hübsches Küstenstädtchen. Doch da der Hafen so nah liegt, riecht die ganze Stadt beim leisesten Wind nach Fisch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("That dwarf is really not much of a looker. I think he has a greater love of coin than anything else.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Also gutaussehend kann man den Zwerg nicht nennen. Ich glaub seine ganze Liebe gilt dem Geld.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("It is a quaint, but dirty town in the mountains.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Das ist eine malerische, aber dreckige Stadt in den Bergen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Darling, she is the most beautiful person in all of Cadomyr. And her clothing. I must find out who her tailor is.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Darling, she is the most beautiful person in all of Cadomyr. And her clothing. I must find out who her tailor is.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Sie ist die Schönste in ganz Cadomyr. Und ihre Kleider! Ich muss herausbekommen, wer ihr Schneider ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("An oasis in the desert. Well, besides here of course. We do like our fineries. Textiles, jewelry, even fine glassware. And darling, if you have not yet seen the palace, you should go look. It is gorgeous!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Eine Oase in der Wüste, nicht ganz so schön wie hier. Wir lieben die Pracht. Textilien, Juwelen und wertvolle Glaswaren. Und wenn du den Palast noch nicht gesehen hast, den musst du dir unbedingt anschauen, er ist wundervoll!")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Du siehst fantastisch aus. Sind das neue Sachen'", "You look marvelous! Is that a new outfit'")
talkingNPC:addCycleText("Freundlichkeit ist überzeugender als Gewalt.", "Kindness is more compelling than violence.")
talkingNPC:addCycleText("Liebe ist das Glück eines anderen vor dein eigenes zu stellen.", "Love is putting someone else's happiness before your own.")
talkingNPC:addCycleText("Meine Freude anderen zu helfen ermüdet nie.", "I will never tire from the pleasure of helping others.")
talkingNPC:addCycleText("Du siehst erschöpft aus, Liebes. Komm setz dich und trink etwas.", "My dear, you look absolutely exhausted. Sit. Drink.")
talkingNPC:addCycleText("Komm, es gibt keine Fremden in dieser Oase, nur Freunde, die du noch nicht kennengelernt hast.", "Come. Come. There are no strangers around the oasis. Only friends you have not yet met.")
talkingNPC:addCycleText("#me steckt sich eine Firnisblüte ins Haar.", "#me places a firnis blossom in his hair.")
talkingNPC:addCycleText("#me summt vor sich hin während er Leinen in Verbände reißt.", "#me hums to himself as he tears linen into bandages.")
talkingNPC:addCycleText("#me füllt seine Flasche auf mit Wasser aus der Oase.", "#me fills bottles of water from the oasis.")
talkingNPC:addCycleText("#me schält eine Mandarine.", "#me peels the skin from a tangerine.")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Matti Schwan, ein Priester der Sirani.", "This NPC is Matti Schwan, the Priest of Sirani.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 1415)
mainNPC:setEquipment(3, 0)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 827)
mainNPC:setEquipment(10, 0)
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
