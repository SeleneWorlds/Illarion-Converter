local condition_state = require("npc.base.condition.state")
local condition_language = require("npc.base.condition.language")
local consequence_state = require("npc.base.consequence.state")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Grimlug the Shaman. Keywords: tell something, Olokwa, creation, gods."))
talkEntry:addConsequence(consequence_state("=", 0))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Grimlug der Schamane. Schlüsselwörter: erzähl was, Olokwa, Schöpfung, Götter."))
talkEntry:addConsequence(consequence_state("=", 0))
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
talkEntry:addResponse("Greebas! How may the shaman help you?")
talkEntry:addResponse("Hurr! What's your desire?")
talkEntry:addResponse("Hullo! Greets to you.")
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
talkEntry:addResponse("Greebas! Wie kann dir der Schamane helfigen?")
talkEntry:addResponse("Hurr! Was issigt dein Begehr?")
talkEntry:addResponse("Hullo! Sei gegrüßigt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greebas! How may the shaman help you?")
talkEntry:addResponse("Hurr! What's your desire?")
talkEntry:addResponse("Hullo! Greets to you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greebas! Wie kann dir der Schamane helfigen?")
talkEntry:addResponse("Hurr! Was issigt dein Begehr?")
talkEntry:addResponse("Hullo! Sei gegrüßigt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farebas!")
talkEntry:addResponse("Blessings to you.")
talkEntry:addResponse("Good spirits shall guide your path.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Farebas!")
talkEntry:addResponse("Segen über dich.")
talkEntry:addResponse("Gute Geister soll'n über deine Wege wachigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Farebas!")
talkEntry:addResponse("Blessings to you.")
talkEntry:addResponse("Good spirits shall guide your path.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Farebas!")
talkEntry:addResponse("Segen über dich.")
talkEntry:addResponse("Gute Geister soll'n über deine Wege wachigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("#me nods slowly. 'I'm finest. Yubba honoured the gods today?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("#me nickt langsam. 'Ich binne bestens. Hast du heute die Götter geehret?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Grimlug. Who be you?")
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
talkEntry:addResponse("Ich binne Grimlug. Wer seist du?")
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
talkEntry:addResponse("Ich bin kein Händler.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("The shaman has no quests for you, for now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Der Schamane hat keinige Aufgaben für dich - im Moment.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("The shaman has no quests for you, right now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Der Schamane hat keinige Aufgaben für dich - im Moment.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Gobaith! Hurr, the isle made the Gods angry, now it have to bear it's destiny. Tagtha.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Gobaith! Hurr, die Insel hat erzürnt die Götter. Nun es sein Schicksal tragen muß. Tagtha.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("The Gods warmly pleasured to welcome you here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Die Götter warmlicht geehrt, dich willkommen zu heißen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("stop")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("Hrm, Grimlug should tell another tale?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("stop")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("Hrm, Grimlug soll erzähligen etwas anderes?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 0))
talkEntry:addTrigger("continue")
talkEntry:addResponse("Which tale mes should tell?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 0))
talkEntry:addTrigger("weiter")
talkEntry:addResponse("Welche Geschichte Grimlug, soll erzählen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Creation")
talkEntry:addConsequence(consequence_inform("Say 'continue' to progress the tale or 'stop'."))
talkEntry:addConsequence(consequence_state("=", 1))
talkEntry:addResponse("A long time ago, the Gods became bored. Bragon, older brother of Moshran, went to him and had his arm chopped off. They collected the blood and formed the sun with it...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 1))
talkEntry:addTrigger("continue")
talkEntry:addConsequence(consequence_state("=", 2))
talkEntry:addResponse("...Dha arm dropped down, and become dha land. Wibh dha hand ob Bragon dhat beh left, Bragon took H'ref, the sun, and whipped it ober dha arm, G'rak, like it beh child...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 2))
talkEntry:addTrigger("continue")
talkEntry:addConsequence(consequence_state("=", 3))
talkEntry:addResponse("...Furthermore dha odha gods took parts of dham and creatad dha folk. Dheh dhrew dham on G'rak to see ib dheh beh worthy. The folk beh cold and lifeless like G'rak...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 3))
talkEntry:addTrigger("continue")
talkEntry:addConsequence(consequence_state("=", 4))
talkEntry:addResponse("...But dha Faddha hab some of Bragon's blood left, so he spilled all ob it ober G'rak. Dhen dha folk become warm in dhea bodehs. But some folk he forgot, so dheh beh still cold...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 4))
talkEntry:addTrigger("continue")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("...When dha Faddha slept his former female Cherga, dha iceh witch, she bewitched G'rak, whub Moshran alwahs took whib him. G'rak budges and strains and dha iceh witch received him so dha spirit infest dha folk.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schoepfung")
talkEntry:addTrigger("Schöpfung")
talkEntry:addConsequence(consequence_inform("Sage 'weiter' um die Erzählung fortzusetzen oder 'Stop'."))
talkEntry:addConsequence(consequence_state("=", 1))
talkEntry:addResponse("Vor lange Zeit, den Göttern die Zeit zu lang wurde. Bragon, der ältere Bruder Moshrans gegangen zu ihm und ließ sich seinen Arm abhacken. Sie sammelten das Blut und geformten die Sonne...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 1))
talkEntry:addTrigger("weiter")
talkEntry:addConsequence(consequence_state("=", 2))
talkEntry:addResponse("...Der Arm fiel runter und gewurde zum Land. Mit der verbleibenden Hand nahmigte Bragon sie Sonne, H'ref und schaukelt sie, als gewäse sie sein Kind, über seinen Arm, G'rak...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 2))
talkEntry:addTrigger("weiter")
talkEntry:addConsequence(consequence_state("=", 3))
talkEntry:addResponse("...Darauf hin gingigen die anderen Götter her und nahmen Dinge von ihren Körpern um die Völker zu schaffen. Sie wurfen sie auf G'rak um zu besehen ob sie auch würding sind da zu sein...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 3))
talkEntry:addTrigger("weiter")
talkEntry:addConsequence(consequence_state("=", 4))
talkEntry:addResponse("...Die Völker waren kalt und lebloßig. Wie G'rak. Aber Moshran behatte noch ein wenig von Bragons Blut übrig. Er verschüttete alles über G'rak. Darauf hinig wurde den Völkern wohlwarm in den Körpern...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 4))
talkEntry:addTrigger("weiter")
talkEntry:addResponse("He iss the Don. That means he's the mightiest dwarf arround. Grockthâ.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 5))
talkEntry:addTrigger("weiter")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("...G'rak regte sich und reckte sich. Und die eisige Hexe empfing ihn. So wurden die Völker vom Geist befallen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Grak")
talkEntry:addTrigger("Href")
talkEntry:addTrigger("G'rak")
talkEntry:addTrigger("H'ref")
talkEntry:addTrigger("G rak")
talkEntry:addTrigger("H ref")
talkEntry:addConsequence(consequence_inform("Say 'continue' to progress the tale or 'stop'."))
talkEntry:addConsequence(consequence_state("=", 7))
talkEntry:addResponse("G'rak beh beauteful and strong, and H'ref chooses him. She became dha female ob him. Dheh neba leave each other, and in dha night, when H'ref beh nub able to see her male...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 7))
talkEntry:addTrigger("continue")
talkEntry:addConsequence(consequence_state("=", 8))
talkEntry:addResponse("...she use shineh mirror ob ore to hub a eye at G'rak. Dhat beh dha Moon. It rains when H'ref and G'rak lie dogetha. Ofta you hear dham gasp and yell. Dhat beh dha dhunda...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 8))
talkEntry:addTrigger("continue")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("...In dhat way dheh beget spirits whub beh here, from now on. Dhat beh dha lightning bolts. And bolts beh dhea, whea dha power ob dha spirits beh bereh mighte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grak")
talkEntry:addTrigger("Href")
talkEntry:addTrigger("G'rak")
talkEntry:addTrigger("H'ref")
talkEntry:addTrigger("G rak")
talkEntry:addTrigger("H ref")
talkEntry:addConsequence(consequence_inform("Sage 'weiter' um die Erzählung fortzusetzen oder 'Stop'."))
talkEntry:addConsequence(consequence_state("=", 7))
talkEntry:addResponse("G'rak warig sehr schön und stark. Und H'ref aussuchte ihn. Sie wurdigte sein Weib. Nie gehen sie weg von einander. Und in der Nacht, wenn H'ref ihren Mann nicht ansehen kann...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 7))
talkEntry:addTrigger("weiter")
talkEntry:addConsequence(consequence_state("=", 8))
talkEntry:addResponse("...hielt sie einen glänzigen Spiegel aus Erz so das sie nicht von ihm lassen muss. Das ist der Mond. Es regnet wenn G'rak und H'ref zusammenliegen. Oft hört man sie keuchen und rufen...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 8))
talkEntry:addTrigger("weiter")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("...Das issigt der Donner. Und dabei zeugen sie Geister, die von nun an da sinnid. Das sind die Blitze. Und Blitze immer dort sind, wo die Kraft von Geistern besonders groß ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("spirit")
talkEntry:addConsequence(consequence_inform("Say 'continue' to progress the tale or 'stop'."))
talkEntry:addConsequence(consequence_state("=", 10))
talkEntry:addResponse("Nub all spirit be dha same. Most beh mixed. In Orc, dhea beh spirit of his ancestor. It is Moshran's spirit. It helps and protects broddhas and sistahs. It beh mighte, ib our skin honour to...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 10))
talkEntry:addTrigger("continue")
talkEntry:addConsequence(consequence_state("=", 11))
talkEntry:addResponse("...worship thea ancestors and dha Faddha. Ib it beh weak as Oomies, green skin earn resentment and bad luck. Furtha, in dha Orcs beh dha spirit ob Bragon. He makes dha bodeh warm...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 11))
talkEntry:addTrigger("continue")
talkEntry:addConsequence(consequence_state("=", 12))
talkEntry:addResponse("...Ib broddha or sistah dies, dha spirit beh brought ober dha eternal rift between G'rak and dha land ob dha ancestors. Dha Faddha's spirit beh leaved at G'rak, as long dha descendant praise dhea ancestors...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 12))
talkEntry:addTrigger("continue")
talkEntry:addConsequence(consequence_state("=", 13))
talkEntry:addResponse("...And in dhat waeh dha tie beh bindin. Beh broddha or sistha calling ancestors, dham beh able to hear and help. Broddhas and sisthas also hab dha Cherga's spirit. It beh dha voices yoo hear whispering in yoo...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 13))
talkEntry:addTrigger("continue")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("...Ib it beh berreh strong, dha broddha become shaman.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Geist")
talkEntry:addConsequence(consequence_inform("Sage 'weiter' um die Erzählung fortzusetzen oder 'Stop'."))
talkEntry:addConsequence(consequence_state("=", 10))
talkEntry:addResponse("Nicht alle Geister gleich sinnid. Viele sind vermischt. Im Ork ist der Geist von seinem Ahnen. Es ist Moshrans Geist. Er hilft, und beschützt den Ork. Stets ist er stark, wenn...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 10))
talkEntry:addTrigger("weiter")
talkEntry:addConsequence(consequence_state("=", 11))
talkEntry:addResponse("...die Ahnen und Moshran geehrt werden. Ist er schwach, werden dem Ork Unglück und Missgunst erfahren. Im Ork ist auch der Geist von Bragon. Er macht die Wärme im Körper. Wenn ein Ork stibt, dieser...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 11))
talkEntry:addTrigger("weiter")
talkEntry:addConsequence(consequence_state("=", 12))
talkEntry:addResponse("...Geist wird gebracht durch ewige Kluft zwischen G'rak und Land der Ahnen. Moshrans Geist verbleibt aber auf G'rak, solange er von seinen Erben bedacht wird. Und so das Seil verknüpfigt ist...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 12))
talkEntry:addTrigger("weiter")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("...Ruft ein Ork nach seinen Ahnen können sie ihn so hören und zuseite sein. Im Ork ist auch der Geist von Cherga. Es der Geist du hörst flüstern in dir. Ist er besonders stark, der Ork wird zum Schamane.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("shaman")
talkEntry:addTrigger("profession")
talkEntry:addConsequence(consequence_inform("Say 'continue' to progress the tale or 'stop'."))
talkEntry:addConsequence(consequence_state("=", 15))
talkEntry:addResponse("Dha shaman knows about dha spirit in green skin, and use it. Shamans spirit beh huge and mighte. Dha ancestors listen to dha voice ob descendant...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Dha shaman knows about dha spirit in green skin. And use it. Shamans spirit beh huge and mighty. Dha ancestors listen to dha voice ob descendant. But only shamans beh able contact mighty and unkonwn spirits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schaman")
talkEntry:addTrigger("beruf")
talkEntry:addConsequence(consequence_inform("Sage 'weiter' um die Erzählung fortzusetzen oder 'Stop'."))
talkEntry:addConsequence(consequence_state("=", 15))
talkEntry:addResponse("Der Schamane, weiß über die Geister im Ork. Und nutzt sie. Sein Geist ist groß und stark. Die Ahnen hören die Stimme von ihren Erben. Aber nur Schamanen werdigen, mächtige fremde Geister um Hilfe bittigen...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Der Schamane, weiß über die Geister im Ork. Und nutzt sie. Sein Geist ist groß und stark. Die Ahnen hören die Stimme von ihren Erben. Aber nur Schamanen kann mächtige fremde Geister gehören")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("olokwa")
talkEntry:addResponse("Uh, Olokwa! He be old blind orc, is very smart 'nd prudent.")
talkEntry:addResponse("Olokwa be a seer. Yubba. As impressive is... it still kind ob scary.")
talkEntry:addResponse("First time mes met Olokwa, 'e guessed mes Name. He saw it...Tha ancestors told 'im.")
talkEntry:addResponse("Olokwa hab great powa ob wisdom. ob ghostly eye. Although he blind, he see more than most othas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("olokwa")
talkEntry:addResponse("Uh, Olokwa! Er alte blind Ork ist. Aba viel klugg. Viel Weiß.")
talkEntry:addResponse("Olokwa Seher ist. Yubba. Is beeindruckend... aba imma bisschen gruselig.")
talkEntry:addResponse("Wenn mir getroffen Olokwa, erstes mal, er erraten mein Name! Er gesehen hat. Ahnen, es ihm geflüstert haben.")
talkEntry:addResponse("Olokwa große Kraft von Wissenheit hatt. Von geistiges Aug. Er ist blind. Aber sehen mehr als viele andere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("He's this wizard, this elf... Hurr! Me feel his powers from far away. Gosh.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Er dieser Zauberer ist, von den Elfen... Hurr! Ich spüre seine Kräfte von weit weg, noch. Gâsh.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("He's this wizard, this elf... Hurr! Me feel his powers from far away. Gosh.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Er dieser Zauberer ist, von den Elfen... Hurr! Ich spüre seine Kräfte von weit weg, noch. Gâsh.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Châ, in Runewick there's no good spirit. It's mashed by bad magic and foolish things. Avoid travelin' there. is not good for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Châ, in Runewick, dort sind keine guten Geister. Verseucht es ist, von bößer Magie und dummen Sachen. Geh dort nicht hin, nein. - Ist nicht gut für dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("He iss the Don, that means he's the mightiest dwarf around. Grockthâ.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Er issigt der Don. Dass meint, er ist der mächtigste Zwerg hier. Grockthâ.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair! Actually it's the buildings above us heads, in fresh air. This - down here is just'n old mine, named Scoria Mine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair! Eigentlich, es sind die Gebäude über uns Köpfe, an frischer Luft. Diese - unter hier, ist nur eine alter Mine. Heiße Scoria Mine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("The humanz and their royalty. Scheschnacks! The strongest one should be the chief! Nub just inherit privileges to decide.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Die Menschenz und ihre Königens. Scheschnacks! Der stärkste sollt der Häuptling sein! Nich einfach das Recht erben, nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("The Oomies and their royalty. Scheschnacks! The strongest one should be the chief! Nub just inherit the right.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Die Menschenz und ihre Königens. Scheschnacks! Der stärkste sollt der Häuptling sein! Nich einfach das Recht erben, nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("The Oomies and their royalty. Scheschnacks! The strongest one should be the chief! Nub just inherit the right.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("Die Menschenz und ihre Königens. Scheschnacks! Der stärkste sollt der Häuptling sein! Nich einfach das Recht erben, nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("This is land of Oomies... Orcs don't have to care about such stuff. Better ask mes about Kroch'Gurak! Where Orcs come from!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Das is Menschnzland... Orks sich nicht kümmern darum. Du besser fragst nach Kroch'Gurak! Wo Orks herkommen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Scheschnacks! They say there are Orcs in Gynk as well, but mes say those monkeys aren't orcs when they never seen the Norbuk Plateau.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Scheschnacks! Sie sagen, es gibt Orks in Gynk auch. Aber ich sage diese Affen sind nicht Orks, wann sie die Norbuk Plateau nicht gesehen haben!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("This is land of Oomies... Orcs don't have to care about such stuff. Better ask mes about Kroch'Gurak! Where Orcs come from!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Das is Menschnzland... Orks sich nicht kümmern darum. Du besser fragst nach Kroch'Gurak! Wo Orks herkommen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("kroch gurak")
talkEntry:addTrigger("Kroch'Gurak")
talkEntry:addResponse("It is where many of us orcs come from. Mant orcs from Norbuk Plateau stay there in winter!")
talkEntry:addResponse("Kroch'Gurak is west of the high plateau. In winter, many tribes gather here. It becomes a city of natural and orc dug caves filled with supplies.")
talkEntry:addResponse("Winter is no good time for young orcs. They must learn stories and wrestle and fine women! Haha!")
talkEntry:addResponse("Kroch'Gurak! Is THE orc city! Is filled with orcs and orcs and goats and pigs and many more orcs! You should hear the banging of the drums to the 'Bragg-Thu'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kroch gurak")
talkEntry:addTrigger("Kroch'Gurak")
talkEntry:addResponse("Kroch'gruak! Ist, wo meißte Orks von uns komme her von. Es das große Winterlager vom Norbuk Plateau ist!")
talkEntry:addResponse("Kroch'Gurak ist im Westen von der Hochebene und im Winter viele Stämme versammeln sich dort. Es ist ne große Stadt aus gegrabenen Höhln und natürlichn, befüllt mit vieln Vorätn.")
talkEntry:addResponse("D'Winter is ne gute Zeit für junge Orklinge. Sie machn Scheinshatz und Ringkampf und suchn sich Weiber! Hä-hä!")
talkEntry:addResponse("Kroch'Gurak! Das's DIE Orkstadt! Überfüllt mit Orksen und Orkse und Ziegen und Schweine und noch viel mehr Orks! Du solltest hören wie die Trommeln zum 'Bragg-Thu' schlagen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Norbuk")
talkEntry:addResponse("Hurr, long time gone, orcs travelling to Norbuk, the 'Strong Land'. It's big plateau, splitted by the Black Current. - Cause his water is black in spring.")
talkEntry:addResponse("Once a falcon appeared and led Grubuk Thunderhand, seer of the Bloody Skull Clan down the path to the 'Strong Land'. Since these days, this land is orc land.")
talkEntry:addResponse("After spans of life of crusader, the old orc tribes found a big strong land. It's surrounded by Armon's Mountains. There's Kroch'Gurak the big winter camp.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Norbuk")
talkEntry:addResponse("Hurr, es lange her gewesen, da Ork wandern nach Norbuk das 'Starke Land'. Es ein große Ebene ist, und es durschnitten vom Schwarzstrom. - Weil seine Wasser sind schwarz im Frühjahr.")
talkEntry:addResponse("Einst ein Falke ist erschienen und er wieß Grubuk Donnerhand, Seher des Bloody-Skull-Clans den Weg, hurr. Den Weg zum Starken Land. Seit diesen Tagen, das Land ein Orkland ist.")
talkEntry:addResponse("Nach Lebensspannen auf Wanderschaft, die alten Orkstämme gefunden haben ein großes strakes Land. Es umkreist ist von Armon's Bergen. Dort liegt Kroch'Gurak, das große Winterlager.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragg-Thu")
talkEntry:addTrigger("Bragg Thu")
talkEntry:addResponse("In winter orcs do the poetry! Growling tales about their ancestors! In rhythm to drums, the poet speaks, following plenty of complicated rules. This be called the Bragg-Thuu!")
talkEntry:addResponse("Bragg-Thuu is about rhythm of words, not about melody or rhyme. It's done according to heavy slow drums and tells about tales and legends of the ancestors.")
talkEntry:addResponse("Bragg-Thuu sounds easy to you, but mes never saw a non-orc doin it right. There's plenty of rules you have to follow. Yubba.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragg-Thu")
talkEntry:addTrigger("Bragg Thu")
talkEntry:addResponse("Im Winter Orks, widemen sich der Dichtung! Sie Lobgesänge gröhlen auf ihre Vorfahren. Im Rhythmus von Trommeln, d' Dichter folgt viele komplizierte Regeln. Das ist das Bragg-Thuu!")
talkEntry:addResponse("Bragg-Thuu, es geht um Rhythmus von Wörter, nicht um Melodie und Reim. Es wird begeleitet von großen schweren Trommeln und erzählt von Legenden und Taten der Ahnen.")
talkEntry:addResponse("Bragg-Thuu leicht aussehn mag, aber es gibt ungezählt viele regeln die man folgen muss. Yubba, hab noch nie nen nicht-Ork gesehn der's richtig hingekriegt hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Yubba! Ask Grimlug about 'Cherga' and 'Moshran' and 'Bragon'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Yubba! Frag Grimlug von 'Cherga' und 'Moshran' und 'Bragon'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Cherga escorts dha ghost through the eternal rift between dha worlds, into dha land ob dha ancestor. Ib a broddha or sistha hub smashed maneh enemies in dha battle and beh strong dhea reputation will be vast and dhea be honoured among ancestors.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ice witch")
talkEntry:addTrigger("icy witch")
talkEntry:addResponse("Cherga, escorts dha ghost through the eternal rift between dha worlds, into dha land ob dha ancestor. Ib a broddha or sistha hub smashed maneh enemies in dha battle and beh strong dhea reputation will be vast and dhea be honoured among ancestors.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Cherga bbegleit die Geister durch die ewige Kluft zwischen den Welten, in das Land der Ahnen. Wenn ein Ork viele Gegner im Kampf besiegt hat und in seinem Leben stark war, ist sein Ansehen dort groß. Geehrt unter den Vorfharen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("eis Hex")
talkEntry:addTrigger("eisige Hexe")
talkEntry:addTrigger("eishex")
talkEntry:addResponse("Cherga bbegleit die Geister durch die ewige Kluft zwischen den Welten, in das Land der Ahnen. Wenn ein Ork viele Gegner im Kampf besiegt hat und in seinem Leben stark war, ist sein Ansehen dort groß. Geehrt unter den Vorfahren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Moshran. He beh dha war bringer. Dha bone crusher. Dha blood lord. He beh dha Faddher ob ebbreh Orc cause his spirit beh in all Orc. Orcs will call on Moshran before battle to invoke blood frenzy.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bone crusher")
talkEntry:addTrigger("war bringer")
talkEntry:addTrigger("blood lord")
talkEntry:addTrigger("father")
talkEntry:addTrigger("Faddha")
talkEntry:addResponse("Moshran. He beh dha war bringer. Dha bone crusher. Dha blood lord. He beh dha Faddher ob ebbreh Orc cause his spirit beh in all Orc. Orcs will call on Moshran before battle to invoke blood frenzy.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Moshran. Er ist der Schlachtenwüterich. Der Knochenbrecher. Der Blutgott. Er ist der Vater von jedem Ork, sein Geist ist im alle Ork. Orks werden Moshran anrufen, vor eine Schlacht den Blutrausch zu machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Knochbrecher")
talkEntry:addTrigger("Schlachtenwüter")
talkEntry:addTrigger("Blutgott")
talkEntry:addTrigger("Vater")
talkEntry:addResponse("Moshran. Er ist der Schlachtenwüterich. Der Knochenbrecher. Der Blutgott. Er ist der Vater von jedem Ork, sein Geist ist im alle Ork. Orks werden Moshran anrufen, vor eine Schlacht den Blutrausch zu machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Bragon, beh dha sun bringer, dha life provida. He beh strong in Summer, he rules ober dha strong and weak. Bragon beh god of holy flames. His children be dragons. Orcs be born in Bragon's fire!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Bragon, ist der Sonnenbringer, der Lebenspender. Er ist Stark-im-Sommer. Er gebietet über die Starken und Schwachendle. Bragon ist Gott der heiligen Flammen. Seine Kinder sind die Drachen. Orks sind in Bragons Fuer geboren!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("Mes don't sell anything, knucklehead!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich nix verkauf irgendwas, Schwachkopf!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("Grimlug wissigt viele Geschichtens! Von der Schöpfung, von G'rak und H'ref, von Geistern, von Schamanen oder den Göttern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("Ask Grimlug to tell about the Creation', G'rak and H'ref, the Spirits, Shamans or the gods.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Grimlug")
talkEntry:addResponse("How, the shaman 's able to help you?")
talkEntry:addResponse("Hurr! What's your desire?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grimlug")
talkEntry:addResponse("Wie kann dir der Schamane helfigen?")
talkEntry:addResponse("Hurr! Was issigt dein Begehr?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me streicht mit vernarbten Fingern über die Klinge seines Dolches.", "#me fondles his dagger with scarred fingers.")
talkingNPC:addCycleText("#me steckt seine Hand in einen Beutel voll Asche. Er lässt ein wenig Asche in den schwachen Luftzug der Höhle davon rieseln.", "#me puts his hand into a bag with ash. Next he allows weak draft inside of the cave to blow a little bit ash out of his hand.")
talkingNPC:addCycleText("#me nimmt einen Schluck aus einer kleinen schmuddeligen Flasche. Scharfer alkoholischer Dunst steigt in die Luft.", "#me takes a gulp from a grubby little bottle. A strong stench of alcohol fills the air.")
talkingNPC:addCycleText("#me steckt sich etwas Kraut zwischen die Zähne und kaut darauf herum.", "#me puts some herbs into his mouth and chews on them.")
talkingNPC:addCycleText("#me fummelt etwas trockenes Baumharz aus seiner Manteltasche. Er reibt es zwischen den Fingern und für einen Moment ist dir als würde eine Flamme lodern. Dann macht sich ein wohliger, benebelnder Geruch breit.", "#me fumbles with some dried tree gum from inside his robe. He rubs it between his fingers and for a moment you think you saw a flame there, then a dazing haze appears.")
talkingNPC:addCycleText("#me rückt seine Kutte zurecht.", "#me adjusts his cowl.")
talkingNPC:addCycleText("#me bleckt seine Zähne und leckt sich schmatzend über die Lippen.", "#me bares his teeth and licks with a smack of his lips.")
talkingNPC:addCycleText("Ehre die Götter. Ehre den Vatha.", "Honour dha Gods. Honour dha Faddha.")
talkingNPC:addCycleText("#me streckt die Hand aus:'Ich fühlige mächtige Geister... um uns herum.'.", "#me holds his hand out, 'I feel mighty spirits...surrounding us.'")
talkingNPC:addCycleText("#me hält seine Hand über die Opferschale am Altar, diese beginnt augenblicklich merkwürdig zu leuchten.", "#me places his hand upon the sacrificial basin. In the next moment it starts to glow in a strange way.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(5)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Grimlug der Schamane.", "This NPC is Grimlug the shaman.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 811)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 0)
mainNPC:setEquipment(9, 366)
mainNPC:setEquipment(10, 369)
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
