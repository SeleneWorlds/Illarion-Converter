local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local condition_chance = require("npc.base.condition.chance")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Granor Bergenhieb the alchemist. Keywords: Task, Don Valerio, Red cloud extract, Egon, Potion"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Granor Bergenhieb der Alchemist. Schlüsselwörter: Aufgabe, Don Valerio, Rotwolkenextrakt, Egon, Tränke"))
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
talkEntry:addResponse("#me grumbles and mumbles: 'No time for idle talk.'")
talkEntry:addResponse("Yes, yes, of course.")
talkEntry:addResponse("Hello. Good day, good night and may the gods bless you, knucklehead. What do you want?")
talkEntry:addResponse("What?!")
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
talkEntry:addResponse("#me grummelt und brummelt: 'Keine Zeit für unwichtiges Geplapper.'")
talkEntry:addResponse("Ja, ja, na sicher.")
talkEntry:addResponse("Hallo, guten Tag, gute Nacht, fröhlichen Geburtstag und mögen die Götter dich segnen, Dummkopf. Was willst du?")
talkEntry:addResponse("Was?!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me grumbles and mumbles: 'No time for idle talk.'")
talkEntry:addResponse("Yes, yes, of course.")
talkEntry:addResponse("Hello. Good day, good night and may the gods bless you, knucklehead. What do you want?")
talkEntry:addResponse("What?!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me grummelt und brummelt: 'Keine Zeit für unwichtiges Geplapper.'")
talkEntry:addResponse("Ja, ja, na sicher.")
talkEntry:addResponse("Hallo, guten Tag, gute Nacht, fröhlichen Geburtstag und mögen die Götter dich segnen, Dummkopf. Was willst du?")
talkEntry:addResponse("Was?!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Go!")
talkEntry:addResponse("Couldn't care less.")
talkEntry:addResponse("Finally.")
talkEntry:addResponse("And now I finally can go back to work!")
talkEntry:addResponse("Don't disturb me again!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Geh!")
talkEntry:addResponse("Könnte mich nicht weniger interessieren.")
talkEntry:addResponse("Endlich kann ich mich wieder der Arbeit widmen.")
talkEntry:addResponse("Stör mich nicht nochmal!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Go!")
talkEntry:addResponse("Couldn't care less.")
talkEntry:addResponse("Finally.")
talkEntry:addResponse("And now I finally can go back to work!")
talkEntry:addResponse("Don't disturb me again!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Geh!")
talkEntry:addResponse("Könnte mich nicht weniger interessieren.")
talkEntry:addResponse("Endlich kann ich mich wieder der Arbeit widmen.")
talkEntry:addResponse("Stör mich nicht nochmal!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Granor Bergenhieb. And you? Oh, wait. I don't care.")
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
talkEntry:addResponse("Granor Bergenhieb. Und du? Halt warte. Interessiert mich nicht.")
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
talkEntry:addTrigger("profession")
talkEntry:addResponse("It's none for your business what I do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Geht dich nichts an, was ich tue.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("It's none for your business what I do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Geht dich nichts an, was ich tue.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("A lot of alchemical knowledge swapped over when that place in the nowhere was destroyed. Can happen any time again, if you ask me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Von diesem Fleck im Nirgendwo ist einiges an alchemistischem Wissen rübergeschwappt, als die Insel unterging. Von mir aus immer wieder.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Why would I want to know your ugly name? It suits you well, though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Warum sollte ich deinen häßlichen Namen wissen wollen? Aber immerhin passt er zu dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alchemie")
talkEntry:addResponse("Du willst was über Alchemie wissen? Warum? Würdest du eh nicht kapieren. Alchemie hat nichts mit dem Gelaber zu tun, wie es etwa Runewicker von sich geben. Es geht um das Machen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alchemy")
talkEntry:addResponse("You want to know something  about alchemy? Why? You wouldn't understand it anyway. Alchemy has nothing to do with the babbling that the Runewickers conduct. It is about doing!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Rotwolk")
talkEntry:addResponse("Hast du Rotwolkenextrakt gesagt?! Hast du welches? Ich geb dir alles dafür! 100 Gold? Willst du Egon? Gib mir auch nur ein Korn und du kannst ihn mitnehmen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("red cloud")
talkEntry:addResponse("Did you say red cloud extract?! Do you have some? Give it to me and you will get whatever you want! 100 Gold? Do you want Egon? Give me just one little piece and you can take him!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Egon")
talkEntry:addResponse("Egon is stupid. But not as stupid as most people in Illarion are. Yes, yes, he is a ratman. And? If a piece of shit like Valerio can rule a town, a ratman surely can be an assistant")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Egon")
talkEntry:addResponse("Egon is dumm. Aber nicht so dumm wie es die meisten in Illarion sind. Ja, ja, er ist ein Rattenmensch. Und? Wenn ein Stück Scheiße wie Valerio eine Stadt führen kann, kann ein Rattenmensch sicherlich ein Assistent sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tr[äa]nke")
talkEntry:addResponse("Hahaha! Über meine Tränke willst du was wissen? Pah! Selbst Egon weiß kaum was über sie. Doch sie haben mehr Einfluss auf Illarion, mehr als du denkst...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("potion")
talkEntry:addResponse("Hahaha! You want to know more about my potions? Pah! Even Egon knows hardly anything about them. But they have more influence on Illarion than you think...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("That mage Elvaine Morgan thinks he is smart. He has knowledge, yes. But smartness? No! What worth does knowledge have if you don't put it to any use? He hides behind his books, afraid of the world and real knowledge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Magier Elvaine Morgan denkt er sei klug. Wissen hat er, ja. Aber Klugheit? Welchen Wert hat Wissen, wenn man es nicht gebraucht? Er versteckt sich hinter Bücher aus Angst vor der Welt und wahrem Wissen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("That mage Elvaine Morgan thinks he is smart. He has knowledge, yes. But smartness? No! What worth does knowledge have if you don't put it to any use? He hides behind his books, afraid of the world and real knowledge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Magier Elvaine Morgan denkt er sei klug. Wissen hat er, ja. Aber Klugheit? Welchen Wert hat Wissen, wenn man es nicht gebraucht? Er versteckt sich hinter Bücher aus Angst vor der Welt und wahrem Wissen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("A bunch of scared mages and alchemists who have no sense for the true, deeper knowledge of alchemy.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ein Haufen verängstigter Magier und Alchemisten, die keinen Sinn für das wahre, tiefere Wissen der Alchemie haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Guilianni is a disgusting, greedy pig. I shit on him and I shit on Galmair. I hope he chokes on it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Guilianni ist ein ekelhaftes, gieriges Schwein. Ich scheiß auf ihn und ich scheiß auf Galmair. Ich hoffe er erstickt dran.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Guilianni is a disgusting, greedy pig. I shit on him and I shit on Galmair. I hope he chokes on it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Guilianni ist ein ekelhaftes, gieriges Schwein. Ich scheiß auf ihn und ich scheiß auf Galmair. Ich hoffe er erstickt dran.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Without me she would be dead. I saved her from a strong fever that no one could heal when she was a small brat. That's why her father allowed me to stay here, despite the disgusting Valerio yearning for my head.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Ohne mich wäre sie tot. Hab sie als kleines Gör von einem Fieber befreit, das niemand anderes heilen konnte. Deswegen erlaubte mir ihr Vater hier zu bleiben, obwohl der dreckige Valerio meinen Kopf wollte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Without me she would be dead. I saved her from a strong fever that no one could heal when she was a small brat. That's why her father allowed me to stay here, despite the disgusting Valerio yearning for my head.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ohne mich wäre sie tot. Hab sie als kleines Gör von einem Fieber befreit, das niemand anderes heilen konnte. Deswegen erlaubte mir ihr Vater hier zu bleiben, obwohl der dreckige Valerio meinen Kopf wollte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("You think I am an idiot? In Cadomyr, I found protection. I certainly won't complain.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Denkst du ich bin ein Idiot? Hab hier in Cadomyr Schutz gefunden, da werd ich mich kaum beschweren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("g[öo]tt")
talkEntry:addResponse("Geht dich einen feuchten Dreck an, wann ich zu den Göttern bete und wann nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("It's none of your god damn business when I pray to the gods and when not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addTrigger("Ushara")
talkEntry:addTrigger("Br[aà]gon")
talkEntry:addTrigger("Eldan")
talkEntry:addTrigger("Findari")
talkEntry:addTrigger("Narg[uù]n")
talkEntry:addTrigger("Elara")
talkEntry:addTrigger("Adron")
talkEntry:addTrigger("Oldra")
talkEntry:addTrigger("Cherga")
talkEntry:addTrigger("Malach[iì]n")
talkEntry:addTrigger("Irmorom")
talkEntry:addTrigger("Sirani")
talkEntry:addTrigger("Zhambra")
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("It's none of your god damn business when I pray to the gods and when not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addTrigger("Ushara")
talkEntry:addTrigger("Br[aà]gon")
talkEntry:addTrigger("Eldan")
talkEntry:addTrigger("Findari")
talkEntry:addTrigger("Narg[uù]n")
talkEntry:addTrigger("Elara")
talkEntry:addTrigger("Adron")
talkEntry:addTrigger("Oldra")
talkEntry:addTrigger("Cherga")
talkEntry:addTrigger("Malach[iì]n")
talkEntry:addTrigger("Irmorom")
talkEntry:addTrigger("Sirani")
talkEntry:addTrigger("Zhambra")
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Geht dich einen feuchten Dreck an, wann ich zu den Göttern bete und wann nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("s head is hit by a stone.")
talkEntry:addConsequence(consequence_money("+", 0))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wird von einem Stein am Kopf getroffen.")
talkEntry:addConsequence(consequence_money("+", 0))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Next month! I'm sure I have something else to do for you then. Until then, I don't want to see your face again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nächsten Monat! Dann hab ich bestimmt wieder was zu tun für dich. Vorher will dich dein Gesicht nicht wiedersehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Next month! I'm sure I have something else to do for you then. Until then, I don't want to see your face again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Nächsten Monat! Dann hab ich bestimmt wieder was zu tun für dich. Vorher will dich dein Gesicht nicht wiedersehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addResponse("What? What? I told you you can get your herbs from Egon. Now stop disturbing me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 5))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Was? Was? Ich hab dir gesagt, du kannst deine Kräuter von Egon abholen. Jetzt hör auf mich zu belästigen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(25.0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Alchemical needs"))
talkEntry:addConsequence(consequence_quest(504, "=", 1))
talkEntry:addResponse("With his ugly tail, Egon the no-good knocked over my box with bottles. I need new. Bring me, let's say, 10. You will get some precious herbs in exchange, even though they are wasted on someone like you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(25.0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Alchemistischer Bedarf"))
talkEntry:addConsequence(consequence_quest(504, "=", 1))
talkEntry:addResponse("Egon der Nichtsnutz hat mit seinem Schwanz die Flaschenkiste umgeworfen. Brauch neue. Bring mir mal so 10 Stück und du bekommst ein paar kostbare Pflanzen, die eigentlich zu Schade für jemanden wie dich sind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(25.0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Alchemical needs"))
talkEntry:addConsequence(consequence_quest(504, "=", 1))
talkEntry:addResponse("With his ugly tail, Egon the no-good knocked over my box with bottles. I need new. Bring me, let's say, 10. You will get some precious herbs in exchange, even though they are wasted on someone like you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(25.0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Alchemistischer Bedarf"))
talkEntry:addConsequence(consequence_quest(504, "=", 1))
talkEntry:addResponse("Egon der Nichtsnutz hat mit seinem Schwanz die Flaschenkiste umgeworfen. Brauch neue. Bring mir mal so 10 Stück und du bekommst ein paar kostbare Pflanzen, die eigentlich zu Schade für jemanden wie dich sind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 1))
talkEntry:addCondition(condition_item(164, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_deleteitem(164, 15, nil))
talkEntry:addConsequence(consequence_quest(504, "=", 5))
talkEntry:addResponse("Was about time, eh? Go to Egon and get your herbs. Then, see to it that you get lost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 1))
talkEntry:addCondition(condition_item(164, "all", ">", 9, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_deleteitem(164, 15, nil))
talkEntry:addConsequence(consequence_quest(504, "=", 5))
talkEntry:addResponse("Wurd ja aber auch mal Zeit, nicht? Geh zu Egon und hol dir deine Kräuter. Dann mach, dass du verschwindest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 1))
talkEntry:addCondition(condition_item(164, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Stop jabbering! I want ten bottles for my potions. Go, get them! Get lost!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 1))
talkEntry:addCondition(condition_item(164, "all", "<", 10, nil))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Quassel mich nicht voll! Ich wollte zehn Flaschen für meine Tränke! Los besorg sie! Hau ab!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(33.33333333))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Alchemical needs"))
talkEntry:addConsequence(consequence_quest(504, "=", 2))
talkEntry:addResponse("Deadhead Egon lost his bag with sun herbs again. Bring me a 30 new ones. From now on, I will give that stupid ratman the sun herbs only when he needs it. You will get some rare herbs in exchange.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(33.33333333))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Alchemistischer Bedarf"))
talkEntry:addConsequence(consequence_quest(504, "=", 2))
talkEntry:addResponse("Hohlkopf Egon hat mal wieder seinen Beutel mit Sonnenkraut verloren. Bring 30 neue. Der dämliche Rattschenmensch bekommt die nur noch von mir, wenn er sie braucht. Du kriegt ein paar selten Pflanzen im Austausch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(33.33333333))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Alchemical needs"))
talkEntry:addConsequence(consequence_quest(504, "=", 2))
talkEntry:addResponse("Deadhead Egon lost his bag with sun herbs again. Bring me a 30 new ones. From now on, I will give that stupid ratman the sun herbs only when he needs it. You will get some rare herbs in exchange.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(33.33333333))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Alchemistischer Bedarf"))
talkEntry:addConsequence(consequence_quest(504, "=", 2))
talkEntry:addResponse("Hohlkopf Egon hat mal wieder seinen Beutel mit Sonnenkraut verloren. Bring 30 neue. Der dämliche Rattschenmensch bekommt die nur noch von mir, wenn er sie braucht. Du kriegt ein paar selten Pflanzen im Austausch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 2))
talkEntry:addCondition(condition_item(133, "all", ">", 29, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_deleteitem(133, 30, nil))
talkEntry:addConsequence(consequence_quest(504, "=", 5))
talkEntry:addResponse("Was about time, eh? Go to Egon and get your herbs. Then, see to it that you get lost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 2))
talkEntry:addCondition(condition_item(133, "all", ">", 29, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_deleteitem(133, 30, nil))
talkEntry:addConsequence(consequence_quest(504, "=", 5))
talkEntry:addResponse("Wurd ja aber auch mal Zeit, nicht? Geh zu Egon und hol dir deine Kräuter. Dann mach, dass du verschwindest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 2))
talkEntry:addCondition(condition_item(133, "all", "<", 30, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Stop jabbering! I want 30 sun herbs. Go, get them! Get lost!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 2))
talkEntry:addCondition(condition_item(133, "all", "<", 30, nil))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Quassel mich nicht voll! Ich wollte 30 Sonnenkräuter! Los besorg sie! Hau ab!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(50.0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Alchemical needs"))
talkEntry:addConsequence(consequence_quest(504, "=", 3))
talkEntry:addResponse("That ugly rat guzzled my last sacks of ruby powder! Get me two sacks of ruby powder and you will get some rare herbs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(50.0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Alchemistischer Bedarf"))
talkEntry:addConsequence(consequence_quest(504, "=", 3))
talkEntry:addResponse("Die häßliche Ratte hat doch tatsächlich meine letzten Beutel Rubinstaub aufgefressen! Hol mir zwei neue und du bekommst ein paar selten Kräuter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(50.0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Alchemical needs"))
talkEntry:addConsequence(consequence_quest(504, "=", 3))
talkEntry:addResponse("That ugly rat guzzled my last sacks of ruby powder! Get me two sacks of ruby powder and you will get some rare herbs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(50.0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[New Quest] Alchemical needs"))
talkEntry:addConsequence(consequence_quest(504, "=", 3))
talkEntry:addResponse("That ugly rat guzzled my last sacks of ruby powder! Get me two sacks of ruby powder and you will get some rare herbs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 3))
talkEntry:addCondition(condition_item(447, "all", ">", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_deleteitem(447, 2, nil))
talkEntry:addConsequence(consequence_quest(504, "=", 5))
talkEntry:addResponse("Was about time, eh? Go to Egon and get your herbs. Then, see to it that you get lost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 3))
talkEntry:addCondition(condition_item(447, "all", ">", 1, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_deleteitem(447, 2, nil))
talkEntry:addConsequence(consequence_quest(504, "=", 5))
talkEntry:addResponse("Wurd ja aber auch mal Zeit, nicht? Geh zu Egon und hol dir deine Kräuter. Dann mach, dass du verschwindest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 3))
talkEntry:addCondition(condition_item(447, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Stop jabbering! I want two sacks of ruby powder. Go, get them! Get lost!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 3))
talkEntry:addCondition(condition_item(447, "all", "<", 1, nil))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Quassel mich nicht voll! Ich wollte zwei Beutel mit Rubinstaub! Los besorg sie! Hau ab!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(100.0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Alchemical needs"))
talkEntry:addConsequence(consequence_quest(504, "=", 4))
talkEntry:addResponse("Egon threw his mortar at a bird. Now he needs a new one! Get me one and you can get some rare from that imbecile rat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(100.0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Alchemistischer Bedarf"))
talkEntry:addConsequence(consequence_quest(504, "=", 4))
talkEntry:addResponse("Egon hat seinen Mörser nach einem Vogel geworfen. Jetzt brauch ich einen neuen! Bring mir einen und du kannst dir ein paar seltene Kräuter von der schwachsinnigen Ratte holen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(100.0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Alchemical needs"))
talkEntry:addConsequence(consequence_quest(504, "=", 4))
talkEntry:addResponse("Egon threw his mortar at a bird. Now he needs a new one! Get me one and you can get some rare from that imbecile rat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 0))
talkEntry:addCondition(condition_chance(100.0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Alchemistischer Bedarf"))
talkEntry:addConsequence(consequence_quest(504, "=", 4))
talkEntry:addResponse("Egon hat seinen Mörser nach einem Vogel geworfen. Jetzt brauch ich einen neuen! Bring mir einen und du kannst dir ein paar seltene Kräuter von der schwachsinnigen Ratte holen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 4))
talkEntry:addCondition(condition_item(58, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_deleteitem(58, 1, nil))
talkEntry:addConsequence(consequence_quest(504, "=", 5))
talkEntry:addResponse("Was about time, eh? Go to Egon and get your herbs. Then, see to it that you get lost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 4))
talkEntry:addCondition(condition_item(58, "all", ">", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_deleteitem(58, 1, nil))
talkEntry:addConsequence(consequence_quest(504, "=", 5))
talkEntry:addResponse("Wurd ja aber auch mal Zeit, nicht? Geh zu Egon und hol dir deine Kräuter. Dann mach, dass du verschwindest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 4))
talkEntry:addCondition(condition_item(58, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Stop jabbering! I want a new mortar. Go, get it! Get lost!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(504, "=", 4))
talkEntry:addCondition(condition_item(58, "all", "<", 1, nil))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Quassel mich nicht voll! Ich wollte einen Mörser! Los besorg ihn! Hau ab!")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Gift, Heilung. Alles das selbe für mich. Alles nur ein Trank.", "Poison, healing. All the same to me. Just an other potion.")
talkingNPC:addCycleText("#s Bei den Göttern! Sei 30 Jahren habe ich kein Rotwolkenextrakt mehr gesehen.", "#s By the gods! I haven't seen red cloud extract in 30 years.")
talkingNPC:addCycleText("Druiden! Pah! Benebeln sich mit Sibanac und quatschen mit Bäumen.", "Druids! Pah! Numbing themselves with sibanac and babble with trees.")
talkingNPC:addCycleText("Sumpfblume, Firnisblüte, Eisblatt, Feuerwurzel und... ja, und was?", "Mash flower, firnis blossom, ice leaf, fire root and... and what?")
talkingNPC:addCycleText("Egon! Du bist so dumm wie du häßlich bist.", "Egon! You are as stupid as you are ugly.")
talkingNPC:addCycleText("#me murmelt: 'Valerio, du elender Haufen Müll...'", "#me mutters: 'Valerio, you filthy piece of trash.'")
talkingNPC:addCycleText("#me hält einen Topas über den Kesselinhalt und starrt darauf.", "#me holds a topaz above the content of the cauldron and stares at it.")
talkingNPC:addCycleText("Rotwolkenextrakt! Egon, wir brauchen Rotwolkenextrakt, verdammt!", "Red cloud extract! Egon, we need red cloud extract, damn it!")
talkingNPC:addCycleText("#me rührt im Kessel.", "#me stirs in the cauldron.")
talkingNPC:addCycleText("#s Egon! Beeilung! Ich brauch die Kräuter jeden Moment.", "#s Egon! Hurry! I need those herbs this moment!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Granor Bergenhieb der Alchemist.", "This NPC is Granor Bergenhieb the alchemist.")
mainNPC:setUseMessage("Nimm deine Drecksgriffel weg oder ich lass Egon sie abbeißen!", "Take your filthy fingers off of me or I will have Egon chew them off of you!")
mainNPC:setConfusedMessage("Sprich normal, Schwachkopf!", "Speak normally, half-wit!")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 814)
mainNPC:setEquipment(11, 2384)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 0)
mainNPC:setEquipment(9, 826)
mainNPC:setEquipment(10, 1055)
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
