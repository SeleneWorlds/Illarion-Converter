local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the herb trader Fredericus. Keyphrases: Hello, Tanora, trade."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Kräuterhändler Fredericus. Schlüsselwörter: Hallo, Tanora, Handel."))
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
talkEntry:addResponse("G'day. I just came ashore.")
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
talkEntry:addResponse("Tag. Bin gerade von großer Fahrt zurück.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("G'day. I just came ashore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Tag. Bin gerade von großer Fahrt zurück.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Good trip.")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Gute Fahrt.")
talkEntry:addResponse("Auf wiedersehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Good trip.")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Gute Fahrt.")
talkEntry:addResponse("Auf wiedersehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Fine, thank you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Gut, danke der Nachfrage.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Fredericus. That's me.")
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
talkEntry:addResponse("Fredericus. Das bin ich.")
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
talkEntry:addResponse("Ya want to trade? Aye, have a look!")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addResponse("Du willst handeln? Da schau her was ich hab!")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich verteile keine Aufgaben.")
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
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich verteile keine Aufgaben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I'm a seafaring herb trader. A hard job, but an honest and honourable job.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin ein zur See fahrender Kräuterhändler. Das ist ein hartes Geschäft, aber es ist ehrlich und ehrbar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I'm a seafaring herb trader. A hard job, but an honest and honourable job.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin ein ein zur See fahrender Kräuterhändler. Das ist ein hartes Geschäft, aber es ist ehrlich und ehrbar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I once sailed to Gobaith, the natives tossed onions at each other!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ich bin einmal nach Gobaith gesegelt, die Eingeborenen dort haben mit Zwiebeln aufeinander geworfen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Oh, interesting, and do you want to become a sailor like me?")
talkEntry:addResponse("A nice name, indeed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Oh, interessant, wollt ihr auch ein Seefahrer wie ich werden?")
talkEntry:addResponse("Ein netter Name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cape")
talkEntry:addTrigger("Farewell")
talkEntry:addResponse("Cape Farewell is to the south and west, land's end one could say.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kap")
talkEntry:addTrigger("Abschied")
talkEntry:addResponse("Das Kap des Abschiedes ist im Südwesten, am Ende der Welt könnte man sagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("trader")
talkEntry:addTrigger("merchant")
talkEntry:addTrigger("collegue")
talkEntry:addTrigger("vendor")
talkEntry:addTrigger("market")
talkEntry:addResponse("Here, at the marketplace, there are many traders. You can buy many goods here in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("händler")
talkEntry:addTrigger("kollege")
talkEntry:addTrigger("höker")
talkEntry:addTrigger("markt")
talkEntry:addResponse("Hier auf dem Marktplatz gibt es einige Händler. Man kann viele Waren hier in Cadomyr kaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kraut")
talkEntry:addTrigger("Kräuter")
talkEntry:addResponse("Kräuter, besonders unsere geschätzten Wüstenpflanzen, werden in Übersee mit Gold aufgewogen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("herb")
talkEntry:addResponse("For herbs, especially our desert plants, you can get their weight in gold abroad.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("#me snorts angrily.")
talkEntry:addResponse("Better avoid Runewick's leader. Whatever you say, it is wrong. Whatever you do, it is wrong.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("#me schnaubt wütend.")
talkEntry:addResponse("Vermeidet den Herren von Runewick. Was immer ihr sagt, es ist falsch. Was immer ihr tut, es ist falsch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("#me snorts angrily.")
talkEntry:addResponse("Better avoid Runewick's leader. Whatever you say, it is wrong. Whatever you do, it is wrong.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("#me schnaubt wütend.")
talkEntry:addResponse("Vermeidet den Herren von Runewick. Was immer ihr sagt, es ist falsch. Was immer ihr tut, es ist falsch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("If I were you, I'd never go to Runewick. They might be nice, but also, false and not honest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Wenn ich an eurer Stelle wäre, würde ich nie nach Runewick gehen. Sie mögen nett dort sein, aber auch unehrlich und falsch. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("I'd like to toss some smelly fish at the Don. I will never understand how such a... villain can become leader of a community.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ich würd' gerne mal ein paar stinkige Fische auf den Don werfen. Ich werde nie verstehen, wie so ein... Rabauke der Anführer einer Gemeinschaft werden konnte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is not a safe place. The Don does not want it to be, so he can demand money for protection.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist kein sicherer Ort. Aber der Don will es nicht anders, denn nur so kann er Schutzgeld erpressen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Queen Rosaline, well, she is the best thing that could happen to Cadomyr. I say that and I mean it, the best woman is better than the worst man.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Königin Rosaline ist das beste, was Cadomyr geschehen konnte. Ich sage es, weil ich es meine; die beste Frau ist immernoch besser als der schlechteste Mann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Queen Rosaline, well, she is the best thing that could happen to Cadomyr. I say that and I mean it, the best woman is better than the worst man.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Königin Rosaline ist das beste, was Cadomyr geschehen konnte. Ich sage es, weil ich es meine; die beste Frau ist immernoch besser als der schlechteste Mann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is my home, where I return to after setting sails.")
talkEntry:addResponse("I love Cadomyr as I love the sea.")
talkEntry:addResponse("Cadomyr's best, forget the rest!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist meine Heimat, in die ich mit vollen Segeln zurückkehre.")
talkEntry:addResponse("Ich liebe Cadomyr wie das weite, offene Meer.")
talkEntry:addResponse("Cadomyr kriegt das beste, für die anderen bleiben nur Reste.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Oh, Albar, how much I desire to sail there... A land of justice and honour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Oh, Albar, wie sehr wünschte ich, ich könnte dorthin segeln. Ein Land der Gerechtigkeit und der Ehre.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("What did you say?")
talkEntry:addResponse("I did not understand you.")
talkEntry:addResponse("Pardon me?")
talkEntry:addResponse("Shh, do not talk about this too loud.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Was habt ihr gesagt?")
talkEntry:addResponse("Ich habe euch nicht verstanden.")
talkEntry:addResponse("Entschuldigung?")
talkEntry:addResponse("Psst, sprecht darüber nicht so laut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Arrogant wise guys they are, and a hard working man does not matter to the oh-so-noble people there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Arrogante Besserwisser sind das. Und ein hart arbeitender Mann zählt nichts für die ach-so-noblen Leute dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Goddesses aren't prayed to in Albar, they say, but when you are at sea, you'll pray to Tanora and Findari, that's for sure.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("In Albar betet man keine Göttinnen an, so heißt es. Aber wenn ihr mal auf See seid, dann werdet ihr sicherlich Tanora und Findari anflehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Tanora guides my boat, Tanora protects my boat, Tanora causes the waves that sink my boat.")
talkEntry:addResponse("Hail Tanora!")
talkEntry:addResponse("I obey Tanora, but if you want to meet people who adore her, go to Cape Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Tanora lenkt mein Boot, Tanora schützt mein Boot, Tanora schickt die Wellen, die mein Boot zermalmen.")
talkEntry:addResponse("Huldigt Tanora!")
talkEntry:addResponse("Ich gehorche Tanora, aber wenn ihr Leute treffen wollt, die sie verehren, geht zum Kap des Abschiedes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari grants the devastating storm or the wind that blows the sail; depending on her mood.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari bringt den vernichtenden Sturm oder den Wind, der die Segel aufbläht, je nach ihrer Stimmungslage.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom helps me to do good business, but my fate is in the hand of Tanora and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom verhilft mir manches mal zu guten Geschäften, aber mein Leben liegt in Tanoras und Findaris Händen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I swear I saw a sea serpent!")
talkEntry:addResponse("If an evil spirit haunts a ship, all is lost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Ich schwöre, ich habe ein Seeungeheuer gesehen!")
talkEntry:addResponse("Wenn ein böser Geist auf einem Schiff sein Unwesen treibt, dann ist es meist bald verloren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Fredericus")
talkEntry:addResponse("I am merely a humble sailor. But I could tell you about the Gods, shall I?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fredericus")
talkEntry:addResponse("Ich bin nur ein einfacher Seefahrer, aber ich könnte euch etwas über die Götter erzählen, wenn ihr Zeit habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me reinigt sich seine Nägel mit einem Dolch.", "#me cleans his finger nails with a dagger.")
talkingNPC:addCycleText("#me schaut sich gereizt um.", "#me looks about crankily.")
talkingNPC:addCycleText("#me verstaut eine Flasche in seinem Beutel.", "#me stores a bottle in his bag.")
talkingNPC:addCycleText("#me schreibt einen Brief.", "#me writes a letter.")
talkingNPC:addCycleText("#me schaut zu den Wolken.", "#me gazes at the clouds.")
talkingNPC:addCycleText("#me summt etwas vor sich hin.", "#me hums to himself.")
tradingNPC:addItem(trade.tradeNPCItem(126,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(799,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(133,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(134,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(135,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(136,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(137,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(140,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(141,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(142,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(143,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(144,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(145,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(147,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(148,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(149,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(151,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(153,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(155,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(156,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(157,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(158,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(159,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(160,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(161,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(162,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(163,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(405,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(406,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(407,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(752,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(753,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(759,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(763,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(767,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(133,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(134,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(135,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(136,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(137,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(140,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(141,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(142,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(143,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(144,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(145,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(147,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(148,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(149,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(151,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(153,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(155,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(156,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(157,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(158,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(159,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(160,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(161,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(162,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(163,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(405,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(406,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(407,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(752,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(753,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(759,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(763,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(767,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(3787,"buyPrimary"))
tradingNPC:addNotEnoughMoneyMsg("Ein bisschen zu teuer für dich.", "That's too expensive for you.")
tradingNPC:addDialogClosedMsg("Und wieder ein zufriedener Kunde.", "And another satisfied customer.")
tradingNPC:addDialogClosedNoTradeMsg("Auf bald!", "Farewell!")
tradingNPC:addWrongItemMsg("Ich handle nur mit Kräutern.", "I trade only herbs.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der Kräuterkundige Fredericus.", "This NPC is the herb trader Fredericus.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt umher.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 182)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 183)
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
