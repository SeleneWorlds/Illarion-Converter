local consequence_item = require("npc.base.consequence.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Zassaria Riverbank. Keywords: quest, mission, order."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Zassaria Riverbank. Schlüsselwörter: Quest, Mission, Auftrag."))
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
talkEntry:addResponse("Greetingsss to you.")
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
talkEntry:addResponse("Seid gegrüßsst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetingsss to you.")
talkEntry:addResponse("#me hisses.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Seid gegrüßsst.")
talkEntry:addResponse("#me zischt")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Ssss. Zzzelphia be with you. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Ssss. Zzzelphia sssei mit Euch. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Ssss. Zzzelphia be with you. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Ssss. Zzzelphia sssei mit Euch. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I'm feeling very good. Sss. Extraordinary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mir geht es sssehr gut. Ausssgezzeichnet. Sss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am the one called Zassaria Riverbank. Nice to meet you. Sss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dein name")
talkEntry:addTrigger("wer bist du")
talkEntry:addTrigger("wer seid ihr")
talkEntry:addTrigger("wie heißt")
talkEntry:addTrigger("wie heisst")
talkEntry:addResponse("Ich werde Zassaria Riverbank genannt. Sss.")
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
talkEntry:addResponse("Tsss! I ate all my fisssh. I'll catch new fishiesss sssoon.")
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
talkEntry:addResponse("Tsss! Ich aß all meinen Fisssch. Ich werde ssschnellssstmöglich neuen fangen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Ask for me I"))
talkEntry:addConsequence(consequence_quest(701, "=", 1))
talkEntry:addResponse("Could you help me jussst a little? Sss... Nizar assked me for an oil lamp some time ago. Tsss. I found one while fissshing just yesssterday. Zss. Can you tell him he ssshould talk to me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Frag für mich I"))
talkEntry:addConsequence(consequence_quest(701, "=", 1))
talkEntry:addResponse("Könntet Ihr mit Helfen? Sss ... Nizar fragte mich nach einer Öllampe. Zss. Gessstern habe ich eine beim Fissschen gefunden. Ssso sssagt ihm, er möge mit mir reden. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Ask for me I"))
talkEntry:addConsequence(consequence_quest(701, "=", 1))
talkEntry:addResponse("Could you help me jussst a little? Sss... Nizar assked me for an oil lamp some time ago. Tsss. I found one while fissshing just yesssterday. Zss. Can you tell him he ssshould talk to me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Frag für mich I"))
talkEntry:addConsequence(consequence_quest(701, "=", 1))
talkEntry:addResponse("Könntet Ihr mit Helfen? Sss ... Nizar fragte mich nach einer Öllampe. Zss. Gessstern habe ich eine beim Fissschen gefunden. Ssso sssagt ihm, er möge mit mir reden. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Sss... Nizar assked me for an oil lamp some time ago. Can you tell him he ssshould talk to me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 1))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nizar fragte mich nach einer Öllampe. Zss. Ssso sssagt ihm, er möge mit mir reden. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 1))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Sss... Nizar assked me for an oil lamp some time ago. Can you tell him he ssshould talk to me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 1))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Nizar fragte mich nach einer Öllampe. Zss. Ssso sssagt ihm, er möge mit mir reden. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You solved the Quest and are rewarded by Zassaria with some coins, an old sabre found at the bottom of the sea and a pair of new boots."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_item(25, 1, 333, nil))
talkEntry:addConsequence(consequence_item(53, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(701, "=", 3))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Ssso you talked to Missster Nizar? Tsss. Well, thank you for your help... Zss...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 2))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du hast das Quest gelöst und erhältst zum Dank etwas Geld, einen Säbel den Zassaria auf dem Grund des Meeres gefunden hat und ein Paar neue Stiefel."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_item(25, 1, 333, nil))
talkEntry:addConsequence(consequence_item(53, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(701, "=", 3))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Ihr habt also mit Missster Nizar gessssprochen? Tsss. Nun, danke für Eure Hilfe... Zss...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Ask for me II"))
talkEntry:addConsequence(consequence_quest(701, "=", 4))
talkEntry:addResponse("Ssso, you came to help me again? Zss. Thatsss very nice of you. Sss. I haven't sssseen Argentusss Almsbag for a while. Zzz. Pleassse, asssk him if he would ssstill like to buy fisssh. The fisssh are ssstarting to sssmell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 3))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Frag für mich II"))
talkEntry:addConsequence(consequence_quest(701, "=", 4))
talkEntry:addResponse("Sssso, Ihr kommt um mir zzzu helfen? Wie nett. Zss. Argenutsss Almsbag hat sssich ssschon lange nicht mehr bei mir blicken lassssen. Fragt ihn, ob er noch Fisssch kaufen möchte. Zss. Der Fisssch beginnt zzzu riechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 3))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Ask for me II"))
talkEntry:addConsequence(consequence_quest(701, "=", 4))
talkEntry:addResponse("Ssso, you came to help me again? Zss. Thatsss very nice of you. Sss. I haven't sssseen Argentusss Almsbag for a while. Zzz. Pleassse, asssk him if he would ssstill like to buy fisssh. The fissh are ssstarting to sssmell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 3))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Frag für mich II"))
talkEntry:addConsequence(consequence_quest(701, "=", 4))
talkEntry:addResponse("Sssso, ihr kommt um mir zzzu helfen? Wie nett. Zss. Argenutsss Almsbag hat sssich ssschon lange nicht mehr bei mir blicken lassssen. Fragt ihn, ob er noch Fisssch kaufen möchte. Zss. Der Fisssch beginnt zzzu riechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Pleassse asssk Argentusss Almsssbag about hisss fisssh order. Zsss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 4))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bitte fragt bei Argentuss Almsssbag wegen ssseiner Fisschbestellung nach. Sss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 4))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Pleassse asssk Argentusss Almsssbag about hisss fisssh order. Zsss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 4))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Bitte fragt bei Argentuss Almsssbag wegen ssseiner Fisschbestellung nach. Sss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You solved the quest. You are awarded ten silver coins and an old wizard hat."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_item(357, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(701, "=", 6))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Thank you. Zzzs. Take thisss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 5))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du hast das Quest gelöst. Du wirst mit zehn Silbermünzen und einem alten Zauberhut belohnt."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_item(357, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(701, "=", 6))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Danke sssehr. Nehmt diesss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Ask for me III"))
talkEntry:addConsequence(consequence_quest(701, "=", 7))
talkEntry:addResponse("Pleassse asssk Neiran el Nyarale what happened to my collection of oil lampsss. I sssaw him carrying them away. You can find him in the library, the building right there to the north. Zss Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 6))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Frag für mich III"))
talkEntry:addConsequence(consequence_quest(701, "=", 7))
talkEntry:addResponse("Bitte fragt Neiran el Nyarale wass er mit meiner Sssammlung Öllampen gemacht hat. Ich sssah wie er ssie davon trug. Ihr könnt ihn in der Bibliothek finden, es ist dass Gebäude im Norden. Zss Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 6))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Ask for me III"))
talkEntry:addConsequence(consequence_quest(701, "=", 7))
talkEntry:addResponse("Pleassse asssk Neiran el Nyarale what happened to my collection of oil lampsss. I sssaw him carrying them away. You can find him in the library, the building right there to the north. Zss Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 6))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Frag für mich III"))
talkEntry:addConsequence(consequence_quest(701, "=", 7))
talkEntry:addResponse("Bitte fragt Neiran el Nyarale wass er mit meiner Sssammlung Öllampen gemacht hat. Ich sssah wie er ssie davon trug. Ihr könnt ihn in der Bibliothek finden, es ist dass Gebäude im Norden. Zss Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Pleassse asssk Neiran el Nyarale what happened to my collection of oil lampsss. I sssaw him carrying them away. Zss Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 7))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bitte fragt Neiran el Nyarale wass er mit meiner Sssammlung Öllampen gemacht hat. Ich sssah wie er ssie davon trug. Zss Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 7))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Pleassse asssk Neiran el Nyarale what happened to my collection of oil lampsss. I sssaw him carrying them away. Zss Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 7))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Bitte fragt Neiran el Nyarale wass er mit meiner Sssammlung Öllampen gemacht hat. Ich sssah wie er ssie davon trug. Zss Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You solved the quest. You are awarded twelve silver coins and a new robe in the colour of the ocean."))
talkEntry:addConsequence(consequence_money("+", 1200))
talkEntry:addConsequence(consequence_item(193, 1, 333, {["descriptionEn"] = "This robe has the colour of the sea.", ["descriptionDe"] = "Diese Robe hat die Farbe des Meers."}))
talkEntry:addConsequence(consequence_quest(701, "=", 9))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("What? He saysss he threw them away? Zss! Zss! Firssst I ssshall thank you for assking Neiran el Nyarale. Zzzs. Take thisss as a present. Then I will talk to him! Zss... ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 8))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du hast das Quest gelöst. Du wirst mit zwölf Silbermünzen und eine neue Robe in der Farbe des Ozeans belohnt."))
talkEntry:addConsequence(consequence_money("+", 1200))
talkEntry:addConsequence(consequence_item(193, 1, 333, {["descriptionEn"] = "This robe has the colour of the sea.", ["descriptionDe"] = "Diese Robe hat die Farbe des Meers."}))
talkEntry:addConsequence(consequence_quest(701, "=", 9))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Wasss? Weggeworfen hat er sssie? Zss! Zss! Zzzuerssst will ich Euch danken, dassss Ihr mit Neiran el Nyarale spracht. Nehmt diesss alsss Gessschenk. Dann werde ich mir ihm ssssprechen! Zss...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Ask for me IV"))
talkEntry:addConsequence(consequence_item(73, 1, 440, {["descriptionEn"] = "This trout is as large as a salmon.", ["descriptionDe"] = "Diese Forelle ist so groß wie ein Lachs!", ["nameDe"] = "Echt großer Fisch", ["nameEn"] = "Really big fish", ["rareness"] = "2"}))
talkEntry:addConsequence(consequence_quest(701, "=", 10))
talkEntry:addResponse("Zss! Zss! Look, I caught thiss trout. It'sss asss large asss a salmon, but, Marinna Forgeron, magical sssmith from Galmair does not believe me! Zss! Zss! Sssshow her thisss fisssh, please. Ssss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 9))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Frag für mich IV"))
talkEntry:addConsequence(consequence_item(73, 1, 440, {["descriptionEn"] = "This trout is as large as a salmon.", ["descriptionDe"] = "Diese Forelle ist so groß wie ein Lachs!", ["nameDe"] = "Echt großer Fisch", ["nameEn"] = "Really big fish", ["rareness"] = "2"}))
talkEntry:addConsequence(consequence_quest(701, "=", 10))
talkEntry:addResponse("Zss! Zss! Ssschaut, ich habe eine Forelle gefangen, die issst ssso großsss wie ein Lachssss. Aber, zss, Marianne Forgeron, magisssche Ssschmied auss Galmair sssagt, ich lüge! Zss! Zzzeigt ihr diesssen Fisssch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 9))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Ask for me IV"))
talkEntry:addConsequence(consequence_item(73, 1, 440, {["descriptionEn"] = "This trout is as large as a salmon.", ["descriptionDe"] = "Diese Forelle ist so groß wie ein Lachs!", ["nameDe"] = "Echt großer Fisch", ["nameEn"] = "Really big fish", ["rareness"] = "2"}))
talkEntry:addConsequence(consequence_quest(701, "=", 10))
talkEntry:addResponse("Zss! Zss! Look, I caught thiss trout. It'sss asss large asss a salmon, but, Marinna Forgeron, magical sssmith from Galmair does not believe me! Zss! Zss! Sssshow her thisss fisssh, please. Ssss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 9))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Frag für mich IV"))
talkEntry:addConsequence(consequence_item(73, 1, 440, {["descriptionEn"] = "This trout is as large as a salmon.", ["descriptionDe"] = "Diese Forelle ist so groß wie ein Lachs!", ["nameDe"] = "Echt großer Fisch", ["nameEn"] = "Really big fish", ["rareness"] = "2"}))
talkEntry:addConsequence(consequence_quest(701, "=", 10))
talkEntry:addResponse("Zss! Zss! Ssschaut, ich habe eine Forelle gefangen, die issst ssso großsss wie ein Lachssss. Aber, zss, Marianne Forgeron, magisssche Ssschmied auss Galmair sssagt, ich lüge! Zss! Zzzeigt ihr diesssen Fisssch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Pleassse, ssshow thiss fisssh to Marinanne Forgeron in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 10))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Zzzeigt Marianne Forgeron auss Galmair diesssen großssen Fisssch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 10))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Pleassse, ssshow thiss fisssh to Marinanne Forgeron in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 10))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Zzzeigt Marianne Forgeron auss Galmair diesssen großssen Fisssch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 11))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You solved the quest. You are awarded with some coins and jewellery."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_item(62, 1, 877, {["rareness"] = "1", ["craftedBy"] = "Zassaria Riverbank"}))
talkEntry:addConsequence(consequence_quest(701, "=", 12))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Thank you. Please take thisss asss a reward, and keep the fisssh as a souvenir, I caught an even larger one than thisss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 11))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du hast das Quest gelöst. Du wirst mit Münzen und Schmuck belohnt."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_item(62, 1, 877, {["rareness"] = "1", ["craftedBy"] = "Zassaria Riverbank"}))
talkEntry:addConsequence(consequence_quest(701, "=", 12))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Danke ssschön. Bitte nehmt diess. Und behaltet den Fisssch als Souvenir, ich habe bereits einen größeren gefangen. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 12))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Ask for me V"))
talkEntry:addConsequence(consequence_item(225, 1, 999, {["descriptionEn"] = "This crown belongs to Rosaline Edwards.", ["descriptionDe"] = "Diese Krone gehört Rosaline Edwards."}))
talkEntry:addConsequence(consequence_quest(701, "=", 13))
talkEntry:addResponse("I was lucky today. Zss! Zss! I found the crown of Rosaline Edwards. She will sssurely misss it, please go and take her crown back.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 12))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Frag für mich V"))
talkEntry:addConsequence(consequence_item(225, 1, 999, {["descriptionEn"] = "This crown belongs to Rosaline Edwards.", ["descriptionDe"] = "Diese Krone gehört Rosaline Edwards."}))
talkEntry:addConsequence(consequence_quest(701, "=", 13))
talkEntry:addResponse("Ich habe wirklich Anglerglück. Zss! Zss! Ich habe die Krone von Rosaline Edwards gefissscht. Sicher vermisst sie ihren Kopfssschuck ssschon. Geht und bringt ihr die Krone zurück. Zss! Zss!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 12))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Ask for me V"))
talkEntry:addConsequence(consequence_item(225, 1, 999, {["descriptionEn"] = "This crown belongs to Rosaline Edwards.", ["descriptionDe"] = "Diese Krone gehört Rosaline Edwards."}))
talkEntry:addConsequence(consequence_quest(701, "=", 13))
talkEntry:addResponse("I was lucky today. Zss! Zss! I found the crown of Rosaline Edwards. She will sssurely misss it, please go and take her crown back.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 12))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Frag für mich V"))
talkEntry:addConsequence(consequence_item(225, 1, 999, {["descriptionEn"] = "This crown belongs to Rosaline Edwards.", ["descriptionDe"] = "Diese Krone gehört Rosaline Edwards."}))
talkEntry:addConsequence(consequence_quest(701, "=", 13))
talkEntry:addResponse("Ich habe wirklich Anglerglück. Zss! Zss! Ich habe die Krone von Rosaline Edwards gefissscht. Sicher vermisst sie ihren Kopfssschuck ssschon. Geht und bringt ihr die Krone zurück. Zss! Zss!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 13))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Pleassse take the crown back to Rosaline Edwards, ssshe will misss it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 13))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bitte bringt Rosaline Edwards ihre Krone zzzurück. Ssssie wird sie vermisssen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 13))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Pleassse take the crown back to Rosaline Edwards, ssshe will misss it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 13))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Bitte bringt Rosaline Edwards ihre Krone zzzurück. Ssssie wird sie vermisssen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 14))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You solved the quest. You are awarded a silvered longsword and some coins."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_item(98, 1, 222, {["descriptionEn"] = "This sword was a present from Zassaria Riverbank", ["descriptionDe"] = "Dieses Schwert war ein Geschenk von Zassaria Riverbank.", ["rareness"] = "1"}))
talkEntry:addConsequence(consequence_quest(701, "=", 15))
talkEntry:addConsequence(consequence_rankpoints("+", 4))
talkEntry:addResponse("Thank you for your ssservice. Take thisss as a reward.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 14))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gelöst] Du hast das Quest gelöst. Du wirst mit einem versilberten Langschwert und ein paar Silbermünzen belohnt."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_item(98, 1, 222, {["descriptionEn"] = "This wand was a present from Zassaria Riverbank", ["descriptionDe"] = "Dieses Schwert war ein Geschenk von Zassaria Riverbank.", ["rareness"] = "1"}))
talkEntry:addConsequence(consequence_quest(701, "=", 15))
talkEntry:addConsequence(consequence_rankpoints("+", 4))
talkEntry:addResponse("Danke für Euer Bemühen. Nehmt diess als Belohung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 15))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Thank you. Zss. I have nothing elssse for you to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 15))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Danke ssschön. Zss. Ich habe nichtsss mehr für dich zzzu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 15))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Thank you. Zss. I have nothing elssse for you to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 15))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Danke ssschön. Zss. Ich habe nichtsss mehr für dich zzzu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I have no tasssk for people who do not belong to Runewick. You can go to Torina to become a citizzzen. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe keine Aufgabe für Leute die nicht Runewick angehören. Ihr könnt zzzu Torina gehen, um Bürger zzzu werden. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I have no tasssk for people who do not belong to Runewick. You can go to Torina to become a citizzzen. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe keine Aufgabe für Leute die nicht Runewick angehören. Ihr könnt zzzu Torina gehen, um Bürger zzzu werden. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I work asss a fisssher. It'sss fun. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich arbeite alsss Fischerin. Esss macht Spaßsss. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I work asss a fisssher. It'sss fun. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich arbeite alsss Fischerin. Esss macht Spaßsss. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Do you know there'sss a difference between Zsss, Tsss and Ssss?")
talkEntry:addResponse("Usssually marriages between my people are arranged by the parentsss. Sss. Usssually.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addTrigger("erzähl mir was")
talkEntry:addTrigger("erzählt mir was")
talkEntry:addResponse("Wissst ihr, dasss es einen Unterschied gibt zzzwischen Zsss, Tss und Ssss?")
talkEntry:addResponse("Normalerweisse werden Ehen in meinem Volk arrangiert. Ssss. Normalerweissse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Lizzardsss pray to Zzzelphia. To whom do you pray?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Echsssenmenschen beten zzzu Zzzelphia. Zzzu wem betet Ihr? Sss")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("She'sss the Goddesss of the water and the sssea.")
talkEntry:addResponse("You call her Tanora, thisss word iss not easssy for usss to pronounce.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Sssie isssst die Göttin desss Wassers und dess Meereess.")
talkEntry:addResponse("Ihr nennt sssie Tanora, dasss issst kein Wort ausss unssserer Ssssprache.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("There isss no place like thisss under the sssea. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Esss gibt sssolch einen Ort Unterwassser nicht. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("There isss no place like thisss under the sssea. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Esss gibt sssolch einen Ort Unterwassser nicht. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("There isss no place like thisss under the sssea. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Esss gibt sssolch einen Ort Unterwassser nicht. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("There isss no place like thisss under the sssea. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Esss gibt sssolch einen Ort Unterwassser nicht. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("There isss no place like thisss under the sssea. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Esss gibt sssolch einen Ort Unterwassser nicht. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("There isss no place like thisss under the sssea. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Esss gibt sssolch einen Ort Unterwassser nicht. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Ssss...", "Ssss...")
talkingNPC:addCycleText("Ssss?", "Ssss?")
talkingNPC:addCycleText("Ssss!", "Ssss!")
talkingNPC:addCycleText("#me zischt.", "#me hisses.")
talkingNPC:addCycleText("Zss!", "Zss!")
talkingNPC:addCycleText("Tsss...", "Tsss...")
talkingNPC:addCycleText("#me lässt ihren Schwanz hin und her schnellen.", "#me wags her tail back and forth.")
talkingNPC:addCycleText("Zelphia, Ssss!", "Zelphia, Ssss!")
talkingNPC:addCycleText("Möge Mutter euch mit Regen sssegnen.", "May Mother blesss you with rain.")
talkingNPC:addCycleText("#me hantiert mit einem Tiegel, mit der Aufschrift 'Schweifpolitur'", "#me tampers with a cup, which is labelled 'Tail Polish'.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(4)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Zassaria Riverbank von Runewick.", "This NPC is Zassaria Riverbank of Runewick.")
mainNPC:setUseMessage("#me zischt verärgert.", "#me hisses angrily.")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 0)
mainNPC:setEquipment(11, 196)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 52)
mainNPC:setEquipment(9, 0)
mainNPC:setEquipment(10, 0)
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
