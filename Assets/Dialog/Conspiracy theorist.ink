#speaker: Conspiracy_Theorist

"Good evening, fellow prisoner!"
*   Good evening.
    -> polite
*   Prisoner? Son, I am an intern!
    -> intern


    === intern ===
"You really roll like my old man. Honest in heart, but blank in the bulb. You see, I am not wearing this jumpsuit voluntarily, nor am I an Intern. It's the same as yours by the way."
*   Continue
    -> polite


    === polite ===
"I see, you just passed your application, hm? I bet you were "phenomenal" and did "exceptionally" well."
*   I don't like to show off, but since you've asked..
    -> Dumb
*    I get the feeling I wasn't the only one?
    -> Like
*   Oh, actually I'm just having a peak.
    -> No


    === No ===
"Oh wow, you fell for that line?" 
*   Continue
    -> Say_Anything


    === Dumb ===
"Ha! Only way you show off, is like a dead fish on the surface!"
*   Continue
    -> Say_Anything


    === Like ===
"I like the way you're thinking!"
*   Continue
    -> Say_Anything


    === Say_Anything ===
"They say anything to get you in here, really. Point is, you wanne be anywhere, but here."
*   Yes, the interior is distasteful!
    -> NotWhatIMeant
*   Whats so awful about this place?
    -> AboutPlace


    === NotWhatIMeant ===
"Hehheh, good one! Ehm..., well, as a matter of fact, i quite like it."
*   Sorry?
    -> Bunker


    === Bunker ===
"I wouldn't fit the prejudice, if I didn't have a shelter in my garden, right? So, yeah. looks quite familiar. I've hung up some curtains, though."
*   Okay, back to the topic: What about this place?
    -> AboutPlace


    === AboutPlace ===
"First: they throw you in here for any reason. Second: no one really is working here. So, I GUESS we fill a rather passive purpose, not to say: we are beeing kept!"
*   Continue
    -> GoOn


    === GoOn ===
"And the wind never sounded so much like screams to me before!"
*   Give me that conclusion.
    -> Conclusion


    === Conclusion ===
"This is not a place any of us should be and we need to get out of here, ASAP! I did some research and came up with some theories myself. You could do your part and help me with some investigations."
*   About your theories..
    -> Theories
*   Okay, what can I do?
    -> ToDo


    === Theories ===
"First: did you feet something strange about the way the shady figurre in the lobby was talking, too? To many allusions, right?"
*   Yep, his behaivor was suspicious.
    -> Exactly
*   I do enjoy some poetic phrasing from time to time.
    -> GotThat
*   Spare me further details and tell me what to do.
    -> ToDo
    

    === GotThat ===
"Hm, so you got him to sing the jingle, right? I catch my feed move to the rythm all the time... ."
*   I think it's worth a lively whistle.
    -> Exactly


    === Exactly ===
"Indeed! Next: the architecture of this place. The lobby looks like build yesterday, but have you seen the living space? It's a barn! Next to this shady factory building.."
*   What's weird about that?
    -> Weird
*   Interesting. How about we skip this nonsense.
    -> Offended


    === Weird ===
"This has some sentimental aura to it. Just like some movie of 2002, you got me?"
*   Following your thoughts feels like chasing a stranger through a cornfield at night.
    -> Weird2
*   Just tell me what to do.
    -> ToDo


    === Offended ===
"Well, you've asked for "that nonsense." But fine."
*   Continue
    -> ToDo


    === Weird2 ===
"Feels to me like someone really tries to paint a picture here.. Listen, This is supposed to be a factory for dog food production. But I didnt see ANY CATTLE."
*   Yiiiieks! They ARE using carrots for dog food!
    -> DontWanneDoThisAnymore
*   You don't say...
    -> Yes


    === DontWanneDoThisAnymore ===
"'Hrmpf', what am I talking for anyways....."
*   Continue
    -> ToDo


    === Yes ===
"Yes, I do! Damn, get this whole moldy pizza...do you understand now how urgend the situation is?!"
*   Tell me how to get oooooooout!
    -> ToDo


    === ToDo ===
"Okay, so here's the plan: I need you to acquire an item of most value to me. It fell through these damn holes in the floor."
*   Continue
    ->ToDo2


    === ToDo2 ===
