local consequence_quest = require("npc.base.consequence.quest")
local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Fronita Emery the merchant. Keywords: buy, sell, trade, glas, wares, Runewick."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist die Händlerin Fronita Emery. Schlüsselwörter: Handel, kaufe, verkaufe, Glas, Waren, Runewick."))
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
talkEntry:addResponse("This is what I can offer today.")
talkEntry:addResponse("Don't just look, buy!")
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
talkEntry:addResponse("Dies ist heute im Angebot.")
talkEntry:addResponse("Nicht nur gucken sondern auch kaufen!")
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
talkEntry:addResponse("May Findari and Elara bless you! Do you want to have a look at my wares?")
talkEntry:addResponse("Welcome. If you're looking for goods made of glass I can definitely help you out.")
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
talkEntry:addResponse("Findari und Elara mit euch! Kann ich euch für meine Waren begeistern?")
talkEntry:addResponse("Willkommen. Wenn ihr Glaswaren sucht seid ihr hier absolut richtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("May Findari and Elara bless you! Do you want to have a look at my wares?")
talkEntry:addResponse("Welcome. If you're looking for goods made of glass I can definitely help you out.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Findari und Elara mit euch! Kann ich euch für meine Waren begeistern?")
talkEntry:addResponse("Willkommen. Wenn ihr Glaswaren sucht seid ihr hier absolut richtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Fair winds and clear sight to you!")
talkEntry:addResponse("May Elara enlighten your path.")
talkEntry:addResponse("Farewell. Don't forget about me, as glass is pretty fragile!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Günstige Winde und klare Sicht!")
talkEntry:addResponse("Möge Elara euren Pfad erleuchten.")
talkEntry:addResponse("Auf bald. Und vergesst mich nicht, Glas ist zerbrechlich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Fair winds and clear sight to you!")
talkEntry:addResponse("May Elara enlighten your path.")
talkEntry:addResponse("Farewell. Don't forget about me, as glass is pretty fragile!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Günstige Winde und klare Sicht!")
talkEntry:addResponse("Möge Elara euren Pfad erleuchten.")
talkEntry:addResponse("Auf bald. Und vergesst mich nicht, Glas ist zerbrechlich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I am very well. Look at this bottle here. If you hold it up to the light it sparkles in every colour imaginable.")
talkEntry:addResponse("I'm a little short of breath and there's blisters from all the glass I polished, but that's to be expected from my work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befinden")
talkEntry:addResponse("Mir geht es ausgezeichnet. Sehr euch diese Flasche hier an. Hält man sie gegen das Licht funkelt sie in allen Farben.")
talkEntry:addResponse("Ich bin etwas außer Atem und habe Schwielen vom Glas polieren, aber das ist Berufsrisiko.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I'm Fronita. I'm a glassblower and I sell my wares here.")
talkEntry:addResponse("My name? Fronita Emery, I deal in glass goods.")
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
talkEntry:addResponse("Ich bin die Fronita. Ich bin Glasbläserin und verkaufe meine Waren hier.")
talkEntry:addResponse("Mein Name? Fronita Emery, ich handle mit Glaswaren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 9))
talkEntry:addTrigger("message")
talkEntry:addTrigger("news")
talkEntry:addTrigger("letter")
talkEntry:addTrigger("scroll")
talkEntry:addTrigger("parchment")
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[Quest status] The Reminder IV: You deliver the message from Groktan Flintsplit to Fronita Emery."))
talkEntry:addConsequence(consequence_quest(107, "=", 10))
talkEntry:addResponse("#me shrieks as she reads the scroll: 'I thought I'd be safe here from the Don! I'm ruined if I have to pay what he demands.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 9))
talkEntry:addTrigger("nachricht")
talkEntry:addTrigger("brief")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Schriftrolle")
talkEntry:addTrigger("Pergament")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Queststatus] Die Erinnerung IV: Du überbringst Fronita Emery die Nachricht von Groktan Flintsplit."))
talkEntry:addConsequence(consequence_quest(107, "=", 10))
talkEntry:addResponse("#me erschrickt als sie die Schriftrolle durchliest: 'Ich dachte, ich wäre hier sicher vor dem Don! Ich bin ruiniert, wenn ich ihm diese Summe zahle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Groktan")
talkEntry:addTrigger("Flintsplit")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Quest status] The Reminder IV: You deliver the message from Groktan Flintsplit to Fronita Emery."))
talkEntry:addConsequence(consequence_quest(107, "=", 10))
talkEntry:addResponse("#me shrieks as she reads the scroll: 'I thought I'd be safe here from the Don! I'm ruined if I have to pay what he demands.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 9))
talkEntry:addTrigger("Groktan")
talkEntry:addTrigger("Flintsplit")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Queststatus] Die Erinnerung IV: Du überbringst Fronita Emery die Nachricht von Groktan Flintsplit."))
talkEntry:addConsequence(consequence_quest(107, "=", 10))
talkEntry:addResponse("#me erschrickt als sie die Schriftrolle durchliest: 'Ich dachte, ich wäre hier sicher vor dem Don! Ich bin ruiniert, wenn ich ihm diese Summe zahle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I don't really need any help, sorry.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich vergebe keine Questen, tut mir leid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I don't really need any help, sorry.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich vergebe keine Questen, tut mir leid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Well, why might I stand around here between all this glass? I'm selling it!")
talkEntry:addResponse("I'm a glassblower and I sell my wares here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Nun, warum sollte ich hier zwischen diesen ganzen Glaswaren stehen? Ich verkaufe sie!")
talkEntry:addResponse("Ich bin Glasbläserin und verkaufe hier meine Waren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Well, why might I stand around here between all this glass? I'm selling it!")
talkEntry:addResponse("I'm a glassblower and I sell my wares here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Nun, warum sollte ich hier zwischen diesen ganzen Glaswaren stehen? Ich verkaufe sie!")
talkEntry:addResponse("Ich bin Glasbläserin und verkaufe hier meine Waren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I'm just a humble crafter, ask a scholar about that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ich bin nur eine einfache Händlerin. Fragt doch einen Gelehrten über sowas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Nice to meet you! But don't expect a discount just because you told me your name.")
talkEntry:addResponse("What a funny name. Somehow it gives away that you're not from around here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Schön dich kennen zu lernen! Erwarte aber keinen Preisnachlass deswegen.")
talkEntry:addResponse("Was für ein lustiger Name. Man merkt irgendwie, dass du nicht von hier bist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("glass")
talkEntry:addResponse("To work with glass is challenging. It becomes fragile very quickly.")
talkEntry:addResponse("The slender hands of a lady like myself are just right for that kind of work, har har.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sand")
talkEntry:addResponse("You may think there's enough sand in the desert, still, Cadomyr troubles the supply.")
talkEntry:addResponse("Aye, lots of sand in the west, but Cadomyr guards it tightly. That's a problem.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rune magic")
talkEntry:addResponse("You'll have to ask another dwarf about that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("magic")
talkEntry:addTrigger("mage")
talkEntry:addTrigger("sorcer")
talkEntry:addTrigger("spell")
talkEntry:addResponse("Ach, sometimes I twitch when spells fly about, but you get used to that.")
talkEntry:addResponse("There's dwarven rune magic, so why should magic bother me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("problem")
talkEntry:addTrigger("trouble")
talkEntry:addTrigger("supply")
talkEntry:addResponse("Cadomyr keeps a tight check on how much sieved sand leaves the desert and there's not enough for me to work properly, I say!")
talkEntry:addResponse("Cadomyr is mocking us. If they allow sand to be exported it's usualy wet and hardly useable. ")
talkEntry:addResponse("'I reign over every grain of sand!' says the Queen. You can be overzealous too, you know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Glas")
talkEntry:addResponse("Mit Glas zu arbeiten ist eine Herausforderung. Es wird schnell sehr zerbrechlich.")
talkEntry:addResponse("Zarte Frauenhände wie meine sind genau richtig für diese Arbeit, har har.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sand")
talkEntry:addResponse("Man möchte meinen Sand gäbs in der Wüste genug, trotzdem macht Cadomyr immer Ärger.")
talkEntry:addResponse("Aye im Westen gibts viel davon. Aber da sitzt Cadomyr wachsam drauf. Das ist ein Problem.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runenmagie")
talkEntry:addResponse("Da musst du einen Zwerg fragen der sich genauer damit auskennt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Magie")
talkEntry:addTrigger("Zauber")
talkEntry:addResponse("Ach, ich zuck noch ein wenig wenn die Zaubersprüche fliegen, aber man gewöhnt sich dran.")
talkEntry:addResponse("Wir Zwerge kennen ja auch die Runenmagie. Also warum soll mich Magie stören?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Problem")
talkEntry:addTrigger("Ärger")
talkEntry:addResponse("Cadomyr passt genau auf, wieviel feiner Sand aus der Wüste entnommen wird. Nicht genug für anständige Arbeit sag ich!")
talkEntry:addResponse("Cadomyr ärgert uns. Wenn sie es mal erlauben und Sand nach Runewick kommt ist er feucht und fast unbrauchbar.")
talkEntry:addResponse("'Ich herrsche über jedes Sandkorn!' sagt die Königin. Man kann auch übereifrig sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addCondition(condition_language("english"))
talkEntry:addResponse("You're in Runewick, enjoy the marvellous sights!")
talkEntry:addResponse("#me grins and winks: 'I'm taking a wild guess here, but you might be at the market.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Du bist in Runewick, der Stadt mit der schönsten Aussicht!")
talkEntry:addResponse("#me schmunzelt und zwinkert: 'Wenn ichs nicht besser wüsste, würd ich sagen du stehst am Markt.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("trader")
talkEntry:addTrigger("merchant")
talkEntry:addTrigger("collegue")
talkEntry:addTrigger("vendor")
talkEntry:addTrigger("market")
talkEntry:addResponse("Speak right up. Just ask around and you'll find the wares you're looking for.")
talkEntry:addResponse("I'm sure it won't be hard for you to find the other merchants of Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("händler")
talkEntry:addTrigger("kollege")
talkEntry:addTrigger("höker")
talkEntry:addTrigger("markt")
talkEntry:addResponse("Seid nur nicht auf den Mund gefallen. Fragt und ihr findet was ihr an Waren sucht.")
talkEntry:addResponse("Es wird euch sicher nicht schwer fallen, die anderen Händler in Runewick zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("It's a great comfort to have such a smart man rule over Runewick.")
talkEntry:addResponse("I've given him wine glasses as a present, enough for many guests, even though he never has any.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ich finde es beruhigend, dass so ein schlauer Mann über Runewick bestimmt.")
talkEntry:addResponse("Ich habe ihm Gläser zum Geschenk gemacht. Genug für viele Gäste, auch wenn er nie jemanden zu sich einlädt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("It's a great comfort to have such a smart man rule over Runewick.")
talkEntry:addResponse("I have given him wine glasses as a present, enough for many guests, even though he never has any.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ich finde es beruhigend, dass so ein schlauer Mann über Runewick bestimmt.")
talkEntry:addResponse("Ich habe ihm Gläser zum Geschenk gemacht. Genug für viele Gäste, auch wenn er nie jemanden zu sich einlädt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("What a wonderful town! You take a few steps away from the furnace and the cool sea air refreshes you.")
talkEntry:addResponse("We have the greenest meadows, the tastiest food and the best beer here in Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Eine wunderbare Stadt! Man tritt einige Schritte weg vom Schmelzofen und die kühle Seeluft erfrischt einen.")
talkEntry:addResponse("Wir haben die grünsten Wiesen, das leckerste Essen und das beste Bier hier in Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Even if I admire Archmage Morgan, I don't understand why he doesn't do anything against this fiend!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Auch wenn ich Erzmagier Morgan sonst bewundere, warum er nichts gegen diesen Halunken unternimmt ist mir ein Rätsel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair, bah! They don't need glass, they swig straight from the water hole!")
talkEntry:addResponse("If you're robbed there and yell for help, only more people come to split the loot!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair, pah! Die brauchen kein Glas, die saufen aus der Tränke!")
talkEntry:addResponse("Wird man dort ausgeraubt und ruft um Hilfe kommen nur mehr Leute um sich die Beute zu teilen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("They say she can tell glass jewellery and real jewellery apart... by their smell!")
talkEntry:addResponse("Two big childhood dreams combined: Queen of her own enormous sandbox.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Man sagt sie könne Glasschmuck von echtem Schmuck unterscheiden. Am Geruch!")
talkEntry:addResponse("Zwei große Kindheitsträume vereint: Königin spielen in einem riesen Sandkasten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("They say she can tell glass jewellery and real jewellery apart... by their smell!")
talkEntry:addResponse("Two big childhood dreams combined: Queen of her own enormous sandbox.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Man sagt sie könne Glasschmuck von echtem Schmuck unterscheiden. Am Geruch!")
talkEntry:addResponse("Zwei große Kindheitsträume vereint: Königin spielen in einem riesen Sandkasten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I have to admit, there's better glassblowers than me there, but what else do you expect with all the sand there?")
talkEntry:addResponse("I don't like those of Cadomyr, there's always trouble every time I try to gather sand from the desert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Leider muss ich sagen, dort gibt es bessere Glasbläser als mich. Aber kein Wunder! Bei all dem Sand.")
talkEntry:addResponse("Ich mag sie nicht. Es gibt immer wieder Probleme wenn ich Sand aus der Wüste holen will.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("I'm glad I don't have to live there. They certainly wouldn't have let me learn glassblowing, as I'm a woman.")
talkEntry:addResponse("Brutal and aggressive people, all of their culture is based on war and oppression.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Wie froh bin ich nicht dort zu leben. Als Frau hätte ich wohl nie Glasblasen lernen dürfen.")
talkEntry:addResponse("Ein grobes aggressives Volk. ihre ganze Kultur lebt von Krieg und Unterdrückung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Ugh! Let's talk about more pleasant things... My stock of wares for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Pfui. Lass uns doch über etwas Schöneres reden. Mein Warenangebot zum Beispiel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Once I've earned enough money I want to visit Salkamar.")
talkEntry:addResponse("I once heard that they have colourful windows there with pictures made of glass that tell stories.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Wenn der Handel genug Geld abgeworfen hat möchte ich Salkamar einmal besuchen.")
talkEntry:addResponse("Es heißt, dort gibt es bunte Fenster mit Bildern aus Glas die Geschichten erzählen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Gods? Findari and Elara bless my life.")
talkEntry:addResponse("Elara clears my mind like crystal glass and Findari fans the fire in my heart.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Götter? Findari und Elara behüten mein Leben.")
talkEntry:addResponse("Elara klärt meinen Geist wie Kristallglas und Findari schürt das Feuer in meinem Herzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Aye, that's true, but I prefer Elara and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Aye, richtig. Mir sagen Elara und Findari aber mehr zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Aye, that's true, but I prefer Elara and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Aye, richtig. Mir sagen Elara und Findari aber mehr zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Aye, that's true, but I prefer Elara and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Aye, richtig. Mir sagen Elara und Findari aber mehr zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("You have a lot of time to think about the important things in life when you stare at the furnace.")
talkEntry:addResponse("My faith in Elara gives me peace of mind. Waiting for the glass to cool off is a form of meditation for me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Bis das Glas schmilzt hat man viel Zeit im Schein des Ofens über das wirklich wichtige nachzudenken.")
talkEntry:addResponse("Der Glaube an Elara gibt mir Frieden. Ich freue mich auf das stille Warten wenn das Glas kühlt, es klärt den Geist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Aye, that's true, but I prefer Elara and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Aye, richtig. Mir sagen Elara und Findari aber mehr zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("If you literally need air to survive, like me, it is obvious who you should be grateful to.")
talkEntry:addResponse("Findari guides my hand on the bellows, so the fire never dies.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Wenn man so wie ich Luft buchstäblich zum Leben braucht, ist es klar wem man dafür danken sollte.")
talkEntry:addResponse("Findari lenkt meine Hand am Blasebalg damit das Feuer nicht stirbt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Aye, that's true, but I prefer Elara and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Aye, richtig. Mir sagen Elara und Findari aber mehr zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Aye, that's true, but I prefer Elara and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Aye, richtig. Mir sagen Elara und Findari aber mehr zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Who knows what he would've become, had he entrusted himself to Elara.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Wer weiß, hätte er sich Elara anvertraut wäre er vielleicht nicht so geworden wie er ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Aye, that's true, but I prefer Elara and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Aye, richtig. Mir sagen Elara und Findari aber mehr zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Aye, that's true, but I prefer Elara and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Aye, richtig. Mir sagen Elara und Findari aber mehr zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Aye, that's true, but I prefer Elara and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Aye, richtig. Mir sagen Elara und Findari aber mehr zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Aye, that's true, but I prefer Elara and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Aye, richtig. Mir sagen Elara und Findari aber mehr zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Aye, that's true, but I prefer Elara and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Aye, richtig. Mir sagen Elara und Findari aber mehr zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Aye, that's true, but I prefer Elara and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Aye, richtig. Mir sagen Elara und Findari aber mehr zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Aye, that's true, but I prefer Elara and Findari.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Aye, richtig. Mir sagen Elara und Findari aber mehr zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("You will be amazed by my stock of glass related wares.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Mein Angebot an Glaswaren wird euch begeistern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I'd love to live in a house of glass, but alas, the summer heat would be unbearable inside.")
talkEntry:addResponse("Metal corrodes away, but glass is here to stay.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Wäre die Hitze im Sommer nicht unerträglich, ich würde in einem Haus aus Glas wohnen.")
talkEntry:addResponse("Metall rostet, aber Glas ist zeitlos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Fronita")
talkEntry:addTrigger("Emery")
talkEntry:addResponse("...and did I mention I sell glass goods?")
talkEntry:addResponse("Buy something or get...")
talkEntry:addResponse("Fronita Emery, at your service.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fronita")
talkEntry:addTrigger("Emery")
talkEntry:addResponse("...und erwähnte ich, dass ich Glaswaren verkaufe?")
talkEntry:addResponse("Kauf etwas oder...")
talkEntry:addResponse("Fronita Emery, stets zu Diensten.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me poliert ein fein gearbeitetes Weinglas.", "#me polishes a well crafted wine glass.")
talkingNPC:addCycleText("Genießt die feinen Getränke Runewicks in Runewicks besten Gläsern.", "Enjoy the best of Runewick's beverages in Runewick's best glasses.")
talkingNPC:addCycleText("In meinen Glaswaren funkelt die Ewigkeit!", "Eternity sparkles in my glass wares!")
talkingNPC:addCycleText("#me spielt mit ein paar Glasmurmeln.", "#me plays with some glass pebbles.")
talkingNPC:addCycleText("Kauft euren Bierkrug bei mir, ich kenn mich damit aus.", "Buy your beer mugs here, trust my expertise about them.")
talkingNPC:addCycleText("Feinstes Glas aus kundiger Zwergenhand!", "Finest glass made by knowledgable dwarven hands!")
talkingNPC:addCycleText("Seht was ihr trinkt! Benutzt meine Gläser anstatt Holzbechern.", "See what you drink! Use my glasses instead of wooden mugs.")
talkingNPC:addCycleText("Beste Glaswaren!", "Best glass goods around!")
talkingNPC:addCycleText("Ich verkaufe Träume aus Glas und Kristall!", "I sell dreams of glass and crystal!")
talkingNPC:addCycleText("Shh! Ich habe ein Sonderangebot!", "Shh! I have special offers!")
tradingNPC:addItem(trade.tradeNPCItem(24,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(312,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2710,"sell"))
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
tradingNPC:addItem(trade.tradeNPCItem(314,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(26,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(726,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(316,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2498,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(790,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4634,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4626,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4639,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(390,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1317,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1117,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(164,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(41,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4798,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4791,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4441,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4596,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4525,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4553,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2055,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2457,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1908,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3642,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2588,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4796,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4789,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4423,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4571,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4548,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4485,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4795,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4788,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4407,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4414,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4566,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4547,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4477,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2183,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2184,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(310,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1223,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(315,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4803,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4605,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4606,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4607,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4608,"buySecondary"))
tradingNPC:addNotEnoughMoneyMsg("Oh, ich fürchte Ihr könnt Euch das nicht leisten.", "Oh, I fear, you can not afford that.")
tradingNPC:addDialogClosedMsg("Vielen Dank, beehrt mich bald wieder!", "Thank you, please come again!")
tradingNPC:addDialogClosedNoTradeMsg("Auf bald!", "Farewell!")
tradingNPC:addWrongItemMsg("Das kaufe ich nicht.", "I'm not buying this.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist die Händlerin Fronita Emery.", "This NPC is Fronita Emery the merchant.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 806)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 0)
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
