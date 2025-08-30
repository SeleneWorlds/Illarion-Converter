local consequence_item = require("npc.base.consequence.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Marcus Steinholden, ask for a task. Keywords: quest, Akaltut, drow, Defensor, name, sister."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dies ist NPC Marcus Steinholden, frage nach einer Aufgebe. Schlüsselwörter: Quest, Akaltut, Drow, Defensor, Name, Schwester"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good Evening")
talkEntry:addResponse("Mar..Marcus does greet you.")
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
talkEntry:addResponse("Mar..Marcus grüßet euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Mar..Marcus does greet you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Mar..Marcus grüßet euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Marcus wishes you safe travels. He hopes you come back again to help him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addResponse("Marcus wünscht euch eine sichere Reise. Er hofft, dass ihr zurückkommt, um ihm zu helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Marcus wishes you safe travels. He hopes you come back again to help him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Marcus wünscht euch eine sichere Reise. Er hofft, dass ihr zurückkommt, um ihm zu helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Mar.. Marcus is Marcus. He is the apprentice to the great Master Akaltut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dein name")
talkEntry:addTrigger("wer bist du")
talkEntry:addTrigger("wer seid ihr")
talkEntry:addTrigger("wie heißt")
talkEntry:addTrigger("wie heisst")
talkEntry:addResponse("Mar..Marcus ist Marcus. Er ist Zauberlehrling der großen Meisterin Akaltut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("your name")
talkEntry:addTrigger("name")
talkEntry:addResponse("Mar.. Marcus is Marcus. He is the apprentice to the great Master Akaltut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ihr name")
talkEntry:addTrigger("Name")
talkEntry:addResponse("Mar..Marcus ist Marcus. Er ist Zauberlehrling der großen Meisterin Akaltut.")
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
talkEntry:addResponse("Marcus does stu..study magic when his Master is not busy punishing him. For now he guards the doors because he failed to acquire Cadomyr for Master.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Marcus stu..studiert die Zauberei wenn seine Meisterin nicht damit beschäftigt ist, ihn zu bestrafen. Momentan behütet er die Tore, da er Cadomyr nicht für seine Meisterin erobern konnte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Marcus does stu..study magic when his Master is not busy punishing him. For now he guards the doors because he failed to acquire Cadomyr for Master.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Marcus stu..studiert die Zauberei wenn seine Meisterin nicht damit beschäftigt ist, ihn zu bestrafen. Momentan behütet er die Tore, da er Cadomyr nicht für seine Meisterin erobern konnte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sister")
talkEntry:addResponse("Master has practised her arts, sacrificing many children, including my own sister.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schwester")
talkEntry:addResponse("Die Meisterin übte sich in ihrer Kunst mit der Opferung vieler Kinder, auch meiner Schwester.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Defensor")
talkEntry:addResponse("The Defensors were animated by Master to test the mettle of all those wishing to seek her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Defensor")
talkEntry:addResponse("Die Defensoren wurden von der Meisterin belebt, um alle zu prüfen, die nach ihr suchen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Drow")
talkEntry:addResponse("The drow are some of Masters most loyal servants. She aided them with her dark magic when they sought revenge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Drow")
talkEntry:addResponse("Die Drow sind der Meisterin loyalste Diener. Sie half ihnen mit schwarzer Zauberei, als sie Rache suchten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Akaltut")
talkEntry:addTrigger("Master")
talkEntry:addResponse("Ma..Master Akaltut is a powerful mage. She.. she bonded with a spider queen.. now she is neither one nor the other.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Akaltut")
talkEntry:addResponse("Meisterin Akaltut ist eine Großmeisterin der Zauberei. Sie.. sie vereinigte sich mit einer Spinnenkönigin.. jetzt ist sie weder die eine, noch die andere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The Archmage is no match for Master in magical talent.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Erzmagier ist nichts, verglichen mit dem magischen Talent der Meisterin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The Archmage is no match for Master in magical talent.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Erzmagier ist nichts, verglichen mit dem magischen Talent der Meisterin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Master planned on taking this town second on her siege of the mortal plane. The occupants there would have fallen easily.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Die Meisterin hatte vor, diese Stadt als zweite einzunehmen, während ihrer Belagerung der Ebene der Sterblichen. Die Stadt wäre leicht gefallen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Marcus never met the Don, but he did hope to do business with him till Master was betrayed by the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Marcus hat den Don niemals getroffen, aber er hoffte, mit ihm Geschäfte zu machen. Bevor seine Meisterin von der Stadt betrogen wurde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Marcus travelled to Galmair many times on Master's business. He thought he made friends, but they turned on him trying to poison Master.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Marcus unternahm viele Geschäftsreisen nach Galmair auf Geheiß der Meisterin. Er dachte dort Freunde gefunden zu haben, jedoch betrogen sie ihn und versuchten, seine Meisterin zu vergiften.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("The Queen looked lovely in Master's webs and runes. I wish Master would have taken her not the lizardman.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Die Königin sah lieblich aus, eingehüllt in Netze und Runen. Ich wünschte, die Meisterin hätte sie mitgenommen, anstatt des Echsenmenschen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("The Queen looked lovely in Master's webs and runes. I wish Master would have taken her not the lizardman.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Die Königin sah lieblich aus, eingehüllt in Netze und Runen. Ich wünschte, die Meisterin hätte sie mitgenommen, anstatt des Echsenmenschen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Marcus did fail to take Cadomyr for Master. One day he will be stronger.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Marcus ist daran gescheitert, Cadomyr für seine Meisterin zu erobern. Eines Tages wird er stärker sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Marcus does not follow any gods, only Master.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Marcus folgt keinen Göttern, nur seiner Meisterin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(530, "<", 27))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("test")
talkEntry:addResponse("Marcus can not let you pass if you don't finish the Defensor's tests. He has no choice, Master won't let him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(530, "<", 27))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Test")
talkEntry:addResponse("Marcus kann Euch nicht vorbeilassen, solange ihr die Probe des Defensors nicht erledigt habt. Es hat keine Wahl, die Meisterin erlaubt es nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(530, "<", 27))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Marcus can not let you pass if you don't finish the Defensor's tests. He has no choice, Master won't let him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(530, "<", 27))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Marcus kann Euch nicht vorbeilassen, solange ihr die Probe des Defensors nicht erledigt habt. Es hat keine Wahl, die Meisterin erlaubt es nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(530, "=", 27))
talkEntry:addCondition(condition_quest(532, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("test")
talkEntry:addConsequence(consequence_inform("[New quest] Akaltut's Chambers Boss Fight 1"))
talkEntry:addConsequence(consequence_quest(532, "=", 1))
talkEntry:addResponse("Marcus made a foolish mistake when he.. he did sign Master's contract. To help me escape, first you need to kill off twenty of the drow that are protecting Akaltut in her lair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(530, "=", 27))
talkEntry:addCondition(condition_quest(532, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Test")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Kampf in Akaltuts Kammern 1"))
talkEntry:addConsequence(consequence_quest(532, "=", 1))
talkEntry:addResponse("Marcus machte einen dummen Fehler, dass er...dass er den Vertrag mit der Meisterin einging. Um mir bei meiner Flucht zu helfen, müsst ihr als erstes zwanzig Drow erledigen, die Akaltut in ihrem Unterschlupf beschützen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(530, "=", 27))
talkEntry:addCondition(condition_quest(532, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Akaltut's Chambers Boss Fight 1"))
talkEntry:addConsequence(consequence_quest(532, "=", 1))
talkEntry:addResponse("Marcus made a foolish mistake when he.. he did sign Master's contract. To help me escape, first you need to kill off twenty of the drow that are protecting Akaltut in her lair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(530, "=", 27))
talkEntry:addCondition(condition_quest(532, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Kampf in Akaltuts Kammern 1"))
talkEntry:addConsequence(consequence_quest(532, "=", 1))
talkEntry:addResponse("Marcus machte einen dummen Fehler, dass er...dass er den Vertrag mit der Meisterin einging. Um mir bei meiner Flucht zu helfen, müsst ihr als erstes zwanzig Drow erledigen, die Akaltut in ihrem Unterschlupf beschützen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, ">", 0))
talkEntry:addCondition(condition_quest(532, "<", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("test")
talkEntry:addResponse("Marcus can not escape if you do not eliminate twenty drow in Akaltut's Lair. Please help me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, ">", 0))
talkEntry:addCondition(condition_quest(532, "<", 21))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Test")
talkEntry:addResponse("Marcus kann nicht entkommen, wenn ihr nicht die zwanzig Drow im Unterschlupf erledigt. Bitte helft mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, ">", 0))
talkEntry:addCondition(condition_quest(532, "<", 21))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Marcus can not escape if you do not eliminate twenty drow in Akaltut's Lair. Please help me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, ">", 0))
talkEntry:addCondition(condition_quest(532, "<", 21))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Marcus kann nicht entkommen, wenn ihr nicht die zwanzig Drow im Unterschlupf erledigt. Bitte helft mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, "=", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 300 silver coins."))
talkEntry:addConsequence(consequence_money("+", 30000))
talkEntry:addConsequence(consequence_quest(532, "=", 22))
talkEntry:addResponse("Marcus does thank you. Please take these coins for your work. I have one last task if you are ready.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, "=", 21))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst 300 Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 30000))
talkEntry:addConsequence(consequence_quest(532, "=", 22))
talkEntry:addResponse("Marcus dankt euch. Nehmt bitte diese Münzen an für eure Tat. Ich habe eine letzte Aufgabe für euch, wenn ihr bereit seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, "=", 22))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("test")
talkEntry:addConsequence(consequence_inform("[New quest] Akaltut's Chambers Boss Fight 2"))
talkEntry:addConsequence(consequence_quest(532, "=", 23))
talkEntry:addResponse("Marcus has one last request. Can..can you kill Enraged Akaltut for me? Marcus thinks only that will break the bond she has over him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, "=", 22))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Test")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Kampf in Akaltuts Kammern 2"))
talkEntry:addConsequence(consequence_quest(532, "=", 23))
talkEntry:addResponse("Marcus hat eine letzte Aufgabe. Könn..Könnt ihr die Wütend Akaltut für mich töten? Marcus denkt, dass nur dieser Akt den Bund brechen wird, der ihr Macht über ihn verleiht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, "=", 22))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Akaltut's Chambers Boss Fight 2"))
talkEntry:addConsequence(consequence_quest(532, "=", 23))
talkEntry:addResponse("Marcus has one last request. Can..can you kill Enraged Akaltut for me? Marcus thinks only that will break the bond she has over him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, "=", 22))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Kampf in Akaltuts Kammern 2"))
talkEntry:addConsequence(consequence_quest(532, "=", 23))
talkEntry:addResponse("Marcus hat eine letzte Aufgabe. Könn..Könnt ihr die Wütend Akaltut für mich töten? Marcus denkt, dass nur dieser Akt den Bund brechen wird, der ihr Macht über ihn verleiht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, ">", 22))
talkEntry:addCondition(condition_quest(532, "<", 24))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("test")
talkEntry:addResponse("Please kill Enraged Akaltut for Marcus to break their bond.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, ">", 22))
talkEntry:addCondition(condition_quest(532, "<", 24))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Test")
talkEntry:addResponse("Bitte tötet Wütend Akaltut für Marcus, um den Bund zu brechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, ">", 22))
talkEntry:addCondition(condition_quest(532, "<", 24))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Please kill Enraged Akaltut for Marcus to break their bond.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, ">", 22))
talkEntry:addCondition(condition_quest(532, "<", 24))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Bitte tötet Wütend Akaltut für Marcus, um den Bund zu brechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, "=", 24))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a slight topaz."))
talkEntry:addConsequence(consequence_item(3525, 1, 333, {["gemLevel"] = "3"}))
talkEntry:addConsequence(consequence_quest(532, "=", 25))
talkEntry:addResponse("I feel the bond weakening even now. Marcus hopes in time he will get away. Marcus could not have done this without you. Take this gem as a thank you token.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, "=", 24))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du wirst mit einem leichten Toas belohnt."))
talkEntry:addConsequence(consequence_item(3525, 1, 333, {["gemLevel"] = "3"}))
talkEntry:addConsequence(consequence_quest(532, "=", 2))
talkEntry:addResponse("Ich fühle, wie der Bund vergeht. Marcus hofft, dass er bald verschwunden ist. Marcus hätte es ohne euch nicht geschafft. Nehmt diesen Edelstein, als Zeichen meines Dankes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, "=", 25))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("test")
talkEntry:addResponse("You have done all Marcus could have expected. Marcus must make his way on his own now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, "=", 25))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Test")
talkEntry:addResponse("Ihr habt alles getan, was Marcus sich erhoffen konnte. Marcus muss nun seinen Weg alleine gehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, "=", 25))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You have done all Marcus could have expected. Marcus must make his way on his own now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(532, "=", 25))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ihr habt alles getan, was Marcus sich erhoffen konnte. Marcus muss nun seinen Weg alleine gehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me ritzt blutige Runen in seinen Arm.", "#me draws runes in blood on his arm.")
talkingNPC:addCycleText("Die Mei..Mei..Meisterin ist wütend auf Marcus.", "Ma..Ma..Master is mad at Marcus.")
talkingNPC:addCycleText("Marcus wird es nächstes mal besser machen.", "Marcus will do better next time.")
talkingNPC:addCycleText("Die Meisterin ist die Größte.", "Master is the greatest.")
talkingNPC:addCycleText("#me zuckt zusammen.", "#me twitches involuntarily.")
talkingNPC:addCycleText("#me macht eine Notiz in einem Tagebuch.", "#me makes notes in a diary.")
talkingNPC:addCycleText("Marcus scheiterte daran, bei der Unterwerfung Cadomyrs zu helfen. Er wird jetzt bestraft.", "Marcus failed to help Master seize Cadomyr and is being punished.")
talkingNPC:addCycleText("Die Meisterin lässt Marcus nicht sterben. Sie sagt, er sei ihrer für immer.", "Master won't let Marcus die. She says he is hers forever.")
talkingNPC:addCycleText("Eines Tages, wenn Marcus sich als würdig erweist, dann wird die Meisterin ihm alles lehren was sie weiß.", "One day when Marcus is worthy, Master will teach him all she knows.")
talkingNPC:addCycleText("#me schaut unsicher umher und spricht wenig überzeugend: 'Schließt euch der Meisterin an und helft ihr'", "#me looks about nervously 'Join Master and aide her.' Speaks unconvincingly.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dies ist Marcus Steinholden.", "This is Marcus Steinholden.")
mainNPC:setUseMessage("V.v.v.verletze Marcus nicht.", "Don't h.h.hurt Marcus.")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(3, 182)
mainNPC:setEquipment(5, 323)
mainNPC:setEquipment(4, 531)
mainNPC:setEquipment(9, 34)
mainNPC:setEquipment(10, 1054)
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
