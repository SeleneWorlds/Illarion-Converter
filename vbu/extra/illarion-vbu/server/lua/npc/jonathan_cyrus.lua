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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the glass goods trader Jonathan Cyrus. Keywords: buy, sell, trade, Hello, glass."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Glaswarenhändler Jonathan Cyrus. Schlüsselwörter: kaufe, verkaufe, Handel, Hallo, Glas."))
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
talkEntry:addResponse("I buy any kind of glass goods. You can also obtain vases from me.")
talkEntry:addResponse("I'll gladly show you my offers of glasswares and vases.")
talkEntry:addResponse("Here you can get anything you need for a perfect dinner.")
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
talkEntry:addResponse("Ich handel aller Art Glaswaren. Ebenso könnt ihr Vasen bei mir erwerben.")
talkEntry:addResponse("Gerne zeige ich euch mein Angebot an Glaswaren und Vasen.")
talkEntry:addResponse("Hier bekommt ihr alles, was ihr für ein perfektes Abendessen braucht.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addResponse("Greetings, in the name of our Queen Rosaline! If you need any glasses, just ask.")
talkEntry:addResponse("It is a wonderful day in Cadomyr, governed by our magnificient, and beautiful, Queen.")
talkEntry:addResponse("Hello.")
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
talkEntry:addResponse("Seid gegrüßt, im Namen unserer Königin Rosaline! Wenn ihr Gläser braucht, fragt einfach.")
talkEntry:addResponse("Es ist ein wundervoller Tag in Cadomyr, regiert von unserer glorreichen - und wunderschönen - Königin.")
talkEntry:addResponse("Hallo.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetings, in the name of our Queen Rosaline! Do you need any glasses, just ask.")
talkEntry:addResponse("It is a wonderful day in Cadomyr, governed by our magnificent, and beautiful, Queen.")
talkEntry:addResponse("Hello.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Seid gegrüßt, im Namen unserer Königin Rosaline! Wenn ihr Gläser braucht, fragt einfach.")
talkEntry:addResponse("Es ist ein wundervoller Tag in Cadomyr, regiert von unserer glorreichen - und wunderschönen - Königin.")
talkEntry:addResponse("Hallo.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Go with the blessings of the Queen.")
talkEntry:addResponse("Fare thy well, and come back one day.")
talkEntry:addResponse("One advises, do not venture too far away, you will not find anything comparable to Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Geht mit dem Segen der Königin.")
talkEntry:addResponse("Gehabt euch wohl und kommt eines Tages wieder.")
talkEntry:addResponse("Ein Rat: Geht nicht zu weit fort, ihr werdet nichts mit Cadomyr vergleichbares finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Go with the blessings of the Queen.")
talkEntry:addResponse("Fare thy well, and come back one day.")
talkEntry:addResponse("One advises, do not venture too far away, you will not find anything comparable to Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Geht mit dem Segen der Königin.")
talkEntry:addResponse("Gehabt euch wohl und kommt eines Tages wieder.")
talkEntry:addResponse("Ein Rat: Geht nicht zu weit fort, ihr werdet nichts mit Cadomyr vergleichbares finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How do you feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Let us not talk about feelings but about business.")
talkEntry:addResponse("I am doing well, just yesterday I saw the Queen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Lasst uns nicht über Gefühle sondern übers Geschäft reden.")
talkEntry:addResponse("Mir geht es bestens, gestern gerade habe ich die Königin gesehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Jonathan Cyrus. Call me John and you will regret it.")
talkEntry:addResponse("You are in the glassware shop of Cyrus.")
talkEntry:addResponse("For my good customers, I go by the name of Jonathan.")
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
talkEntry:addResponse("Jonathan Cyrus. Nennt mich John und ihr werdet es bereuen.")
talkEntry:addResponse("Ihr seid im Glaswarenladen Cyrus.")
talkEntry:addResponse("Für meine guten Kunden heiße ich Jonathan.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Adventures? Now, glassblowing is truly a learning adventure in itself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Abenteuer? Nun, Glasblasen zu erlernen ist wirklich ein Abenteuer für sich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Adventures? Now, glassblowing is truly a learning adventure in itself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Abenteuer? Nun, Glasblasen zu erlernen ist wirklich ein Abenteuer für sich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I trade glassware.")
talkEntry:addResponse("I trade vases and glassware.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich handel mit Glaswaren.")
talkEntry:addResponse("Ich handel mit Vasen und Glaswaren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I trade glassware.")
talkEntry:addResponse("I trade vases and glassware.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich handel mit Glaswaren.")
talkEntry:addResponse("Ich handel mit Vasen und Glaswaren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Apologies I do not know much about that island Gobaith, only that some refugees once came from there to Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Entschuldigt, aber ich weiß nicht viel über diese Insel Gobaith, lediglich, dass einige Flüchtling von dort nach Cadomyr einst kamen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Very pleased to meet you. How about we talk about glassware?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Sehr erfreut. Wollen wir vielleicht über Glaswaren reden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Rutrus")
talkEntry:addResponse("I know Rutrus, he lives at the Oasis of Stars.")
talkEntry:addResponse("Rutrus, well, I think his head has been exposed too long to the scorching sun.")
talkEntry:addResponse("I use quartz sand from time to time, purchased from Rutrus, until he started talking to his shovel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Rutrus")
talkEntry:addResponse("Ich kenne Rutrus, er lebt bei der Sternenoase.")
talkEntry:addResponse("Rutrus, nun, ich glaube, sein Kopf war zulange der brennenden Sonne ausgesetzt.")
talkEntry:addResponse("Früher habe ich von Zeit zu Zeit Quarzsand von Rutrus gekauft, bis er angefangen hat, mit seiner Schaufel zu reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oase")
talkEntry:addResponse("Die Sternenoase ist außerhalb der Stadtmauern. Schützt euer Gesicht vor Flugsand, wenn ihr durch die Wüste wandert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oasis")
talkEntry:addResponse("The Oasis of Stars is outside the city walls. Protect your face from blowing sand when you walk through the desert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sand")
talkEntry:addResponse("The sand is everywhere here in Cadomyr. It is both a blessing and curse .")
talkEntry:addResponse("You will need a lot of sand for glass blowing. Only fine sand is suitable though, the coarse sand is not pure enough.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sand")
talkEntry:addResponse("Der Sand ist allgegenwärtig hier in Cadomyr. Er ist Segen und Fluch zugleich.")
talkEntry:addResponse("Ihr werdet viel Sand zum Glasblasen benötigen. Nur feiner Sand ist geeignet, grober Sand ist zu unrein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("glas")
talkEntry:addResponse("Glass is fascinating. It looks like ice, sparkles like diamonds and is as hard as stone.")
talkEntry:addResponse("The art of glassblowing is very demanding, but I will make sure it is never forgotten.")
talkEntry:addResponse("It was reported to me once, you could concentrate the rays of the sun with a glass into a lethal weapon. What a humbug!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("glas")
talkEntry:addResponse("Glas ist faszinierend. Es sieht aus wie Eis, funkelt wie ein Diamant und ist so hart wie Stein.")
talkEntry:addResponse("Die Kunst der Glasbläserei ist sehr anspruchsvoll, aber ich werde sicherstellen, dass sie nicht in Vergessenheit gerät.")
talkEntry:addResponse("Man hat mir mal berichtet, dass man die Strahlen der Sonne mit Glas zu einer tödlichen Waffe bündeln könnte. Was für ein Humbug.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("trader")
talkEntry:addTrigger("merchant")
talkEntry:addTrigger("collegue")
talkEntry:addTrigger("vendor")
talkEntry:addTrigger("market")
talkEntry:addResponse("Need some forged goods? Clothing? You can find anything here at the marketplace of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("händler")
talkEntry:addTrigger("kollege")
talkEntry:addTrigger("höker")
talkEntry:addTrigger("markt")
talkEntry:addResponse("Braucht ihr Schmiedewaren? Kleidung? Ihr findet alles hier auf dem Marktplatz von Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Oh, please, spare me from any news of the Archmage, he always lies anyway.")
talkEntry:addResponse("Elvaine Morgan, you could too easily have said 'The lying Baron' instead.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Oh bitte, erspart mir irgendwelche Neuigkeiten vom Erzmagier. Der lügt wie gedruckt.")
talkEntry:addResponse("Elvaine Morgan, ihr hättet auch einfach sagen können, 'Der Lügenbaron'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Oh, please, spare me from any news of the Archmage. He always lies anyway.")
talkEntry:addResponse("Elvaine Morgan, you could too easily have said 'The Lying Baron' instead.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Oh bitte, erspart mir irgendwelche Neuigkeiten vom Erzmagier. Der lügt wie gedruckt.")
talkEntry:addResponse("Elvaine Morgan, ihr hättet auch einfach sagen können, 'Der Lügenbaron'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick is a place of books, boredom and laziness.")
talkEntry:addResponse("If you ever get to Runewick, will you sell the people there some of my vials please?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick ist ein Ort der Bücher, der Langeweile und der Faulheit.")
talkEntry:addResponse("Wenn ihr jemals nach Runewick kommt, verkauft ihr den Leuten dort ein paar meiner Phiolen, bitte?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Valerio Guilianni is the Don of Galmair, there is nothing more to say.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Valerio Guilianni ist der Don von Galmair. Mehr gibt es da nicht zu sagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Never go to Galmair if you want to experience tomorrow.")
talkEntry:addResponse("Galmair is a place of thieves and scoundrels.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Geht niemals nach Galmair, wenn ihr den Morgen erleben wollt.")
talkEntry:addResponse("Galmair ist ein Ort der Diebe und Halunken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Our Queen came to power by way of the old customs. Who acts against her, acts against our old customs.")
talkEntry:addResponse("Psst, don't you think she is too beautiful to remain unmarried for long?")
talkEntry:addResponse("My Queen is everything to me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Unsere Königin kam an die Macht, ganz nach den alten Sitten. Wer also gegen sie handelt, handelt gegen unsere alten Gebräuche.")
talkEntry:addResponse("Psst, denkt ihr nicht auch, sie ist zu schön, um allzulange unverheiratet zu sein?")
talkEntry:addResponse("Die Königin bedeutet mir alles!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Our Queen came to power by way of the old customs. Who acts against her, acts against our old customs.")
talkEntry:addResponse("Psst, don't you think she is too beautiful to remain unmarried for long?")
talkEntry:addResponse("My Queen is everything to me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Unsere Königin kam an die Macht, ganz nach den alten Sitten. Wer also gegen sie handelt, handelt gegen unsere alten Gebräuche.")
talkEntry:addResponse("Psst, denkt ihr nicht auch, sie ist zu schön, um allzulange unverheiratet zu sein?")
talkEntry:addResponse("Die Königin bedeutet mir alles!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is a land of sand and stone, but we have made the best out of it.")
talkEntry:addResponse("Cadomyr, oh, Cadomyr, how much I like to dwell here!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist ein Land aus Sand und Stein. Aber wir haben das beste daraus gemacht.")
talkEntry:addResponse("Cadomyr, oh Cadomyr, wie gerne wohn' ich hier!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("We all have ancestors from Albar, but now our fate lies in the hands of the Queen.")
talkEntry:addResponse("We honour the traditions of Albar. The Queen does as well, yes, a female sovereign. Never call it into question!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Wir alle haben Vorfahren aus Albar. Nun aber liegt unser Schicksal in der Hand der Königin.")
talkEntry:addResponse("Wir ehren die Gebräuche Albars. Die Königin tut dies ebenso, ja, ein weiblicher Souverän. Stellt dies niemals in Frage!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("It is all the same to me, what is going on in Gynk. Most probably, the people there just slit each other's throats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Es ist mir einerlei, was in Gynk vor sich geht. Wahrscheinlich schlitzen sich die Leute dort gerade gegenseitig die Kehlen auf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Oh, please, do not talk about them in public. The Queen does not like it.")
talkEntry:addResponse("Shh!")
talkEntry:addResponse("Quiet!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Oh, bitte sprecht darüber nicht in aller Öffentlichkeit. Die Königin mag das nicht.")
talkEntry:addResponse("Psst!")
talkEntry:addResponse("Still!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I respect all of the Gods, but those I worship are Irmorom and Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Ich respektiere alle Götter, aber die, die ich anbete, sind Irmorom und Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Of course I always pray to Irmorom before I fire up the bloomery, but I really do adore Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Natürlich bete ich stets zu Irmorom, bevor ich den Rennofen anfeuere. Aber wirklich verehren tu ich Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Truly, Adron is my saviour. Without him, nobody would enjoy a good wine and I would no longer be able to sell anything.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Fürwahr, Adron ist mein Heiland. Ohne ihn würde niemand mehr einen guten Tropfen Wein genießen und ich würde nichts mehr verkaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Glass is fascinating. It looks like ice, sparkles like diamonds and is as hard as stone.")
talkEntry:addResponse("The art of glassblowing is very demanding, but I will make sure it is never forgotten.")
talkEntry:addResponse("It was reported to me once, you could concentrate the rays of the sun with a glass into a lethal weapon. What a humbug!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Glas ist faszinierend. Es sieht aus wie Eis, funkelt wie ein Diamant und ist so hart wie Stein.")
talkEntry:addResponse("Die Kunst der Glasbläserei ist sehr anspruchsvoll, aber ich werde sicherstellen, dass sie nicht in Vergessenheit gerät.")
talkEntry:addResponse("Man hat mir mal berichtet, dass man die Strahlen der Sonne mit Glas zu einer tödlichen Waffe bündeln könnte. Was für ein Humbug.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Jonathan")
talkEntry:addTrigger("Cyrus")
talkEntry:addResponse("No, my daughter is not called Miley.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Jonathan")
talkEntry:addTrigger("Cyrus")
talkEntry:addResponse("Nein, meine Tochter heißt nicht Miley.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Was immer ihr braucht - ich habe es.", "Whatever you need, I have it.")
talkingNPC:addCycleText("Beste Glaswaren!", "Best glassware!")
talkingNPC:addCycleText("Kommt her, schaut euch an, was ich zu bieten habe.", "Come and look at what I have to offer.")
talkingNPC:addCycleText("#me wischt einen Glaskelch mit einem seidenen Tuch ab.", "#me polishes a glass goblet with a silk cloth.")
talkingNPC:addCycleText("Glitzernde Glaswaren, nur heute, nur für euch!", "Sparkling glassware, just today, just for you!")
talkingNPC:addCycleText("Ich habe beste Kerzen im Angebot. Mögen sie euch ein Leuchtfeuer in der Dunkelheit sein.", "I have the best candles on sale. May they be a beacon of light in the darkest night.")
talkingNPC:addCycleText("Bierkrüge für Zwergenbier, feinste Kelche für Elfenwein - aus meinen Gütern schmeckt jedes Gebräu.", "Beer mugs for dwarven beer, fine goblets for elven wine, out of my goods any brew is tastier.")
talkingNPC:addCycleText("Das transparente Gold Cadomyrs: Glas!", "The transparent gold of Cadomyr: Glass!")
talkingNPC:addCycleText("Vielleicht wollt ihr einen Blick auf meine Waren werfen.", "You may want to take a look at my goods.")
tradingNPC:addItem(trade.tradeNPCItem(311,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2140,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(314,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(26,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(726,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(316,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2498,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(790,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4634,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4626,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4639,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(390,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1317,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1117,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(164,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(41,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4441,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2588,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4796,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4789,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4423,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4571,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4548,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4485,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4795,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4788,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4407,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4414,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2183,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2184,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(310,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4803,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(314,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(26,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(726,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(316,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2498,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(790,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4634,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4626,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4639,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(390,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(1317,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(1117,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(164,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(41,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4798,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4791,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4441,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4596,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4525,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4553,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2055,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2457,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(1908,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(3642,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2588,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4796,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4789,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4423,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4571,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4548,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4485,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4795,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4788,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4407,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4414,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4566,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4547,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4477,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2183,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2184,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(310,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(1223,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(315,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4803,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4605,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4606,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4607,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4608,"buyPrimary"))
tradingNPC:addNotEnoughMoneyMsg("Ich verlange hierfür mehr, als ihr überhaupt habt.", "I demand more for this than you even have.")
tradingNPC:addDialogClosedMsg("Schaut doch bald wieder vorbei.", "See you next time.")
tradingNPC:addDialogClosedNoTradeMsg("Und so trennen sich unsere Wege.", "And thus we part company.")
tradingNPC:addWrongItemMsg("Das kaufe ich nicht.", "I don't buy this.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Glaswarenhändler Jonathan Cyrus.", "This NPC is the glass goods trader Jonathan Cyrus.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 180)
mainNPC:setEquipment(11, 2416)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 827)
mainNPC:setEquipment(10, 770)
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
