local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
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
talkEntry:addConsequence(consequence_inform("[Game Help] This is NPC Zenia. Keywords are: Quest, task, Tanora, Zelphia, water, and prayer."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Zenia. Schlüsselwörter: Quest, Aufgabe, Tanora, Zelphia, Wasser, Gebet."))
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
talkEntry:addResponse("Greetinzss of zze Mozzer to you. Blesssed are we zziss day.")
talkEntry:addResponse("Blessingsss of zze Mozzer upon you, greetingsss.")
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
talkEntry:addResponse("Grüssse der Mutter für dich. Gessegnet sseien wir diesser Tage.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetinzss of zze Mozzer to you. Blesssed are we zziss day.")
talkEntry:addResponse("Blessingsss of zze Mozzer upon you, greetingsss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Grüssse der Mutter für dich. Gessegnet sseien wir diesser Tage.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Clear waterss on your travelss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Klaress Wassser auf deinen Reisen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Clear waterss on your travelss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Klaress Wassser auf deinen Reisen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Zenia iz good. Zze Mozzer providess all sshe needss, including help to keep her ssleeping nesst in good ssturdy condition.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Zzenia geht ess gut. Mutter gibt ihr alless, wass ssie braucht, auch die Hilfe, um ihr Schlafnesst in gutem Zzustand zzu halten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Sshe is Zenia, sservant of zze Mozzer.")
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
talkEntry:addResponse("Ssie ist Zzenia, Dienerin der Mutter.")
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
talkEntry:addResponse("She is not a trader.")
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
talkEntry:addResponse("Ich bin keine Marktfrau.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("water")
talkEntry:addResponse("Zze water iz life giving, iz all. *She smiles and bows her head, obviously deep in thought*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wasser")
talkEntry:addResponse("Dass Wassser isst Leben sspendend, ist alles. *Sie lächelt und neigt ihren Kopf, offenbar tief in Gedanken versunken*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("prayer")
talkEntry:addTrigger("worship")
talkEntry:addResponse("Pray to zze Mozzer and sshe will help you on your way.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gebet")
talkEntry:addTrigger("Andacht")
talkEntry:addTrigger("bete")
talkEntry:addResponse("Bete zzur Mutter und ssie wird dir auf deinem Weg helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Zze Mozzer hass helped Zenia lead a good full life, wizz many hatchlingss, and lead me here to zziss wonderful place in my old age. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Mutter hat Zzenia geholfen ein gutess Leben zu führen, mit vielen Jungen. Und ssie führte mich in meinen alten Tagen zu diessem wunderbaren Platz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(1153, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ssalva")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(1153, "all", "<", 1, nil))
talkEntry:addTrigger("gift")
talkEntry:addTrigger("present")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(1153, "all", "<", 1, nil))
talkEntry:addTrigger("Ssalva")
talkEntry:addTrigger("Geschenk")
talkEntry:addTrigger("gabe")
talkEntry:addResponse("Ssalva hat Zenia mehr Ssachen versprochen alss dasss. Bist du ssicher, dasss du alless hast?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(3572, "all", "<", 2, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ssalva")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(3572, "all", "<", 2, nil))
talkEntry:addTrigger("gift")
talkEntry:addTrigger("present")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(3572, "all", "<", 2, nil))
talkEntry:addTrigger("Ssalva")
talkEntry:addTrigger("Geschenk")
talkEntry:addTrigger("gabe")
talkEntry:addResponse("Ssalva hat Zenia mehr Ssachen versprochen alss dasss. Bist du ssicher, dasss du alless hast?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(1210, "all", "<", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ssalva")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(1210, "all", "<", 5, nil))
talkEntry:addTrigger("gift")
talkEntry:addTrigger("present")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(1210, "all", "<", 5, nil))
talkEntry:addTrigger("Ssalva")
talkEntry:addTrigger("Geschenk")
talkEntry:addTrigger("gabe")
talkEntry:addResponse("Ssalva hat Zenia mehr Ssachen versprochen alss dasss. Bist du ssicher, dasss du alless hast?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(355, "all", "<", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ssalva")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(355, "all", "<", 5, nil))
talkEntry:addTrigger("gift")
talkEntry:addTrigger("present")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(355, "all", "<", 5, nil))
talkEntry:addTrigger("Ssalva")
talkEntry:addTrigger("Geschenk")
talkEntry:addTrigger("gabe")
talkEntry:addResponse("Ssalva hat Zenia mehr Ssachen versprochen alss dasss. Bist du ssicher, dasss du alless hast?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(73, "all", "<", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gift")
talkEntry:addTrigger("Ssalva")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(73, "all", "<", 5, nil))
talkEntry:addTrigger("gift")
talkEntry:addTrigger("present")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(73, "all", "<", 5, nil))
talkEntry:addTrigger("Ssalva")
talkEntry:addTrigger("Geschenk")
talkEntry:addTrigger("gabe")
talkEntry:addResponse("Ssalva hat Zenia mehr Ssachen versprochen alss dasss. Bist du ssicher, dasss du alless hast?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(1209, "all", "<", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ssalva")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(1209, "all", "<", 5, nil))
talkEntry:addTrigger("gift")
talkEntry:addTrigger("present")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(1209, "all", "<", 5, nil))
talkEntry:addTrigger("Ssalva")
talkEntry:addTrigger("Geschenk")
talkEntry:addTrigger("gabe")
talkEntry:addResponse("Ssalva hat Zenia mehr Ssachen versprochen alss dasss. Bist du ssicher, dasss du alless hast?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(1150, "all", "<", 20, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ssalva")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(1150, "all", "<", 20, nil))
talkEntry:addTrigger("gift")
talkEntry:addTrigger("present")
talkEntry:addResponse("Ssalva did promisse Zenia more itemss zzan zziss. Are you ssure you have everyzzing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_item(1150, "all", "<", 20, nil))
talkEntry:addTrigger("Ssalva")
talkEntry:addTrigger("Geschenk")
talkEntry:addTrigger("gabe")
talkEntry:addResponse("Ssalva hat Zenia mehr Ssachen versprochen alss dasss. Bist du ssicher, dasss du alless hast?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gift")
talkEntry:addTrigger("Ssalva")
talkEntry:addConsequence(consequence_deleteitem(1153, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(3572, 2, nil))
talkEntry:addConsequence(consequence_deleteitem(1210, 5, nil))
talkEntry:addConsequence(consequence_deleteitem(1209, 5, nil))
talkEntry:addConsequence(consequence_deleteitem(355, 5, nil))
talkEntry:addConsequence(consequence_deleteitem(73, 5, nil))
talkEntry:addConsequence(consequence_deleteitem(1150, 20, nil))
talkEntry:addConsequence(consequence_quest(501, "=", 18))
talkEntry:addResponse("A vissitor, how nicce, and you brought Zenia giftsss from my friend Ssalva you ssay? Oh, zziss remindss me, I have informazzion for Ssalva. Would you kindly tell Ssalva zzat zze zealotss are lead by a lizard temple warrior. Zenia iss mosst grateful for Ssalva'ss giftss thiss day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addTrigger("Ssalva")
talkEntry:addTrigger("Geschenk")
talkEntry:addTrigger("gabe")
talkEntry:addConsequence(consequence_deleteitem(1153, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(3572, 2, nil))
talkEntry:addConsequence(consequence_deleteitem(1210, 5, nil))
talkEntry:addConsequence(consequence_deleteitem(1209, 5, nil))
talkEntry:addConsequence(consequence_deleteitem(355, 5, nil))
talkEntry:addConsequence(consequence_deleteitem(73, 5, nil))
talkEntry:addConsequence(consequence_deleteitem(1150, 20, nil))
talkEntry:addConsequence(consequence_quest(501, "=", 18))
talkEntry:addResponse("Ein Bessucher, wie schön. Und du ssagst, du bringsst Geschenke von meiner Freundin Ssalva? Oh, dass erinnert mich daran, dasss Zzenia Informationen für Ssalva hat. Wärsst du sso freundlich und teilsst Ssalva mit, dass die Fanatiker von einem Echsentempelkrieger angeführt werden? Zzenia isst diesse Tage ssehr glücklich über Ssalvas Geschenke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Praise Zelphia I"))
talkEntry:addConsequence(consequence_item(2760, 2, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 1))
talkEntry:addResponse("Sseems zze Mozzer ssent you to learn ssome zzingss. If you wissh to return to zze main island you musst firsst pray to zze Mozzer for guidance. Zzen, Zenia will aid you in your return, sshow zze Mozzer the rope I have graciously given you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Preise Zelphia I"))
talkEntry:addConsequence(consequence_item(2760, 2, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 1))
talkEntry:addResponse("Scheint, dasss Mutter dich geschickt hat, um einige Dinge zu lernen. Wenn du zzurück auf die Hauptinssel willsst, mussst du zzuersst Mutter um Führung anbeten. Dann wird Zzenia dir bei deiner Rückkehr helfen. Zzeig Mutter das Sseil, dass Zzenia dir gnädigerweisse überlasssen hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Praise Zelphia I"))
talkEntry:addConsequence(consequence_item(2760, 2, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 1))
talkEntry:addResponse("Sseems zze Mozzer ssent you to learn ssome zzingss. If you wissh to return to zze main island you musst firsst pray to zze Mozzer for guidance. Zzen, Zenia will aid you in your return, sshow zze Mozzer the rope I have graciously given you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Preise Zelphia I"))
talkEntry:addConsequence(consequence_item(2760, 2, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 1))
talkEntry:addResponse("Scheint, dasss Mutter dich geschickt hat, um einige Dinge zu lernen. Wenn du zzurück auf die Hauptinssel willsst, mussst du zzuersst Mutter um Führung anbeten. Dann wird Zzenia dir bei deiner Rückkehr helfen. Zzeig Mutter das Sseil, dass Zzenia dir gnädigerweisse überlasssen hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss. If you do not wish to leave you can sstay here. I can alwayss usse anozzer fissherman. Ozzerwize pray to zze Mozzer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 1))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Zss. Wenn du nicht gehen willsst, kannsst du auch hier bleiben. Zzenia kann auch einen anderen Fischer fragen. Anssonssten bete zzur Mutter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_quest(502, "=", 3))
talkEntry:addConsequence(consequence_item(3572, 2, 333, nil))
talkEntry:addResponse("Yess you are getting zzere. Take zziss ssoup to nourish your body wizz zze giftss of zze Mozzer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_quest(502, "=", 3))
talkEntry:addConsequence(consequence_item(3572, 2, 333, nil))
talkEntry:addResponse("Ja, du hast ess gesschafft. Nimm diesse Ssuppe, um deinen Körper mit den Geschenken der Mutter zzu ernähren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Praise Zelphia II"))
talkEntry:addConsequence(consequence_item(74, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 4))
talkEntry:addResponse("You honour zze Mozzer sso I sshall help you gazzer materialss for a raft. Zze Mozzer providess all we need. Take zziss hatchet and cut ten logs from zosse old trees. Bring me zze logs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Preise Zelphia II"))
talkEntry:addConsequence(consequence_item(74, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 4))
talkEntry:addResponse("Du ehrsst die Mutter, alsso hilft Zzenia dir Material für ein Flosss zu ssammeln. Die Mutter stellt alless bereit wass wir brauchen. Nimm diesse Axt und schlage zehn Stämme von diessen alten Bäumen. Bring ssie Zzenia dann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Praise Zelphia II"))
talkEntry:addConsequence(consequence_item(74, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 4))
talkEntry:addResponse("You honour zze Mozzer sso I sshall help you gazzer materialss for a raft. Zze Mozzer providess all we need. Take zziss hatchet and cut ten logs from zosse old trees. Bring me zze logs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Preise Zelphia II"))
talkEntry:addConsequence(consequence_item(74, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 4))
talkEntry:addResponse("Du ehrsst die Mutter, alsso hilft Zzenia dir Material für ein Flosss zu ssammeln. Die Mutter stellt alless bereit wass wir brauchen. Nimm diesse Axt und schlage zehn Stämme von diessen alten Bäumen. Bring ssie Zzenia dann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 4))
talkEntry:addCondition(condition_item(3, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss. If you do not wish to leave you can stay here. I can always use another fisherman. Ozzerwize gazzer ten logs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 4))
talkEntry:addCondition(condition_item(3, "all", "<", 10, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Zss. Wenn du nicht gehen willsst, kannsst du auch hier bleiben. Zzenia kann auch einen anderen Fischer fragen. Anssonssten hole zehn Stämme.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 4))
talkEntry:addCondition(condition_item(3, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_deleteitem(3, 5, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 5))
talkEntry:addConsequence(consequence_item(3572, 2, 333, nil))
talkEntry:addResponse("Yess you are getting zzere. Take zziss ssoup to nourish your body wizz zze giftss of zze Mozzer. Well done, keep five logs as you will need zzem for your journey back. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 4))
talkEntry:addCondition(condition_item(3, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_deleteitem(3, 5, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 5))
talkEntry:addConsequence(consequence_item(3572, 2, 333, nil))
talkEntry:addResponse("Ja, du kommsst da hin. Nimm diesse Ssuppe, um deinen Körper mit den Geschenken der Mutter zzu ernähren. Gut, gut. Behalte fünf Stämme. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Praise Zelphia III"))
talkEntry:addConsequence(consequence_item(24, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 6))
talkEntry:addResponse("Now I am in need of clay for my bed nesst. Take zeiss shovel. Gazzer ten shovels full of clay from zee clay pit and return when you have zzem.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 5))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Preise Zelphia III"))
talkEntry:addConsequence(consequence_item(24, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 6))
talkEntry:addResponse("Du wirsst ssie für deine Rückreisse brauchen. Nun braucht Zzenia aber Lehm für ihr Schlafnesst. Nimm die Schaufel und gehe zzu einer Lehmgrube. Dort ssammelsst du zhen Schaufeln voll Lehm und bringsst ssie zzu Zzenia zzurück.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 5))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Praise Zelphia III"))
talkEntry:addConsequence(consequence_item(24, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 6))
talkEntry:addResponse("Now I am in need of clay for my bed nesst. Take zeiss shovel. Gazzer ten shovels full of clay from zee clay pit and return when you have zzem.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 5))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Preise Zelphia III"))
talkEntry:addConsequence(consequence_item(24, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 6))
talkEntry:addResponse("Du wirsst ssie für deine Rückreisse brauchen. Nun braucht Zzenia aber Lehm für ihr Schlafnesst. Nimm die Schaufel und gehe zzu einer Lehmgrube. Dort ssammelsst du zhen Schaufeln voll Lehm und bringsst ssie zzu Zzenia zzurück.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 6))
talkEntry:addCondition(condition_item(26, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss. If you do not wish to leave you can stay here. I can always use another fisherman. Ozzerwize, gazzer ten shovels full of clay.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 6))
talkEntry:addCondition(condition_item(26, "all", "<", 10, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Zss. Wenn du nicht gehen willsst, kannsst du auch hier bleiben. Zzenia kann auch einen anderen Fischer fragen. Anssonssten hole zhen Schaufeln voll Lehm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 6))
talkEntry:addCondition(condition_item(26, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_deleteitem(26, 5, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 7))
talkEntry:addConsequence(consequence_item(3572, 2, 333, nil))
talkEntry:addResponse("Yess you are getting zzere. Take zziss ssoup to nourish your body wizz zze giftss of zze Mozzer. Good, zziss clay iz perfect for my bed nesst. You may keep half zze clay.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 6))
talkEntry:addCondition(condition_item(26, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_deleteitem(26, 5, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 7))
talkEntry:addConsequence(consequence_item(3572, 2, 333, nil))
talkEntry:addResponse("Ja, du kommsst da hin. Nimm diesse Ssuppe, um deinen Körper mit den Geschenken der Mutter zzu ernähren. Gut, diesser Lehm isst perfekt für Zzeniass Schlafnesst. Du kannsst die Hälfte dess Lehmss behalten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Praise Zelphia IV"))
talkEntry:addConsequence(consequence_item(73, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 8))
talkEntry:addResponse("You will need fish for your offering to zze Mozzer, sso I will give you ten fish for your work. Now take your offering and materialss to the altar, kneel, and pray to zze Mother for help to reach zze island to zze ssouzz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 7))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Preise Zelphia IV"))
talkEntry:addConsequence(consequence_item(73, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 8))
talkEntry:addResponse("Du wirsst Fisch für die Opfergabe an Mutter brauchen. Zzenia gibt dir zzehn Stück dafür. Nimm die Opfergabe und dass Material und bringe es zzum Altar, knie nieder und bete zzur Mutter, damit ssie dir hilft dass Insel, dasss in den Ssüden führt, zzu erreichen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 7))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Praise Zelphia IV"))
talkEntry:addConsequence(consequence_item(73, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 8))
talkEntry:addResponse("You will need fish for your offering to zze Mozzer, sso I will give you ten fish for your work. Now take your offering and materialss to the altar, kneel, and pray to zze Mother for help to reach zze island to zze ssouzz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 7))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Preise Zelphia IV"))
talkEntry:addConsequence(consequence_item(73, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 8))
talkEntry:addResponse("Du wirsst Fisch für die Opfergabe an Mutter brauchen. Zzenia gibt dir zzehn Stück dafür. Nimm die Opfergabe und dass Material und bringe es zzum Altar, knie nieder und bete zzur Mutter, damit ssie dir hilft dass Insel, dasss in den Ssüden führt, zzu erreichen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss. If you do not wish to leave you can stay here. I can always use another fisherman. Ozzerwise, takez zze ssupplies for zze raft to zze altar and pray to zze Mozzer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 8))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Zss. Wenn du nicht gehen willsst, kannsst du auch hier bleiben. Zzenia kann auch einen anderen Fischer fragen. Anssonssten nimm die Materialien für dass Flosss mit zzum Altar und bete zzur Mutter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Praise Zelphia V"))
talkEntry:addConsequence(consequence_item(355, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 10))
talkEntry:addResponse("Oh, Zenia remember you from before! Take zzesse fissh, make offering and pray for zze Mozzer'ss help in getting back to zze big island.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 9))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Preise Zelphia V"))
talkEntry:addConsequence(consequence_item(355, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 10))
talkEntry:addResponse("Oh, Zzenia erinnert sich an dich von früher. Nimm den Fisch, opfere ihn und bete um Mutterss Hilfe, um zzur grosssen Inssel zzurück zzu kommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 9))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Praise Zelphia V"))
talkEntry:addConsequence(consequence_item(355, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 10))
talkEntry:addResponse("Oh, Zenia remember you from before! Take zzesse fissh, make offering and pray for zze Mozzer'ss help in getting back to zze big island.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 9))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Preise Zelphia V"))
talkEntry:addConsequence(consequence_item(355, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(502, "=", 10))
talkEntry:addResponse("Oh, Zzenia erinnert sich an dich von früher. Nimm den Fisch, opfere ihn und bete um Mutterss Hilfe, um zzur grosssen Inssel zzurück zzu kommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss. If you do not wish to leave you can stay here. Pray to zze Mozzer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(502, "=", 10))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Zss. Wenn du nicht gehen willsst, kannsst du auch hier bleiben. Zzenia kann auch einen anderen Fischer fragen. Bete zzur Mutter.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Dass Leben isst schön auf meiner Heimatinssel.", "Life iz good on my island home.")
talkingNPC:addCycleText("Wass könnte eine alte Echse wie ich im Leben mehr brauchen.", "What more could an old lizard like me assk for in life?")
talkingNPC:addCycleText("#me schaut glücklich auf die Insel und das Wasser.", "#me looks around happily at the island and the water.")
talkingNPC:addCycleText("Zzenia hat die Bäume hier sselbst hergebracht. Hat sie vom Ssetzzling an grosssgezzogen.", "Zenia brought in zzesse trees mysself! Nurtured zzem from jusst sseedlingsss.")
talkingNPC:addCycleText("#me verschlingt einen ganzen Fisch.", "#me slurps a whole fish down her throat.")
talkingNPC:addCycleText("Erzzähl den Fanatikern nicht, dasss Zzenia hier lebt. Ssie wollem meinen schönen Platzz für ssich sselbsst.", "Don't tell zzem zealotss I'm living here. Zzey'll want my fine place for zzemsselvess.")
talkingNPC:addCycleText("#me klopft sich auf den Bauch, nachdem sie laut gerülpst hat 'Dass war ein ssehr Guter!'", "#me pounds her chest after burping loudly. 'Zzat wass a good one!'")
talkingNPC:addCycleText("#me döst während sie am Ufer sitzt.", "#me dozes as she sits by the shore.")
talkingNPC:addCycleText("Mutter isst gut zzu Zzenia.", "Zze Mozzer iz good to Zenia.")
talkingNPC:addCycleText("Zzeniass Schlafnesst muss sstets in Stand gehalten werden. Zzenia braucht mehr Materialien.", "Zenia ssleeping nesst iz alwayss in need of repairsss, Zenia jusst need ssome more ssupliesss.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(4)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Zenia", "This is NPC Zenia.")
mainNPC:setUseMessage("Fass mich nicht an!", "Hands off!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 356)
mainNPC:setEquipment(3, 816)
mainNPC:setEquipment(11, 196)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 367)
mainNPC:setEquipment(10, 53)
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