"I was showering and I wasn't fast enough to catch it. You should start your search there."
*   Wait, that's your big plan?
    -> Planning


    === Planning ===
"Consider this your test of worth. I reveal my plan to you if I know you're' with me. Now, Good Luck"
# addQuest fetch tinfoil-hat
    -> END





/*
{QuestinProgress_fetch tinfoil-hat}

"You're already back! Did you found the ITEM?"
*   Yes
    -> Muhaha
*   No
    -> bother


    === Muhaha ===
"Yes! Thats it! No one will be able to control my thoughts now, hehheh!"
# removeQuest fetch tinfoil-hat
    -> END


    === bother ===
"So, why do you bother me?"
    -> END
*/




/*
{QuestDone_fetch tinfoil-hat}

"Fellow Prisoner! As promissed I've worked out a Plan to level the ground for our escape! Are you with me?"
*   Aye Son!
    -> Plan1


    === Plan1 ===
"Listen then. Recently I got my hands on top secret Intel. Tomorrow morning the factory will be visited by people of hygiene control, to check quality standarts."
*   [Continue]
    -> Plan2


    === Plan2 ===
"Their staff will be provided with accescards, to be able to move freely throughout the facility. Our goal is to get our hands on one of these!"
*   [Continue]
    -> Plan3


    === Plan3 ===
"The most adequate tool will be to cause a distraction! So your first mission will be to convince "Mr.Blushing Knuckles" to manipulate the outflow of the trough, in the canteen-area!"
*   To cover the canteen in a tide of food!
    -> Plan4


    === Plan4 ===
"Almost. Because dear Nob will be an obstacle in this plan, you have to get rid of him, somehow, first!"
*   Okay, maybe I can distract him..
    -> Plan5


    === Plan5 ===
"I leave the details to you. At last, your "aquisation skills" will be put to a test again. I was able to fetch the key for the lobby. Go and search for incriminating evidence!"
*   Continue
    -> Plan 6


    === Plan6 ===
"If we spread them well visible in the canteen, this will be our sincerely regards, hehheh!"
*   Continue
    -> Plan7


    === Plan7 ===
"So, do you've got any question?"
*   What role do you play in that plan?
    -> role


    === role ===
"Oh Pinky, I am the brains of this plan! Now go and help me taking over the world tonight, hehheh!"
#addQuest_manipulate canteen
#addQuest_hide the Nob
#addQuest_collect evidence
    -> END
*/





/*
{QuestinProgress__manipulate canteen_hide the Nob_collect evidence}

"Hey fellow! Where you able to complete the missions already?"
*   [Continue]
    -> Choices


    === Choices ===
+   How shall I manipulate the canteen?
    -> Canteen
+   Any ideas how to trap Nob?
    -> IdeasNob
+   Where shall I look for evidence?
    -> Evidence
*   Im on my way!
    -> OnMyWay


    === Canteen ===
"I assume, the best solution will be to hire the Bully. Bet, he can leak some distructive energy into the trough... You have to figurre out a way of communicating with him, though."
+   [Continue]
    -> Choices


    === IdeasNob ===
"Hmm, at the end of the big factory gate should be a room thats lookable from outside. Maybe you can lure him inside somehow? I heared this boy used it before, to get his cut of the meal.."
+   [Continue]
    -> Choices


    === Evidence ===
"Just turn that place upside down. Its not about leaving no marks. Search lockers, shelfs ... get creative!"
+   [Continue]
    -> Choices


    === OnMyWay ===
"Good luck then!"
    -> END
*/




/*
{QuestDone_manipulate canteen_hide the Nob_collect evidence}

"Well that will be a nice mess. Hurry now! Lets put the evidence, the control starts in about a hour."
#removeQuest_manipulate canteen
#removeQuest_hide the Nob
#removeQuest_collect evidence
#addQuest_steal accesscard
    -> END
*/




/*
{QuestinProgress_steal accesscard}

"Its a disaster! All their brains are hijacked! I try to figure out a way, to turn this situation around!"
*   What can I do?
    -> WhatCanIDo
*   Bye
    -> Bye


    === WhatCanIDo ===
"Steal a card? Talk to someone? Create a wonder? I need to focus! Just do ... ANYTHING!"
    -> END


    === Bye ===
"Hush!"
    -> END
*/