local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Frizza the informant. Keywords: Question, information, Cadomyr, building, mission, town."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Frizza die Auskunftgeberin. Schlüsselwörter: Auskunft, Information, Cadomyr, Gebäude, Auftrag, Stadt."))
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
talkEntry:addConsequence(consequence_inform("[Hint] Have you already asked her for 'information' or her 'quest'?"))
talkEntry:addResponse("Greetingsss, can I help you?")
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
talkEntry:addConsequence(consequence_inform("[Hinweis] Hast du sie bereits nach 'Information' oder 'Quest' befragt?"))
talkEntry:addResponse("Grüsssse, kann ich helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addConsequence(consequence_inform("[Hint] Have you already asked her for 'information' or her 'quest'?"))
talkEntry:addResponse("Greetingsss, can I help you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addConsequence(consequence_inform("[Hinweis] Hast du sie bereits nach 'Information' oder 'Quest' befragt?"))
talkEntry:addResponse("Grüsssse, kann ich helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Sssee you again, when you need more information.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Wir sssehen unsss wenn mehr Informationen benötigt werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Sssee you again, when you need more information.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Wir sssehen unsss wenn mehr Informationen benötigt werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Very good, I could jussst anssswer a quesssstion few minutes ago.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Sssehr gut, konnte gerade wieder eine Frage beantworten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Frizza, the informant of Cadomyr.")
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
talkEntry:addResponse("Frizza, die Informantin von Cadomyr.")
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
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I don't sssell or buy anything, but we have a marketplace. You can try your luck there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich verkaufe oder kaufe gar nichtsss. Aber wir haben einen Marktplatz. Versuch dein Glück doch dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I can tell you many things about Cadomyr. Just asssk me about buildingsss, locationsss, eventsss, people, history or godsss of Cadomyr. Additionally, I have a little tasssk.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Ich kann dir viele Dinge über Cadomyr erzählen. Frag nur nach Gebäude, Orte, Ereignissse, Leute, Gessschichte oder Götter von Cadomyr. Zusssätzlich hätte ich noch eine kleine Aufgabe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("teleport")
talkEntry:addResponse("A possibility to teleport yourself to Runewick, Galmair or the Hemp Necktie Inn isss here asss yoo ssshould sssee.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("teleport")
talkEntry:addResponse("Eine Möglichkeit sich nach Runewick, Galmair oder zum Gasthof zur Hanfschlinge zu teleportieren findet man hier wie du sssehen kannssst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Keywords] building, location, events, people, history, god, ruler, law."))
talkEntry:addResponse("I have information about buildingsss, locationsss, eventsss, people, hissstory, lawsss, our ruler, lawsss and godsss of Cadomyr. Just asssk me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Gebäude, Orte, Ereignisse, Leute, Geschichte, Götter, Herrscher, Gesetz."))
talkEntry:addResponse("Ich habe Informationen über Gebäude, Orte, Ereignissse, Leute, Geschichte, Gesetze, unsere Herrssscherin, Gesetze und die Götter von Cadomyr. Frag einfach!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("question")
talkEntry:addConsequence(consequence_inform("[Keywords] building, location, event, people, history, god, ruler, law."))
talkEntry:addResponse("I have information about buildings, locationsss, eventsss, people, hissstory, our ruler, lawsss and godsss of Cadomyr. Just asssk me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frage")
talkEntry:addTrigger("Auskunft")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Gebäude, Orte, Ereignisse, Leute, Geschichte, Götter, Herrscher, Gesetz."))
talkEntry:addResponse("Ich habe Informationen über Gebäude, Orte, Ereignissse, Leute, Geschichte, unsere Herrssscherin, Gesetze und die Götter von Cadomyr. Frag einfach!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("building")
talkEntry:addConsequence(consequence_inform("[Keywords] Palace, Tavern Unicorn Lion, Inn Lakeshore, Townwall, Villa, Sergeant's Room, Flat quarter, Sir Reginald's Tomb, market, library, temple, census office, teleporter, donkey stable"))
talkEntry:addResponse("We have following buildingsss: Palace, Tavern Unicorn Lion, Inn Lakeshore, Townwall, Villa, Sergeant's Room, Flat quarter and Sir Reginald's Tomb. We have alssso a market, library, temple, census office, teleporter and donkey stable.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gebäude")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Palast, Taverne Einhörniger Löwe, Gasthaus Seeufer, Stadtmauer, Villa, Stube des Wachtmeisters, Wohnungsquartier, Sir Reginalds Gruft, Markt, Bibliothek, Tempel, Zensusbüro, Teleporter, Eselstall"))
talkEntry:addResponse("Wir haben folgende Gebäude: Palast, Taverne Einhörniger Löwe, Gasthaus Seeufer, Stadtmauer, Villa, Stube des Wachtmeisters, Wohnungsquartier und Sir Reginalds Gruft, sowie Markt, Bibliothek, Tempel, Zensusbüro, Teleporter und Eselstall.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("location")
talkEntry:addConsequence(consequence_inform("[Keywords] Ruzusss"))
talkEntry:addResponse("If you want to know anything about locationsss outssside Cadomyr like the Kantabi Desert, Western Kantabi Desert, Kantabi Delta, Illarion or Shadowland, just asssk Ruzusss behind the town gate.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ort")
talkEntry:addConsequence(consequence_inform("[Schlüsselwort] Ruzusss"))
talkEntry:addResponse("Wenn du etwas über die Orte außerhalb von Cadomyr wie Kantabiwüste, Westliche Kantabiwüste, Kantabidelta, Illarion oder Schattenland wisssen möchtessst, dann frage Ruzusss hinter dem Stadttor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(640, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ruzusss")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Ruzusss' started] Try to find Ruzusss and get your reward."))
talkEntry:addConsequence(consequence_quest(640, "=", 1))
talkEntry:addResponse("You are looking for Ruzusss? Well, Ruzusss staysss behind the gate. *points at the town gate in the north.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(640, "<", 1))
talkEntry:addTrigger("Ruzusss")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Ruzusss' gestartet] Finde Ruzusss und erhalte deine Belohnung."))
talkEntry:addConsequence(consequence_quest(640, "=", 1))
talkEntry:addResponse("Ruzusss wird gesucht? Nun, Ruzuss steht hinterm Tor. *zeigt auf das Stadttor im Norden.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ruzusss")
talkEntry:addResponse("You are looking for Ruzusss? Well, Ruzusss staysss behind the gate. *points at the town gate in the north.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ruzusss")
talkEntry:addResponse("Ruzusss wird gesucht? Nun, Ruzuss steht hinterm Tor. *zeigt zum Stadttor im Norden.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("people")
talkEntry:addResponse("Many people live here. Many people from different placesss. Most are jussst passsing me when they travel. It ssseemsss they are thinking of the Gods.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Leute")
talkEntry:addResponse("Viele Leute wohnen hier. Viele Leute von verssschiedenen Orten. Viele gehen wortlosss an mir vorbei wenn sssie herumreisen. Esss ssscheint sssie sssind in Gedanken an irgendwelche Götter. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("history")
talkEntry:addResponse("We have a glorious hissstory here and you can find more information about it looking at ssseveral picturesss in our town. These illustrationsss record the actionsss of our rulersss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Geschichte")
talkEntry:addResponse("Wir haben eine glorreiche Gessschichte hier und man kann Information darüber an verssschiedenen Bildern in unssserer Ssstadt finden. Diessse Illustrationen zeigen die Handlungen unserer Herrscher.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("event")
talkEntry:addResponse("Many eventsss have happened sssince the foundation of our town. You can find more information about them looking at ssseveral picturesss in our town. These illustrationsss record the actionsss of our rulersss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ereignis")
talkEntry:addTrigger("Geschehnis")
talkEntry:addResponse("Viele Ereignisse haben hier stattgefunden ssseit der Gründung. Man kann darüber Informationen an verssschiedenen Bildern in unssserer Ssstadt finden. Diessse Illustrationen zeigen die Handlungen unssserer Herrssscher.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("law")
talkEntry:addResponse("We do not really have lawsss. Rather, we have a codex which can be found at a rider-ssstatue in front of the palace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gesetz")
talkEntry:addResponse("Wir haben nicht wirklich Gesetze hier. Wir haben eher einen Kodex der an einer Reiterssstatue vor dem Palast gefunden werden kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ruler")
talkEntry:addResponse("Our current ruler isss our wonderful Queen Rosaline Edwards. You can find her in our palace. The namesss of our former rulesss can be found at a rider-ssstatue in front of the palace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Herrscher")
talkEntry:addResponse("Unsere aktuelle Herrscherin ist unsssere wunderbare Königin Rosaline Edwards. Man findet sssie in unserem Palast. Die Namen unserer früheren Herrscher können auf einer Reiterssstatue vor dem Palast gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("market")
talkEntry:addResponse("The market isss behind thisss town wall. Jussst passs through the town gate and the Sergeant's Room. You can buy a lot of thingsss there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Markt")
talkEntry:addResponse("Der Markt ist hinter dieser Ssstadtmauer hier. Einfach das Stadttor und die Stube des Wachtmeisters durchqueren. Du kannst dort viele Dinge kaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("temple")
talkEntry:addResponse("We have one temple here. The temple of Zhambra. Other temples are outside of Cadomyr, but I have no idea where. However, the temple of Zhambra is to the right ssside between the Palace and market.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tempel")
talkEntry:addResponse("Wir haben einen Tempel hier und dasss issst der Tempel der Zhambra. Andere Tempel sssind außerhalb von Cadomyr, aber ich weiß nicht wo. Egal auch, den Tempel der Zhambra findessst du auf der rechten Ssseite zwischen Palassst und Markt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Census")
talkEntry:addResponse("The Census office can be found in front of the Palace to the left ssside. There you can find information about your rank.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Zensusbüro")
talkEntry:addResponse("Dasss Zensusbüro kann vor dem Palassst auf der linken Ssseite gefunden werden. Dort kannssst du Information über deinen Rang erhalten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Census")
talkEntry:addResponse("The Census office can be found in front of the Palace to the left ssside. There you can register yourssself and become one of usss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zensusbüro")
talkEntry:addResponse("Dasss Zensusbüro kann vor dem Palassst auf der linken Ssseite gefunden werden. Dort kann man sssich registrieren lasssen und einer von unsss werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Palace")
talkEntry:addConsequence(consequence_inform("[Keywords] Queen, Royal Chamber, Treasury, Library"))
talkEntry:addResponse("Our Palace isss on the other ssside of the town. Just go inssside and run through. You can find there the Royal Chamber, our wonderful Queen, her treasury and the library.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Palast")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Königin, Königliche Kammer, Schatzraum, Bibliothek"))
talkEntry:addResponse("Unssser Palassst issst auf der anderen Ssseite der Ssstadt. Geh einfach rein und lauf durch die Ssstadt. Dort findet man die Königliche Kammer, unsssere wunderbare Königin, ihren Schatzraum und die Bibliothek.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Royal Chamber")
talkEntry:addResponse("The Royal Chamber in the Palace isss the private room of our Queen Rosaline.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königliche Kammer")
talkEntry:addResponse("Die Königliche Kammer im Palast issst der private Raum unsssserer Königin Rosaline.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Treasure room")
talkEntry:addTrigger("Treasury")
talkEntry:addResponse("The Treasury in the Palace isss the place where all our wealth isss sssaved. We have to protect it againssst any threat, in particular from Runewick and Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schatzraum")
talkEntry:addResponse("Der Schatzraum in unserem Palast issst jener Ort in welchem wir unssseren Reichtum sssichern. Wir müsssen ihn ssschützen gegen jede Bedrohung. Insssbesssondere vor Runewick und Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Library")
talkEntry:addResponse("Our library with all our booksss can be found in the Palace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bibliothek")
talkEntry:addResponse("Unsssere Bibliothek mit all unssseren Büchern kann im Palast gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tavern Unicorn Lion")
talkEntry:addResponse("Our tavern the Unicorn Lion isss right after the market on the left side. You cannot missss it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Taverne Einhörniger Löwe")
talkEntry:addResponse("Unsssere Taverne Einhörniger Löwe issst genau hinter dem Markt. Du kannssst sssie nicht verfehlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Inn Lakeshore")
talkEntry:addResponse("Our Inn Lakeshore isss in the northwest of our town, left of the tavern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gasthaus Seeufer")
talkEntry:addResponse("Unssser Gasthaus Seeufer issst im Nordwesten unssserer Ssstadt, linksss von unssserer Taverne.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Town wall")
talkEntry:addConsequence(consequence_inform("[Keywords] Guard room, Civic Hall"))
talkEntry:addResponse("In the town wall *points to the north behind her* you can find the guard room and the civic hall.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stadtmauer")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Wachstube, Stadtsaal"))
talkEntry:addResponse("In der Stadtmauer *zeigt in den Norden hinter ihr* kann man die Wachstube und den Stadtsaal finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Guard room")
talkEntry:addResponse("Our Guard room isss on the left side of the town wall. Ssso, enter the townwall and go left.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wachstube")
talkEntry:addResponse("Unsssere Wachstube issst an linken Ssseite unssserer Ssstadtmauer. Ssso, geh in die Ssstadtmauer und dann linksss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Civic Hall")
talkEntry:addResponse("Our Civic Hall is above the Sergeant's Room. Enter the town and climb up the firssst ladder.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stadtsaal")
talkEntry:addResponse("Unssser Stadtsaal issst über der Stube des Wachtmeisters. Rein in die Ssstadt und die erssste Leiter hoch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Villa Edward")
talkEntry:addResponse("The Villa Edward isss the sssecond building left of the market. It isss behind the Villa Annabeth. It isss for the honourable memberss of our sssociety.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Villa Edward")
talkEntry:addResponse("Die Villa Edward issst dasss zweite Gebäude linksss vom Markt. Esss issst hinter der Villa Annabeth. Esss issst gedacht für die ehrenhaften Mitglieder in unssserer Gesssellssschaft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Villa Reginald")
talkEntry:addResponse("The Villa Reginald isss the building next to the census office. It isss for the honourable memberss of our sssociety.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Villa Reginald")
talkEntry:addResponse("Die Villa Reginald issst dasss Gebäude neben dem Zensusbüro. Esss issst gedacht für die ehrenhaften Mitglieder in unssserer Gesssellssschaft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Villa")
talkEntry:addConsequence(consequence_inform("[Keywords] Villa Edward, Villa Rosaline, Villa Reginald"))
talkEntry:addResponse("Which villa do you mean? We have three of them: Villa Edward, Villa Rosaline and Villa Reginald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Villa")
talkEntry:addConsequence(consequence_inform("[Schlüsselwörter] Villa Edward, Villa Rosaline, Villa Reginald"))
talkEntry:addResponse("Welche issst gemeint? Wir haben drei von ihnen: Villa Edward, Villa Rosaline und Villa Reginald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sergeant's Room")
talkEntry:addTrigger("Sergeants Store")
talkEntry:addResponse("The Sergeant's Room isss right of the town gate and you can look for further misssions there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stube des Wachtmeisters")
talkEntry:addResponse("Die Stube des Wachtmeisters issst rechtsss vom Ssstadttor und du kannssst dort nach weiteren Befehlen Ausssschau halten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Flat quarter")
talkEntry:addResponse("The Flat quarter isss the eassstern part our town. It isss the home for thossse at the bottom of our sssocial hierarchy.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wohnungsquartier")
talkEntry:addResponse("Das Wohnungsquartier issst der össstliche Teil unssserer Ssstadt. Esss ssstellt das Heim der ssschlechter gessstelteren unter unsss dar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sir Reginald's Tomb")
talkEntry:addResponse("Sir Reginald's Tomb issss right in front of the entrance to the town wall and honours one of our former kingsss. It can become quite bloody down there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sir Reginalds Gruft")
talkEntry:addResponse("Sir Reginalds Gruft issst rechtsss vor dem Eingang zur Ssstadtmauer zu Ehren einesss unssserer früheren Könige. Esss kann sssehr blutig da unten werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(640, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Ruzusss' started] Try to find Ruzusss and get your reward."))
talkEntry:addConsequence(consequence_quest(640, "=", 1))
talkEntry:addResponse("I do not have a tasssk for you yet. Probably in two or three monthsss. If you like you can try to find Ruzusss, but if you desssire a real tasssk you would be better asssking other people in Cadomyr *points to the gate*. Otherwissse, you are very welcome to come back here in two or three monthsss when I will have definitely sssome tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(640, "<", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Ruzusss' gestartet] Finde Ruzusss und erhalte deine Belohnung."))
talkEntry:addConsequence(consequence_quest(640, "=", 1))
talkEntry:addResponse("Ich habe momentan nichtsss für dich zu tun. Wahrssscheinlich in zwei oder drei Monaten. Fallsss du möchtessst kannssst du versssuchen Ruzusss zu finden. Aber wenn du einen richtigen Auftrag erwünssscht dann sssolltets du bessser die Leute in Cadomyr fragen *zeigt zum Tor*. In jeden Fall bissst du herzlich eingeladen in zwei oder drei Monaten zurück zu kommen. Dann sssollte ich einige Aufgaben für dich haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(640, "<", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Ruzusss' started] Try to find Ruzusss and get your reward."))
talkEntry:addConsequence(consequence_quest(640, "=", 1))
talkEntry:addResponse("I do not have a tasssk for you yet. Probably in two or three monthsss.  If you like you can try to find Ruzusss, but if you desssire a real tasssk you would be better asssking other people in Cadomyr *points to the gate*. Otherwissse, you are very welcome to come back here in two or three monthsss when I will have definitely sssome tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(640, "<", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Ruzusss' gestartet] Finde Ruzusss und erhalte deine Belohnung."))
talkEntry:addConsequence(consequence_quest(640, "=", 1))
talkEntry:addResponse("Ich habe momentan nichtsss für dich zu tun. Wahrssscheinlich in zwei oder drei Monaten. Fallsss du möchtessst kannssst du versssuchen Ruzusss zu finden. Aber wenn du einen richtigen Auftrag erwünssscht dann sssolltest du bessser die Leute in Cadomyr fragen *zeigt zum Tor*. In jeden Fall bissst du herzlich eingeladen in zwei oder drei Monaten zurück zu kommen. Dann sssollte ich einige Aufgaben für dich haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("As I sssaid, you ssshould asssk other people in Cadomyr *points to the gate*, or you can come back in two or three monthsss when I will have definitely sssome tasksss for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wie ich sagte, du sssolltest besser die Leute in Cadomyr fragen *zeigt zum Tor*. Oder du kommssst in zwei oder drei Monaten zurück. Da sssollte ich dann einige Aufgaben für dich haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("As I sssaid, you ssshould asssk other people in Cadomyr *points to the gate*, or you come back in two or three monthsss when I will have definitely sssome tasksss for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Wie ich sagte, du sssolltest besser die Leute in Cadomyr fragen *zeigt zum Tor*. Oder du kommssst in zwei oder drei Monaten zurück. Da sssollte ich dann einige Aufgaben für dich haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("town")
talkEntry:addResponse("There are three towns: Our town Cadomyr, ruled by our brave Queen Rosaline Edwards. Then the two cowardly towns of Galmair and Runewick, ruled by Don Valerio Guilianni and Archmage Elvaine Morgan.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("stadt")
talkEntry:addResponse("Es gibt drei Städte: Unsere Stadt Cadomyr, geführt von unserer tapferen Königin Rosaline Edwards. Dann diese zwei feigen Städte Galmair und Runewick, geführt von Don Valerio Guilianni und Erzmagier Elvaine Morgan.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Morgan? Zzzz. That isss an evil sorcerer in Runewick and rulesss there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Morgan? Zzzz. Dasss issst ein bössser Zauberer in Runewick der auch dort herrssscht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Morgan? Zzzz. That isss an evil sorcerer in Runewick and rulesss there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Morgan? Zzzz. Dasss issst ein bössser Zauberer in Runewick der auch dort herrssscht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("That isss a weird place, but if you look for alchemists, candle makers, carpenters, lumberjacks, cooks, bakers, farmers, herb gatherers, or tailors, tanners and dyers you will find sssome there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Dasss issst ein verrückter Ort, aber wenn man Alchemisten, Kerzenmacher, Schreiner, Holzfäller, Köche, Bäcker, Bauern, Kräutersammler, Schneider, Gerber oder Färber suchst, kann man dort welche finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Don? Zzzz. That thief rulesss in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Don? Zzzz. Diessser Dieb herrssscht in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("That isss a sssneaky place, but if you look for blacksmiths, brick makers, masons, miners, and brewers you will find sssome there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Dasss issst ein hinterhältiger Ort, aber wenn man einen Schmied, Ziegelmacher, Steinmetz, Schürfer oder Brauer sssuchst, findessst man den dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Our nice Queen Rosaline Edwards hasss been ruling for many years now. Ssshe is brave and smart and beautiful. Ssss. You can find her in her Palace on the other ssside of the town. Jussst go in.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Unsere nette Königin Rosaline Edwards herrssscht nun ssschon ssseit einigen Jahren. Sssie ist mutig, ssschlau und ssschön. Man findet sssie in ihrem Palassst auf der anderen Ssseite der Ssstadt. Geh einfach rein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Our nice Queen Rosaline Edwards hasss been ruling for many years now. Ssshe is brave and smart and beautiful. Ssss. You can find her in her Palace on the other ssside of the town. Jussst go in.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Unsere nette Königin Rosaline Edwards herrssscht nun ssschon ssseit einigen Jahren. Sssie ist mutig, ssschlau und ssschön. Man findet sssie in ihrem Palassst auf der anderen Ssseite der Ssstadt. Geh einfach rein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Here at Cadomyr, we are interesssted in fishermen, glass blowers, diggers, finesmiths, and gem grinders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Hier in Cadomyr sssuchen wir immer nach Fischer, Glasblässer, Sssandgräber, Goldschmied oder Edelsteinschleifer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I don't sssell or buy anything, but we have a marketplace. You can try your luck there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich verkaufe oder kaufe gar nichtsss. Aber wir haben einen Marktplatz. Versuch dein Glück doch dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I can tell you many things about Cadomyr. Just ask me about the buildingsss, locationsss, eventsss, people, hissstory or godsss of Cadomyr. Additionally, I have a little tasssk.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("Ich kann dir viele Dinge über Galmair erzählen. Frage nur nach Gebäude, Orte, Ereignissse, Leute, Geschichte oder Götter von Cadomyr. Zusssätzlich hätte ich noch eine kleine Aufgabe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Primarily, we pray to three godsss in Cadomyr, they are Malachin, Zhambra and Sirani. I, however, pray to Zelphia, Mother of my race")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Bevorzugt beten wir drei Götter in Cadomyr an. Die wären Malachin, Zhambra und Sirani. Aber ich bette zu Zelphia, der Mutter meiner Rassse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("One of the unimportant Younger Godsss. You can find followersss in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Einer der unwichtigen jüngeren Götter. Du kann Anhänger in Runewick finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("One of the Elder Gods, but we do not care about this God here. Better you do not waste your time with this god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Brágon")
talkEntry:addResponse("Einer der alten Götter, aber wir kümmern uns hier nicht um diese Gottheit. Daher verschwende besser deine Zeit nicht mit dieser Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Goddess of Spirits and the Underworld. Cherga is the one who collects the dead ones, and takes them to the realms they belong to.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Die Göttin der Geister und der Unterwelt. Sie ist jene, welche die Toten begleitet und in ihre vorbestimmten Reiche führt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("One of the unimportant Younger Godsss. You can find followersss in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Eine der  unwichtigen jüngeren Götter. Du kann Anhänger in Runewick finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("One of the Elder Gods, but we do not care about this God here. Better you do not waste your time with this god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Einer der alten Götter, aber wir kümmern uns hier nicht um diese Gottheit. Daher verschwende besser deine Zeit nicht mit dieser Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("One of the Elder Gods, but we do not care about this God here. Better you do not waste your time with this god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Eine der alten Götter, aber wir kümmern uns hier nicht um diese Gottheit. Daher verschwende besser deine Zeit nicht mit dieser Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("One of the unimportant Younger Godsss. You can find followersss in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Einer der unwichtigen jüngeren Götter. Du kann Anhänger in Galmair finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Many follow the honourable Malachín. Soldiers and knights pray for protection in battles, hunters for a good hunt and protection while hunting, paladins for protection and a powerful fist against evil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malachín")
talkEntry:addResponse("Viele folgen dem ehrenwerten Malachin. Soldaten und Ritter beten zu ihm, um Schutz in schweren Kämpfen zu erhalten; Jäger, um den erfolgreichen Ausgang einer Jagd; Paladine allgemein für den Schutz im Kampf gegen das Böse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Sssss, I do not like thisss god. You had better avoid thisss name. People should kill you for usssing thisss name!")
talkEntry:addResponse("#s Helpsss! We have potential fellow of the Blood God here! Head up!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse(" Ssss, ich mag diesen Gott nicht. Du solltest diesen Namen besser nicht aussprechen. Die Leute sollten dich dafür, dass du diesen Namen verwendest, töten!")
talkEntry:addResponse("#s Hilfe! Wir haben einen potentiellen Anhänger desss Blutgott hier! Kopf ab!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("One of the unimportant Younger Godsss. You can find followersss in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Nargún")
talkEntry:addTrigger("Nargùn")
talkEntry:addResponse("Einer der unwichtigen jüngeren Götter. Du kann Anhänger in Galmair finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("One of the unimportant Younger Godsss. You can find followersss in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Eine der unwichtigen jüngeren Götter. Du kann Anhänger in Runewick finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("One of the unimportant Younger Godsss. You can find followersss in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Einer der unwichtigen jüngeren Götter. Du kann Anhänger in Galmair finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Many young females pray to her for advice of love or simply beauty tips. Most Sirani priests are good healers. Her followers believe in peace and harmony, and most of them don't like weapons or violence.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Viele junge Frauen beten zu Ihr, der Liebe wegen oder um Schönheit zu erlangen. Die meisten Priester Siranis sind gute Heiler und glauben wie alle Ihre Anhänger an ein Leben in Friede und Harmonie. Sie verabscheuen Gewalt und Waffen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("One of the Elder Gods, but apart from me and my race nobody cares about this God here. Better you do not waste your time with this god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Eine der alten Götter, aber ausgenommen von mir und meiner Rasse kümmert sich niemand hier um diese Gottheit. Daher verschwende besser deine Zeit nicht mit dieser Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("One of the Elder Gods, but we do not care about this God here. Better you do not waste your time with this god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Eine der alten Götter, aber wir kümmern uns hier nicht um diese Gottheit. Daher verschwende besser deine Zeit nicht mit dieser Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("The followers of Zhambra are righteous and loyal ones who believe in honour and law. They often try to rescue others, and fight against the evil. Zhambra is worshipped by nobles and knights, paladins, and many soldiers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Die Anhänger Zhambras sind geradlinig und ergebene Gefolgsleute, die an Ehre und Recht glauben. Sie versuchen häufig, Andere zu retten und stehen im Kampf gegen das Böse. Zhambra wird gehuldigt von Adligen, Rittern, Höflingen und von vielen Kriegern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I have never heard that name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ich habe diesssen Namen nie gehört.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Nice to meet you. How can I help you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Ssschön dich zu kennenzulernen. Wie kann ich dir helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Frizza")
talkEntry:addResponse("Yes, that isss my name. About what do you want information?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frizza")
talkEntry:addResponse("Ja, dasss ist mein Name. Über wasss wollt ihr Information?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Willkommen in Cadomyr!", "Welcome to Cadomyr!")
talkingNPC:addCycleText("Ich bin die Auskunftsgeberin von Cadomyr. Fragt mich nach Informationen wenn ihr welche wissen wollt.", "I am the informant of Cadomyr. Ask me for information if you want some.")
talkingNPC:addCycleText("Wer etwas über die Orte hier wissen will, soll mich nach diesen Orten fragen.", "If you want to know something about the locationsss here, just ask me about these locationsss.")
talkingNPC:addCycleText("Wer etwas über die Gebäude hier wissen will, soll mich nach diesen Gebäuden fragen.", "If you want to know something about the buildings here, just ask me about these buildings.")
talkingNPC:addCycleText("Wer etwas über die Geschichte hier wissen will, soll mich nach der Geschichte fragen.", "If you want to know something about the history of Cadomyr, just ask me about the history.")
talkingNPC:addCycleText("Wer etwas über die Leute hier wissen will, soll mich nach diesen Leuten fragen.", "If you want to know something about the people here, just ask me about these people.")
talkingNPC:addCycleText("Wer etwas über die Götter hier wissen will, soll mich nach diesen Gottheiten fragen.", "If you want to know something about the gods here, just ask me about these gods.")
talkingNPC:addCycleText("Wer etwas über die Ereignisse hier wissen will, soll mich nach diesen Ereignissen fragen.", "If you want to know something about the events here, just ask me about these events.")
talkingNPC:addCycleText("#me wedelt mit ihrem Schwanz.", "#me wags her tail.")
talkingNPC:addCycleText("#me blickt herum mit ihren weit geöffneten Augen.", "#me looks around with wide opened eyes.")
talkingNPC:addCycleText("#me untersucht ihr Kleid.", "#me examines her dress.")
talkingNPC:addCycleText("#me streichelt ihren Schwanz.", "#me pets her tail.")
talkingNPC:addCycleText("#me isst einen Fisch.", "#me eats a fish.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(4)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Frizza die Auskunftgeberin.", "This NPC is Frizza the informant.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 180)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 827)
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
