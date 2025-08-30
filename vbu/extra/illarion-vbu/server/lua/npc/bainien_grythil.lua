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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Bainien Grythil, the Priestess of Cherga. Keywords: Hello, god, favour, sacrifice."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Bainien Grythil, eine Priesterin der Cherga. Schlüsselwörter: Hallo, Gott, Gunst, Opfergabe."))
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
talkEntry:addResponse("Be greeted, child.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Be greeted, child.")
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
talkEntry:addResponse("Sei gegrüßt mein Kind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Peace be with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Peace be with you.")
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
talkEntry:addResponse("Friede mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Well enough for one on this side of the soil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Danke, gut genug für jemanden auf dieser Seite des Lebens.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Bainien Grythil. Caretaker of the dead and priestess of Cherga. I tend to her altar here on Pauldron Isle and see to it that the dead in this graveyard remain undisturbed.")
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
talkEntry:addResponse("Ich bin Bainien Grythil, Bewacherin der Toten und Priesterin von Cherga.Ich kümmere mich um ihren Altar hier auf der Schulterplatte und gebe Acht, dass die Totenruhe eingehalten wird.")
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
talkEntry:addResponse("I have no need for material goods.")
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
talkEntry:addResponse("Ich habe keinen Bedarf an materiellen Gütern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("As a priestess to Cherga, I am a caretaker for the dead. After death I clean their bodies and wrap them in a shroud. I pray for a peaceful rest of their spirit. And I see that their bodies here remain undisturbed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("As a priestess to Cherga, I am a caretaker for the dead. After death I clean their bodies and wrap them in a shroud. I pray for a peaceful rest of their spirit. And I see that their bodies here remain undisturbed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Als Priesterin von Cherga gilt meine Sorge den Toten. Ich wasche sie und ziehe ihnen das Leichenhemd über. Ich bete für eine friedliche Ruhe ihrer Seelen. Und ich pass auf, dass ihre Körper hier ungestört bleiben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("God")
talkEntry:addResponse("There are many gods who guide us through life. Cherga is the only one who guides us through death.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addResponse("Es gibt viele Götter, die uns im Leben begleiten, nur Cherga begleitet uns im Tode.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Religion")
talkEntry:addResponse("There are eleven younger gods and five elder gods. The elder gods have long since left the mortal realm and have left its well being to the younger.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Religion")
talkEntry:addResponse("Es gibt elf junge Götter und fünf alte. Die Alten haben diese Welt verlassen und ihr Schicksal den Jungen überlassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron is the god of wine and festivals. His followers enjoy life to the fullest while they still can. His altar can be found in the tavern in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron ist der Gott des Weins und der Feste. Seine Jünger genießen das Leben solange sie noch können. Sein Altar findest du in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("He is the elder god of fire. He no longer cares for the realm of mortals. Bragon's warriors now follow Malachin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Er ist der Gott des Feuers, einer der Alten. Ihn kümmert das Schicksal der Sterblichen nicht mehr. Bragons Krieger folgen nun Malachin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Cherga is the goddess of spirits and the underworld. It is she who guides all spirits to their place in the afterlife. And it is she who decides when your work is left undone and guides your spirit back.")
talkEntry:addResponse("Those who have served Cherga well in life, will be blessed by her in the afterlife. Her sweet kiss will transform them into a lich to continue to faithfully serve her until the end of time.")
talkEntry:addResponse("True followers of Cherga are rare. Some seek her knowledge for powers of necromancy or for their own gain. Others, like myself, wish only to help the dead, and the undead, be at peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Cherga ist die Göttin der Geister und der Unterwelt. Sie geleitet die Geister zu ihrem Platz in der Nachwelt. Sie ist es die entscheidet wenn dein Werk noch nicht verrichtet ist und dich zurückschickt.")
talkEntry:addResponse("Die, die ihr zu Lebzeiten huldigten werden für ihre Treue im Jenseits belohnt. Ihr süßer Kuss wird diese in einen Lich verwandeln, so dass sie ihr weiterhin treu dienen können.")
talkEntry:addResponse("Wahre Anhänger Chergas sind selten. Manch Totenbeschwörer betet nur aus Eigennutz zu ihr. Andere jedoch helfen wie ich den Toten und Untoten in Frieden zu ruhen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("She is the goddess of knowledge. Her followers are avid learners. I have had to stop some from disturbing the dead for use in their irrational experiments. Elara's altar is in the library in Runewick. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara:Sie ist die Göttin der Weisheit.Ihre Anhänger sind fleißige Lerner. So manchen musste ich zurückhalten, der die Toten mit seinen unvernünftigen Experimenten störte. Ihr Altar findet sich in Runewick.")
talkEntry:addResponse("Elara:Sie ist die Göttin der Weisheit.Ihre Anhänger sind fleißige Lerner. So manchen musste ich zurückhalten, der die Toten mit seinen unvernünftigen Experimenten störte. Ihr Altar findet sich in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("He is the elder god of the spirit. He cares not for the mortal realm and prefers to spend time studying in a far off secluded place. Eldan's followers now follow Elara.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Er ist der alte Gott des Geistes. Die Geschicke der Sterblichen kümmern ihn nicht. Er zieht es vor, an einem weit entfernten Ort zu studieren. Eldan Anhänger folgen nun Elara.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari is the elder goddess of air. Her chaotic winds cause damage and death. She no longer walks the mortal realm and her followers have all converted to following Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari ist die alte Göttin der Luft. Ihre chaotischen Winde bringen Tod und Zerstörung. Sie wandelt nicht mehr unter den Sterblichen und ihre Anhänger konvertierten zu Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom is the god of trade and craftsmanship. His followers enjoy the beauty of fine work and are materialistic in life. You can find his altar in the mountains of Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom ist der Gott des Handels und des Handwerks. Seine Anhänger erfreuen sich an der Schönheit ihrer eigenen Werke und sind materialistisch im Leben. Du findest seinen Altar in den Bergen Galmairs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("He is the god of battle and the hunt. His followers are dead silent hunters and deadly fighters.  Malachins altar can be found South of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Er ist der Gott der Jagd und der Schlachten. Seine Anhänger sind schweigsame Jäger oder tödliche Krieger. Malachins Altar findest du südlich von Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Do not speak his name too loud, you might attract his attention. Moshran is the god of blood and bones. His followers do disgraceful things. Clerics of Cherga have had to chase his follower from a graveyard near the Hemp Necktie quite often.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Sprich seinen Namen nicht zu laut, er könnte dich hören. Moshran ist der Gott des Blutes und der Gebeine. Seine Anhänger tun schändliche Dinge. Geistliche Chergas mussten seine Anhänger immer wieder von einem Friedhof beim Gasthaus zur Hanfschlinge verjagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Ah, Nargun. He is the chaotic god of fortune. His followers very often gamble away their coins and their lives. Everyday is an adventure to them. His altar is deep within Galmair's underground.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Ahh, Nargun, der chaotische Gott des Glücks. Seine Anhänger verspielen oft Geld und Leben. Jeder Tag ist ein Abenteuer für sie. Sein Altar ist tief im Untergrund Galmairs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Goddess of fertility and the harvest. Oldra and her followers deal with the living. Healing and feeding both the body and the soul. Her altar is in the halfling village of Yewdale, near Runewick")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Die Göttin der Fruchtbarkeit und des Lebens. Oldra und ihre Anhänger kümmern sich um die Lebenden. Heilen und Speisen, sowohl die Seele als auch den Körper. Ihren Altar findet man im Halblingsdorf Eibental nahe Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Thieves and shadows.. Ronagan and his followers live in the shadows and have no qualms stealing from either the living or the dead. If you truly wish to find his altar, search the Galmair underground.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Diebe und Schatten. Ronagan und seine Jünger leben im Schatten und haben keine Skrupel die Toten und die Lebenden zu bestehlen. Wenn du wirklich seinen Altar finden willst such im Untergrund von Galmair. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("She is the goddess of love and pleasure. Sirani's followers choose to enjoy what pleasures they can get out of life. They have also saved many from visiting Cherga too soon. Her altar is in an oasis near Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Sie ist die Göttin der Liebe und der Freude. Siranis Anhänger haben beschlossen mitzunehmen, was immer an Vergnügen das Leben bietet. Und sie verhindern, dass viele zu früh vor Cherga treten. Ihr Tempel ist in einer Oase nahe Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("She is the elder goddess of water and mother of lizardfolk. Tanora is the only elder god who walks the realm of mortals. It is believed that she returns because she has lost something and can not find it. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Die ist die ältere Göttin des Wassers und die Mutter der Echsenmenschen. Tanora ist die einzige der Alten, die sich manchmal unter den Sterblichen mischt. Man sagt sie sei zurückgekehrt weil sie etwas verloren hat, was sie nicht wiederfinden kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("She is the elder goddess of earth. Usharas few followers are old, dying druids, though she no longer walks the realm of mortals. Her followers follow Oldra now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Sie ist die ältere Göttin der Erde. Seit sie sich nicht mehr den Sterblichen zeigt sind Usharas paar Anhänger alles alte sterbende Druiden. Ihre Jünger folgen jetzt Oldra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("God of loyalty and friendship. Zhambra's followers enjoy the camaraderie of others and seek to protect each other from death in battle. His altar is near the palace in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Der Gott der Freundschaft und des Vertrauens. Zhambras Anhänger erfreuen sich an der Kameradschaft und schützen sich so gegenseitig in der Schlacht. Sein Altar ist nahe dem Palast in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(412, "=>", function(number) return (250); end))
talkEntry:addResponse("Cherga is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(412, "=>", function(number) return (200); end))
talkEntry:addResponse("Cherga is delighted with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(412, "=>", function(number) return (150); end))
talkEntry:addResponse("Cherga is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(412, "=>", function(number) return (100); end))
talkEntry:addResponse("Cherga is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(412, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 10))
talkEntry:addResponse("Cherga is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(412, "=>", function(number) return (50); end))
talkEntry:addResponse("Cherga is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(412, ">", function(number) return (-50); end))
talkEntry:addResponse("Cherga is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(412, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 10))
talkEntry:addResponse("Cherga is displeased with you, if you go on this way you will not be able to call yourself devoted to Elara anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(412, ">", function(number) return (-100); end))
talkEntry:addResponse("Cherga is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(412, ">", function(number) return (-150); end))
talkEntry:addResponse("Cherga is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(412, ">", function(number) return (-200); end))
talkEntry:addResponse("Cherga is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(412, ">", function(number) return (-250); end))
talkEntry:addResponse("Cherga is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addResponse("Cherga is wrathful about you. Don't forget that you will meet Her one day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(412, "=>", function(number) return (250); end))
talkEntry:addResponse("Cherga ist überschwänglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(412, "=>", function(number) return (200); end))
talkEntry:addResponse("Cherga ist außerordentlich zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(412, "=>", function(number) return (150); end))
talkEntry:addResponse("Cherga ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(412, "=>", function(number) return (100); end))
talkEntry:addResponse("Cherga ist glücklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(412, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 10))
talkEntry:addResponse("Cherga ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(412, "=>", function(number) return (50); end))
talkEntry:addResponse("Cherga ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(412, ">", function(number) return (-50); end))
talkEntry:addResponse("Cherga ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(412, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 10))
talkEntry:addResponse("Cherga is ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anhänger Chergas zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(412, ">", function(number) return (-100); end))
talkEntry:addResponse("Cherga ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(412, ">", function(number) return (-150); end))
talkEntry:addResponse("Cherga ist enttäuscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(412, ">", function(number) return (-200); end))
talkEntry:addResponse("Cherga ist wütend auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(412, ">", function(number) return (-250); end))
talkEntry:addResponse("Cherga ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addResponse("Cherga ist rasend vor Zorn auf dich. Vergiss nicht, dass du sie eines Tages treffen wirst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sacrifice")
talkEntry:addResponse("Light can help to guide the souls of the dead to the realms of the gods.")
talkEntry:addResponse("Graveyards always need more shovels and gravestones.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("opfer")
talkEntry:addTrigger("opfergabe")
talkEntry:addResponse("Licht kann helfen die Seelen der Toten in die Reiche der Götter zu geleiten.")
talkEntry:addResponse("Friedhöfe brauchen immer neue Schaufeln und Grabsteine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("I do not concern myself with the matters of the living.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I do not concern myself with the matters of the living.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ich kümmere mich nicht um die Angelegenheiten der Lebenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("I do not concern myself with the matters of the living.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ich kümmere mich nicht um die Angelegenheiten der Lebenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("I do not concern myself with the matters of the living.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ich kümmere mich nicht um die Angelegenheiten der Lebenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("I do not concern myself with the matters of the living.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ich kümmere mich nicht um die Angelegenheiten der Lebenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("I do not concern myself with the matters of the living.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I do not concern myself with the matters of the living.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ich kümmere mich nicht um die Angelegenheiten der Lebenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I do not concern myself with the matters of the living.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ich kümmere mich nicht um die Angelegenheiten der Lebenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Alles muss ausgeglichen sein. Leben gibt es nur mit dem Tod. Cherga erinnert uns daran.", "In all things there must be balance. With life there must be death. Cherga reminds us of this balance.")
talkingNPC:addCycleText("Lebe nicht indem du auf den Tod wartest. Der Tod kommt zu jedem wenn es an der Zeit ist.Ehre die Götter und erfülle ihre Aufgaben solange du im Reich der Lebenden weilst.", "Do not live a life waiting for death, for death comes to all of us in time. Honour the gods and do their work while upon the realm of mortal men. ")
talkingNPC:addCycleText("Cherga schick die zurück, deren Zeit noch nicht gekommen ist. Ich kümmere mich um die, deren Zeit gekommen ist.", "Cherga sends back those whose time it is not. I tend to those whose time it is.")
talkingNPC:addCycleText("#me hüllt einen Körper in ein Leichentuch.", "#me wraps a body in a shroud.")
talkingNPC:addCycleText("#me wendet sich feierlich einer Leiche zu.", "#me solemnly tends to a corpse. ")
talkingNPC:addCycleText("#me zündet eine Kerze an.", "#me lights a candle.")
talkingNPC:addCycleText("#me rückt ihre schwarze Wollrobe zurecht.", "#me adjusts her black woolen robe.")
talkingNPC:addCycleText("#me näht den Saum  eines Leichentuch.", "#me hand sews the seams on a shroud.")
talkingNPC:addCycleText("#me spricht ein Wort zu den Toten.", "#me speaks a rite to the dead.")
talkingNPC:addCycleText("#me wäscht vorsichtig einen Toten.", "#me gently cleans a dead body.")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Bainien Grythil, eine Priesterin der Cherga.", "This NPC is Bainien Grythil, the Priestess of Cherga.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 805)
mainNPC:setEquipment(11, 2420)
mainNPC:setEquipment(5, 2619)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 1449)
mainNPC:setEquipment(9, 826)
mainNPC:setEquipment(10, 1056)
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
