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
talkEntry:addConsequence(consequence_inform("[Game Help] This is NPC Ssalva. Keywords are: Quest, task, Tanora, Zelphia, mother, rogue, extremist, Lake of Life, water, and prayer."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dies ist NPC Ssalva. Stichworte sind: Aufgabe, Tanora, Zelphia, Mutter, Schurke, Extremist, See des Lebens, Wasser und Gebet."))
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
talkEntry:addResponse("Blesssingss and greetingss of zze Mozzer.")
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
talkEntry:addResponse("Grüssse und Segensswünsche der Mutter.")
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
talkEntry:addResponse("Blesssingss and greetingss of zze Mozzer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Grüssse und Segensswünsche der Mutter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Sswim sstrong. May zze Mozzer guide you back.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Schwimme kräftig. Möge Mutter dich zurückgeleiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Ssalva iss fine and doing zze work of zze Mozzer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ssalva geht es gut und ssie macht ihre Arbeit für Mutter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Sshe iss Ssalva, zze true sservant of zze Mozzer.")
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
talkEntry:addTrigger("wie heißen")
talkEntry:addTrigger("wie heisst")
talkEntry:addTrigger("wie heissen")
talkEntry:addResponse("Sie ist Ssalva, wahre Dienerin der Mutter.")
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
talkEntry:addResponse("Ich bin keine Marktfrau.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("water")
talkEntry:addResponse("Water iss zze life of uss all, zze gift of zze mother.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wasser")
talkEntry:addResponse("Wassser ist unser aller Leben, das Geschenk der Mutter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("prayer")
talkEntry:addTrigger("worship")
talkEntry:addResponse("Zze zzealotss have many prayerss in zze name of zze Mozzzer. Many of zzem are not proper prayerss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gebet")
talkEntry:addTrigger("Andacht")
talkEntry:addResponse("Die Fanatiker haben viele Anbeter im Namen der Mutter. Viele von ihnen ssind keine guten Glaubenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addTrigger("Mozzer")
talkEntry:addResponse("Zze Mozzer iss everyzzing. Zze extremisstss do foul zzingss in her name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mother")
talkEntry:addResponse("Zze Mozzer iss everyzzing. Zze extremisstss do foul zzingss in her name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addTrigger("Mozzer")
talkEntry:addTrigger("Mutter")
talkEntry:addResponse("Mutter ist Alless. Die Extremisten tun schreckliche Dinge in ihrem Namen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lake")
talkEntry:addTrigger("life")
talkEntry:addResponse("Ssalva does ssee zzat zziss iss a large underground lake, which zze Mozzer hass given sspecial life for it glowss brightly. Ssalva greatly wisshess to one day sswim in zziss lake.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("See des")
talkEntry:addTrigger("Leben")
talkEntry:addResponse("Ssalva hat gesehen, dass es ein grossser unterirdischer See ist, welchem Mutter besonderes Leben mit strahlendem Leuchten gegeben hat. Ssalvas grössster Wunsch ist eines Tages in diesem See zu schwimmen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zzarn")
talkEntry:addTrigger("Ska")
talkEntry:addResponse("Zziss group of zealotss are vilifying zze Mozzer's name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rogue")
talkEntry:addTrigger("extremist")
talkEntry:addResponse("Zziss group of zealotss are vilifying zze Mozzer's name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zzarn")
talkEntry:addTrigger("Ska")
talkEntry:addTrigger("Schurke")
talkEntry:addTrigger("Extremist")
talkEntry:addResponse("Diesse Gruppe von Fanatikern verunglimpfen den Namen der Mutter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Ssalva only hass alliance to zze Mozzer. Zze otherss are of no importance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ssalva hat nur einen Bund mit Mutter. Alle anderen sind ohne Bedeutung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ssalva only hass alliance to zze Mozzer. Zze otherss are of no importance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ssalva hat nur einen Bund mit Mutter. Alle anderen sind ohne Bedeutung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ssalva only hass alliance to zze Mozzer. Zze otherss are of no importance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ssalva hat nur einen Bund mit Mutter. Alle anderen sind ohne Bedeutung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ssalva only hass alliance to zze Mozzer. Zze otherss are of no importance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ssalva hat nur einen Bund mit Mutter. Alle anderen sind ohne Bedeutung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ssalva only hass alliance to zze Mozzer. Zze otherss are of no importance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ssalva hat nur einen Bund mit Mutter. Alle anderen sind ohne Bedeutung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Ssalva only hass alliance to zze Mozzer. Zze otherss are of no importance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Ssalva hat nur einen Bund mit Mutter. Alle anderen sind ohne Bedeutung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ssalva only hass alliance to zze Mozzer. Zze otherss are of no importance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ssalva hat nur einen Bund mit Mutter. Alle anderen sind ohne Bedeutung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ssalva only hass alliance to zze Mozzer. Zze otherss are of no importance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ssalva hat nur einen Bund mit Mutter. Alle anderen sind ohne Bedeutung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia I"))
talkEntry:addConsequence(consequence_quest(501, "=", 1))
talkEntry:addResponse("Ksss. Ssomewhere easst of here iss zze Underground Lake of Life. It iss an area zzat hass been taken over by radical religiouss zealotss of zze Mozzer. Find a way to zzeir sstronghold. We musst errradicate zzem.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia I"))
talkEntry:addConsequence(consequence_quest(501, "=", 1))
talkEntry:addResponse("Ksss. Irgendwo östlich von hier ist der Ssee des Lebenss. Der Bereich wird beherrscht von einer Gruppe radikal religiöser Fanatiker der Mutter. Finde einen Weg in ihre Festung. Wir müssen sie ausmerzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia I"))
talkEntry:addConsequence(consequence_quest(501, "=", 1))
talkEntry:addResponse("Ksss. Ssomewhere easst of here iss zze Underground Lake of Life. It iss an area zzat hass been taken over by radical religiouss zealotss of zze Mozzer. Find a way to zzeir sstronghold. We musst errradicate zzem.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia I"))
talkEntry:addConsequence(consequence_quest(501, "=", 1))
talkEntry:addResponse("Ksss. Irgendwo östlich von hier ist der Ssee des Lebenss. Der Bereich wird beherrscht von einer Gruppe radikal religiöser Fanatiker der Mutter. Finde einen Weg in ihre Festung. Wir müssen sie ausmerzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss. *Swishes her tail agitatedly* Zze must find a way to zze stronghold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 1))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss. *wedelt aufgeregt mit ihrem Schwanz* Sie muss Weg in die Festung finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded twenty-five silver coins."))
talkEntry:addConsequence(consequence_money("+", 2500))
talkEntry:addConsequence(consequence_quest(501, "=", 3))
talkEntry:addResponse("Zzzz. Good you found zzem. We musst take further meassuress against zze Zzarn'K'Ska. Take zzis reward as a token of gratitude.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünfundzwanzig Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 2500))
talkEntry:addConsequence(consequence_quest(501, "=", 3))
talkEntry:addResponse("Zzzz. Gut, du hast ssie gefunden. Wir müssen weitere Maßnahmen gegen sie ergreifen. Zzarn´K´Ska. Nimm diesse Belohnung als Zeichen des Dankes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia II"))
talkEntry:addConsequence(consequence_quest(501, "=", 4))
talkEntry:addResponse("Sss. There iss two large islandss? Find zze way to zze ssecond one. We must prevail.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia II"))
talkEntry:addConsequence(consequence_quest(501, "=", 4))
talkEntry:addResponse("Sss. Da sind zwei große Inseln? Finde einen Weg zur zweiten Insel. Wir müssen sie beherrschen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia II"))
talkEntry:addConsequence(consequence_quest(501, "=", 4))
talkEntry:addResponse("Sss. There iss two large islandss? Find zze way to zze ssecond one. We must prevail.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia II"))
talkEntry:addConsequence(consequence_quest(501, "=", 4))
talkEntry:addResponse("Sss. Da sind zwei große Inseln? Finde einen Weg zur zweiten Insel. Wir müssen sie beherrschen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss. Accesss to zze ssecond island iss necesssary to face zzisss zzreat to zze mozzer. Keep looking!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 4))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss. Der Zugang zur zweiten Insel ist notwendig, um bestehen zu können vor der Bedrohung für die Mutter. Sssuche weiter!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded fifty silver coins."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_quest(501, "=", 6))
talkEntry:addResponse("Yesss, Yesss very good. Let uss plan more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 5))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünfzig Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_quest(501, "=", 6))
talkEntry:addResponse("Ja, ja, sehr gut. Lass uns weiterplanen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia III"))
talkEntry:addConsequence(consequence_quest(501, "=", 7))
talkEntry:addResponse("Ksss.  Zzey do have undead walking around below.  Zzey not be hostile, but Ssalva would have you releasse five of zzeir ssoulss by killing zzem to go onto zze Muzzer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia III"))
talkEntry:addConsequence(consequence_quest(501, "=", 7))
talkEntry:addResponse("Ksss.  Da ssind Untote die dort unten herumsstreizzen. Die ssind nicht gefährlizz. Aber Ssalva wünszzt, dass du fünf von ihnen tötesst. Ihre Sselen ssollen ssur Mutter gehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia III"))
talkEntry:addConsequence(consequence_quest(501, "=", 7))
talkEntry:addResponse("Ksss.  Zzey do have undead walking around below.  Zzey not be hostile, but Ssalva would have you releasse five of zzeir ssoulss by killing zzem to go onto zze Muzzer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia III"))
talkEntry:addConsequence(consequence_quest(501, "=", 7))
talkEntry:addResponse("Ksss.  Da ssind Untote die dort unten herumsstreizzen. Die ssind nicht gefährlizz. Aber Ssalva wünszzt, dass du fünf von ihnen tötesst. Ihre Sselen ssollen ssur Mutter gehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 12))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded seventy-five silver coins."))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_quest(501, "=", 13))
talkEntry:addResponse("Zzey be wizz zze Muzzer now zzeir ssoulss be at resst.  Ssalva doess zzank you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 12))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünfundsiebzig Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 7500))
talkEntry:addConsequence(consequence_quest(501, "=", 13))
talkEntry:addResponse("Ihre Sselen ruhen nun mit der Mutter. Ssalva ssagt Danke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, ">", 7))
talkEntry:addCondition(condition_quest(501, "<", 11))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("You musst releasse five ssoulss of the peaceful undead back to zze Muzzer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, ">", 7))
talkEntry:addCondition(condition_quest(501, "<", 11))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Du ssollsst fünf Sselen befreien, damit ssie ssurück ssur Mutter gehen können.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 13))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia IV"))
talkEntry:addConsequence(consequence_quest(501, "=", 14))
talkEntry:addResponse("Pleasse find a water blosssom and give it to zze Goddess Tanora at the altar, which stands in the Lake of Life.  Requesst a blesssing before we continue, assking for her undersstanding in what musst be done. *place the item on the offering plate inside the dungeon*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 13))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia IV"))
talkEntry:addConsequence(consequence_quest(501, "=", 14))
talkEntry:addResponse("Bitte finde eine Wassserblüte und gib diese der Göttin Tanora beim Altar, welcher im See des Lebens steht. Erbitte ihren Ssegen und ihr Verständnis für das, was wir tun müssen, bevor wir fortfahren. *lege den Gegenstand auf die Opferplatte im Verlies*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 13))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia IV"))
talkEntry:addConsequence(consequence_quest(501, "=", 14))
talkEntry:addResponse("Pleasse find a water blosssom and give it to zze Goddess Tanora at the altar, which stands in the Lake of Life.  Requesst a blesssing before we continue, assking for her undersstanding in what musst be done. *place the item on the offering plate inside the dungeon*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 13))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia IV"))
talkEntry:addConsequence(consequence_quest(501, "=", 14))
talkEntry:addResponse("Bitte finde eine Wassserblüte und gib diese der Göttin Tanora beim Altar, welcher im See des Lebens steht. Erbitte ihren Ssegen und ihr Verständnis für das, was wir tun müssen, bevor wir fortfahren. *lege den Gegenstand auf die Opferplatte im Verlies*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 14))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss. Zze musst honour zee Mozzer before we can proceed. Provide her wizz zze water blosssom offering. *Place the item on the offering plate inside the dungeon.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 14))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss. Bevor wir weitermachen musst du Mutter ehren. Biete ihr die Wassserblüte an. *Lege den Gegenstand auf die Opferplatte im Verlies.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 15))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five custard pies."))
talkEntry:addConsequence(consequence_item(1153, 5, 333, nil))
talkEntry:addConsequence(consequence_quest(501, "=", 16))
talkEntry:addResponse("Zze Mozzer will look over uss becausse of your gift. We may now continue in confidence.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 15))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst fünf Eiercremetorten."))
talkEntry:addConsequence(consequence_item(1153, 5, 333, nil))
talkEntry:addConsequence(consequence_quest(501, "=", 16))
talkEntry:addResponse("Mutter wird wegen deiner Gabe über uns wachen. Wir können nun mit Zuversicht fortfahren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 16))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia V"))
talkEntry:addConsequence(consequence_quest(501, "=", 17))
talkEntry:addResponse("Pleasse go ssee a dear friend of mine. Zenia will give you ssome information I require in exchange for ssome itemss sshe hass been craving. Pleasse bring Zenia one cusstard pie, two fissh soupss, 20 eggss, and five of each type of fish (salmon, trout, horse mackerel, and rose fish). You can find Zenia ssomewhere hiding on an island in the Lake of Life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 16))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia V"))
talkEntry:addConsequence(consequence_quest(501, "=", 17))
talkEntry:addResponse("Bitte ssuch einen guten Freund von mir auf. Zzenia wird dir einige Informationen geben, die ich benötige, im Tausch gegen einige Dinge, die ssie verlangt. Bitte bringe Zzenia eine Eiercremetorte, zzwei Fischssuppen, 20 Eier und fünf Fische jeder Art (Lachs, Forelle, Stachelmakrele, and Rotbarsch). Du kannsst Zzenia irgendwo auf einer Inssel im Ssee des Lebenss finden, wo ssie ssich versteckt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 16))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia V"))
talkEntry:addConsequence(consequence_quest(501, "=", 17))
talkEntry:addResponse("Pleasse go ssee a dear friend of mine. Zenia will give you ssome information I require in exchange for ssome itemss sshe hass been craving. Pleasse bring Zenia one cusstard pie, two fissh soupss, 20 eggss, and five of each type of fish (salmon, trout, horse mackerel, and rose fish). You can find Zenia ssomewhere hiding on an island in the Lake of Life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 16))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia V"))
talkEntry:addConsequence(consequence_quest(501, "=", 17))
talkEntry:addResponse("Bitte ssuch einen guten Freund von mir auf. Zzenia wird dir einige Informationen geben, die ich benötige, im Tausch gegen einige Dinge, die ssie verlangt. Bitte bringe Zzenia eine Eiercremetorte, zzwei Fischssuppen, 20 Eier und fünf Fische jeder Art (Lachs, Forelle, Stachelmakrele, and Rotbarsch). Du kannsst Zzenia irgendwo auf einer Inssel im Ssee des Lebenss finden, wo ssie ssich versteckt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Takess zzese gifts to Zenia and get informations from her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 17))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Nimm diesse Geschenke für Zzenia und hole die Informationen von ihr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 18))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a red steel shield and one hundred fifty silver coins."))
talkEntry:addConsequence(consequence_money("+", 15000))
talkEntry:addConsequence(consequence_item(2388, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(501, "=", 19))
talkEntry:addResponse("Ksss. Zat iss mosst interessting newss. If you can helpss me more, we will erradicate zzem.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 18))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst ein rotes Stahlschild und einhundertfünfzig Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 15000))
talkEntry:addConsequence(consequence_item(2388, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(501, "=", 19))
talkEntry:addResponse("Zsss. Dass ssind ssehr interesssante Neuigkeiten. Wenn du mir weiterhin helfen kannsst, dann werden wir ssie ausslöschen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 19))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia VI"))
talkEntry:addConsequence(consequence_quest(501, "=", 20))
talkEntry:addResponse("Sssss. We musst get rid of zzesse Lake of Life renegadess. Pleasse kill 15 for Ssalva. Clear waterss Ssalva doess wissh for you in your endeavour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 19))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia VI"))
talkEntry:addConsequence(consequence_quest(501, "=", 20))
talkEntry:addResponse("Sssss. Wir müssen diese Abtrünnigen vom See des Lebens loswerden. Bitte töte 15 von ihnen für Ssalva. Klare Wassser wünscht Ssalva für deine Bemühungen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 19))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia VI"))
talkEntry:addConsequence(consequence_quest(501, "=", 20))
talkEntry:addResponse("Sssss. We musst get rid of zzesse Lake of Life renegadess. Pleasse kill 15 for Ssalva. Clear waterss Ssalva doess wissh for you in your endeavour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 19))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia VI"))
talkEntry:addConsequence(consequence_quest(501, "=", 20))
talkEntry:addResponse("Sssss. Wir müssen diese Abtrünnigen vom See des Lebens loswerden. Bitte töte 15 von ihnen für Ssalva. Klare Wassser wünscht Ssalva für deine Bemühungen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, ">", 19))
talkEntry:addCondition(condition_quest(501, "<", 35))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss!!! Kill 15 Renegadess for Ssalva. Zziss musst be done!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, ">", 19))
talkEntry:addCondition(condition_quest(501, "<", 35))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss!!! Töte 15 Abtrünnige für Ssalva. Es muss getan werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 35))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded one hundred fifty silver coins."))
talkEntry:addConsequence(consequence_money("+", 15000))
talkEntry:addConsequence(consequence_quest(501, "=", 36))
talkEntry:addResponse("Yesss, yesss very good. One more ssstep sshould do it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 35))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst einhundertfünfzig Silberstücke."))
talkEntry:addConsequence(consequence_money("+", 15000))
talkEntry:addConsequence(consequence_quest(501, "=", 36))
talkEntry:addResponse("Ja, ja, nur noch ein Schritt bleibt zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 36))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia VII"))
talkEntry:addConsequence(consequence_quest(501, "=", 37))
talkEntry:addResponse("It'z time to take out zzeir leader. Kill zze temple warrior to break zzeir morale.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 36))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia VII"))
talkEntry:addConsequence(consequence_quest(501, "=", 37))
talkEntry:addResponse("Es wird Zeit ihren Anführer zu beseitigen. Töte den Tempelkrieger, um ihre Moral zu brechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 36))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Zzarn'K'Ska of Zelphia VII"))
talkEntry:addConsequence(consequence_quest(501, "=", 37))
talkEntry:addResponse("It'z time to take out zzeir leader. Kill zze temple warrior to break zzeir morale.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 36))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Zzarn'K'Ska von Zelphia VII"))
talkEntry:addConsequence(consequence_quest(501, "=", 37))
talkEntry:addResponse("Es wird Zeit ihren Anführer zu beseitigen. Töte den Tempelkrieger, um ihre Moral zu brechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, ">", 36))
talkEntry:addCondition(condition_quest(501, "<", 38))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss! If zze leader issn't killed zzey will not break. Kill zze temple warrior to break zzeir morale.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, ">", 36))
talkEntry:addCondition(condition_quest(501, "<", 38))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Ksss! Solange ihr Anführer nicht getötet wurde werden sie nicht aufgeben. Töte den Tempelkrieger, um ihre Moral zu brechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 38))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a pure water."))
talkEntry:addConsequence(consequence_item(2554, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(501, "=", 39))
talkEntry:addResponse("Zzey should fall now. Zzank you for your effortss. Accept zziss gift of zze Mozzer as a token of gratitude.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 38))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du erhältst eine reines Wasser."))
talkEntry:addConsequence(consequence_item(2554, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(501, "=", 39))
talkEntry:addResponse("Sie sollten jetzt fallen. Danke für deine Bemühungen. Nimm dieses Geschenk der Mutter als Zeichen der Anerkennung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 39))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Zzey should fall now. Zzank you for your effortss. Ssalva hass nozzing else for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 39))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Sie sollten jetzt fallen. Danke für deine Bemühungen. Ssalva hat nichts für euch zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 39))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Zzey should fall now. Zzank you for your effortss. Ssalva hass nozzing else for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(501, "=", 39))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Sie sollten jetzt fallen. Danke für deine Bemühungen. Ssalva hat nichts für euch zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Möge Mutter uns schützen.", "May zze Mozzer sssave uss.")
talkingNPC:addCycleText("#mes Schwanz zuckt und sie lässt ihren Blick über das Gebiet streifen.", "#me twitches her tail and looks around the area.")
talkingNPC:addCycleText("Ssss. Wir müssen die Schurken bestrafen.", "Ssss. We hass to get zze roguess.")
talkingNPC:addCycleText("Schurken schänden den Namen der Mutter. Hilf mir sie zu beseitigen.", "Roguess are defiling zze Mozzersss name. Join me in eliminating zzem.")
talkingNPC:addCycleText("Der Zzarn'K'Ska der Zelphia muss aufgehalten werden.", "The Zzarn'K'Ska of Zelphia musst be sstopped.")
talkingNPC:addCycleText("#me lässt ihre Zunge über die Schnauze gleiten.", "#me swipes her tongue over her snout.")
talkingNPC:addCycleText("#me kniet, ein Gebet zur Mutter sprechend.", "#me kneels, saying a prayer to the Mother.")
talkingNPC:addCycleText("#me streicht mit einer Hand über ihren Kamm und schaut sich besorgt um.", "#me runs a hand over the crest scales on her head while looking around worriedly.")
talkingNPC:addCycleText("#me schnüffelt die Luft, ihre Zunge schnalzt heraus um zu schmecken.", "#me sniffs at the air, flicking out her tongue for a taste.")
talkingNPC:addCycleText("#me stützt sich auf ihren Schwanz ab, als sie überlegend verweilt.", "#me leans back on her tail and rests contemplating.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(4)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Ssalva", "This is NPC Ssalva.")
mainNPC:setUseMessage("Fass mich nicht an!", "Hands off!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 181)
mainNPC:setEquipment(11, 2418)
mainNPC:setEquipment(5, 2784)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 461)
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
