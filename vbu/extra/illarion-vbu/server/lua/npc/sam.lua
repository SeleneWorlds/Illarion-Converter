local consequence_repair = require("npc.base.consequence.repair")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Sam, a guest of The Hemp Necktie Inn . Keywords: repair, tell something, Gobaith"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Sam, ein Gast im Gasthof zur Hanfschlinge. Schlüsselwörter: reparieren, erzähl etwas, Gobaith"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greetings")
talkEntry:addTrigger("Be greeted")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addResponse("#me raises his hand and waves. 'Greetings...'")
talkEntry:addResponse("#me exhales thickly. 'Greets.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grüße")
talkEntry:addTrigger("Gruß")
talkEntry:addTrigger("Seid gegrüßt")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addTrigger("mit dir")
talkEntry:addResponse("#me hebt seine Hand und winkt. 'Grüße dich...'")
talkEntry:addResponse("#me atmet erschöpft aus. 'H-h...Tag.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greebas")
talkEntry:addTrigger("Greebs")
talkEntry:addResponse("#me raises his hand and waves. 'Greetings...'")
talkEntry:addResponse("#me exhales thickly. 'Greets.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greebas")
talkEntry:addTrigger("Greebs")
talkEntry:addResponse("#me hebt seine Hand und winkt. 'Grüße dich...'")
talkEntry:addResponse("#me atmet erschöpft aus. 'H-h...Tag.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Good bye")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare thee well")
talkEntry:addResponse("#me nods a bit.")
talkEntry:addResponse("Bye...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehabt euch wohl")
talkEntry:addResponse("#me nickt ein wenig.")
talkEntry:addResponse("Tschüss...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addTrigger("See you")
talkEntry:addResponse("'#me nods a bit.")
talkEntry:addResponse("Bye...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addTrigger("See you")
talkEntry:addResponse("#me nickt ein wenig.")
talkEntry:addResponse("Tschüss...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Nothing...it's nothing. Everything's alright.")
talkEntry:addResponse("I need a slug of rum.. no, never more!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befinden")
talkEntry:addResponse("Nichts... es ist nichts. Allesch in beschter Ordnuch.")
talkEntry:addResponse("Könnte einen Schluck Schnaps.. nein, nimmer mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Sam...I'm Sam. Just Sam.")
talkEntry:addResponse("Sam. Yes - THAT Sam, from the Grey Refuge. But... nobody knows that anymore.")
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
talkEntry:addResponse("Sam... ich bin Sam. Einfach nur Sam.")
talkEntry:addResponse("Sam. Ja DER Sam, von der Grauen Zuflucht. Aba... das kennt heute natürlich keiner mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I'm not a merchant anymore... but I can repair some things.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich bin kein Händler mehr... ich repariere jetzt Dinge.")
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
talkEntry:addResponse("I'm not a merchant anymore... but I can repair some things.")
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
talkEntry:addResponse("Ich bin kein Händler mehr... ich repariere jetzt Dinge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("...good old friend Borgate.")
talkEntry:addResponse("Yes. In former times I had my shop in the Grey Refuge. But... like everything that's gone now!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Nach der Flucht von Gobaith ertrank ich meinen Kummer in Alkohol, aber ich kann ja nicht immer meinem alten Freund Borgate auf der Tasche liegen.")
talkEntry:addResponse("Ja. Damals hatte ich meinen Laden in der Grauen Zuflucht. Aber das ist jetzt vorbei...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("repair")
talkEntry:addTrigger("fix")
talkEntry:addTrigger("polish")
talkEntry:addTrigger("mend")
talkEntry:addTrigger("patch")
talkEntry:addTrigger("darn")
talkEntry:addResponse("Let's have a look at this.")
talkEntry:addConsequence(consequence_repair())
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("reparie")
talkEntry:addTrigger("instand")
talkEntry:addTrigger("heil")
talkEntry:addTrigger("polier")
talkEntry:addTrigger("flick")
talkEntry:addTrigger("reparatur")
talkEntry:addResponse("Schauen wir nach, was wir hier haben.")
talkEntry:addConsequence(consequence_repair())
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I repair things..")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich repariere Dinge. Wenn ich genügend Münzen hab, mach ich vielleicht wieder nen Laden auf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I repair things.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich repariere Dinge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Yeah! Everything was pretty nice in Gobaith. Not so complicated like here!")
talkEntry:addResponse("I'll tell you, the Grey Orders decided about Gobaith. That didn't happen... and, good old Sam was in the middle of it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Jah! In Gobaith war alles noch schön ordenlich. Nich so verworrn wie hier!")
talkEntry:addResponse("Sag ich dir, die Grauen Orden, haben über Gobaith entschiedn. Da hats sonst nicht gegeben und der gute Sam war mittn drin!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("I am")
talkEntry:addTrigger("my name")
talkEntry:addResponse("#me shrugs his shoulders")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ich bin")
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("#me zuckt mit den Schultern")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Borgate")
talkEntry:addTrigger("Northoff")
talkEntry:addResponse("Borgate is an old chum. He always knows what he has to do. Borgate, me and Eliza are left. I heard she lives in the swamp now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Borgate")
talkEntry:addTrigger("Northoff")
talkEntry:addResponse("Borgate kenn ich von damals, als wir auf Gobaith warn. Wie immer hat er sein Ding gemacht, als wir alle weg musten von dort.Wir zwe' und Eliza sin übrich gebliebn. Die soll jetz im Sumpf lebn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("barkeeper")
talkEntry:addTrigger("innkeeper")
talkEntry:addResponse("Borgate is an old chum. He always knows what he has to do. Borgate, me and Eliza are left. I heard she lives in the swamp now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wirt")
talkEntry:addResponse("Borgate kenn ich von damals, als wir auf Gobaith warn. Wie immer hat er sein Ding gemacht, als wir alle weg musten von dort.Wir zwe' und Eliza sin übrich gebliebn. Die soll jetz im Sumpf lebn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("refuge")
talkEntry:addTrigger("grey")
talkEntry:addResponse("The Order of the Grey Light and Grey Rose. Yessh! Once the most powerful knights and landowners. I will esteem them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zuflucht")
talkEntry:addTrigger("grau")
talkEntry:addResponse("Der Orden des graun Lichts und die Graue Rose. Jeh-nau. Einst bestimmten die mächtigsten Ritter und Meister über deren Lande. Ich halte sie in Ehren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sam")
talkEntry:addResponse("Huh? Did someone call me?")
talkEntry:addResponse("#me raises his head. 'I am Sam!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sam")
talkEntry:addResponse("#me hebt zackig seinen Kopf. 'Ich bin Sam!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("market")
talkEntry:addTrigger("shop")
talkEntry:addTrigger("market")
talkEntry:addTrigger("store")
talkEntry:addResponse("Yes, my old store is gone. Far away..and I am here and ... Who can tell what's happening there?!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("laden")
talkEntry:addTrigger("schop")
talkEntry:addTrigger("Gesch[aeä]ft")
talkEntry:addTrigger("Markt")
talkEntry:addResponse("Ja mein alter Laden is weg. Weit weg und ich bin hier. Verdien mir ein paar Münzen mit der Reperatur.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("eliza")
talkEntry:addResponse("Eliza lives in the swamp. Alone, you know? - We both lost our stores. But you can't do anything about it.. but now i try a recommencement.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("eliza")
talkEntry:addResponse("Eliza soll irgendwo im Sumpf lebn. Ganz allein. Weiste? Wir habn beide unsern Laden verloren. Aber da kann man jetz nicht dagegen machen... dachte ich jedenfalls immer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addTrigger("archmage")
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Morgan is a self-important snob. That toad can eat my pants!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addTrigger("archmage")
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Morgan ist n' aufgebalsener Wichtigtuer. Diese Kröte kann meine Hosn fressen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("A buncha stuck up nobodies who would clean their butts with magic if they could! They can blow themselves up ... for all I care.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Diescher arrogante Haufn, würd sich mit Zauberei n' Hintern abwischn, wenn siehs könntn! Von mir aus solln sie sich selbst hochjagen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("This ...uh...guy thinks he is some kind of half god. He's hysterical!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Dieser feine Pinkl von Zwerg tut als wär er n' halber Gott oder so! Hysterisch issa, das is alles!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("#me shuts his eyes tightly closed. 'Are you from Galmair?! Are you one of those cutthroats? I tell you - honest people like Sam don't want to deal with you Galmairians!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("#me kneift die Augen zusammen. 'Kommst du aus Galmair?! Bist du eina von den Halsabschneidern? Oder n' habgieriches Filzmaul? Ich sag dir eins - aufrichtiche leute wie Sam wolln nichts mit euch Galmairern zu tun habn!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("königin")
talkEntry:addTrigger("queen")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("This queen is so posh. She drags all of Cadomyr down with her! But what ever, they are all idiots. All of them!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("königin")
talkEntry:addTrigger("queen")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Diese Königin ist die Dekadenz in Person! Und gans Cadomyr geht mit ihr zu Grunde! Aber was solls, sind sowieso nur Dummköpfe. Allesamt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("...scumbags, pigs, horse's arses, slimeballs! Thats what I call the people of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("...Dummköpfe, Sturschädl, Blauau'en, Ziechenbärte, Pferdeorhn! Scho will ich das Volk Cadomyrs nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albarian scrumbags! Speared my father on the battlefield!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albarische Drecksäcke! Habn mein' Papa aufn Schlachtfeld aufgespist! Flusch! Jawohl - FLUCH über 'n König Albars!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Too hot there right now. - Actually , it's always too hot in Gynk. I heard it doesn't snow during winter there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ist viel zu heis dort, um die Jahreszeit. - Eigentlis um jede Jahreszeit. Im Winter soll nichtmal Schnee falln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("I am from Salkamar. But why should I have stayed there? And why should I go back there?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Ich komm aus Salkamar. Aber was sollt mich dort gehaltn habn? Und warum solt ich zurückehrn??")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I only talk about gods with friends.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Ich red nur mit mein'n Freunden über Götter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addResponse("When you can get new informations about Gobaith, I will be very grateful.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addResponse("Wenn du heraufinden könntest, was von Gobaith übrig ist, wäre ich dir sehr dankbar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("When you can get new informations about Gobaith, I will be very grateful.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Wenn du heraufinden könntest, was von Gobaith übrig ist, wäre ich dir sehr dankbar.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me rülpst herzhaft.", "#me belches loudly.")
talkingNPC:addCycleText("#me gähnt mit müdem Blick.", "#me yawns.")
talkingNPC:addCycleText("#me seufzt langezogen.", "#me lets out a long sigh.")
talkingNPC:addCycleText("#me schaut aus dem Fenster", "#me looks out of the window.")
talkingNPC:addCycleText("#me schnieft ein wenig und wischt seine Nase am Hemdärmel ab.", "#me sniffles and wipes his nose on his sleeve.")
talkingNPC:addCycleText("#me pfeift eine Melodie.", "#me whistles a melody.")
talkingNPC:addCycleText("Ich repariere zwar nicht alles, aber vieles", "In fact I repair not everything, but most of the things you have.")
talkingNPC:addCycleText("Das beste Bier gab es im Fluffy Sheep.", "The best beer you could find in the Fluffy Sheep.")
talkingNPC:addCycleText("#me schaut sehnsüchtig zu einen Krug Bier, schüttelt aber dann den Kopf", "#me looks to a mug of beer longingly, but shakes his head")
talkingNPC:addCycleText("Borgate, noch ein Glas 'Troll's Baner Karottensaft'.", "Borgate, another glass full of 'Troll's Bane Carrot Juice'.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Er trägt einfach, abgenutzte Kleidung. Sein Geschicht ist verwittert.", "He wears battered clothings. His face is rugged.")
mainNPC:setUseMessage("Finger weg!", "Hands off!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 181)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 34)
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
