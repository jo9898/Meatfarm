VAR completed_manipulatecanteen = false
VAR completable_manipulatecanteen = false
VAR active_manipulatecanteen = false
VAR completed_fetchtinfoilhat = false
VAR completable_fetchtinfoilhat = false
VAR active_fetchtinfoilhat = false
VAR completed_nerdtalk = false
VAR completable_nerdtalk = false
VAR active_nerdtalk = false
VAR completed_nerdtalk2 = false
VAR completable_nerdtalk2 = false
VAR active_nerdtalk2 = false
VAR completed_hidethenob = false
VAR completable_hidethenob = false
VAR active_hidethenob = false
VAR completed_collectevidence = false
VAR completable_collectevidence = false
VAR active_collectevidence = false
VAR completed_nerdtalk3 = false
VAR completable_nerdtalk3 = false
VAR active_nerdtalk3 = false
VAR completed_stealaccesscard = false
VAR completable_stealaccesscard = false
VAR active_stealaccesscard = false
#speaker: Conspiracy-Theorist


"You've got some news?"
*   {not completed_nerdtalk} -> FirstContact
*   {completable_fetchtinfoilhat} [Yepp.]"Did you found the ITEM?"
     -> ThinfoilProgress
*   {completed_fetchtinfoilhat} -> divider3 
*   -> NotReally


    === divider3 ===
*   {completable_nerdtalk3} -> HintsOnPlan
*   {completed_nerdtalk3} -> Disaster

    === NotReally ===

*   Not really. I'm on my way again!
    -> END


    === FirstContact ===
# addQuest nerdtalk
"Good evening, fellow prisoner!"
*   Good evening.
    -> polite
*   Prisoner? Son, I am an intern!
    -> intern


    === intern ===
"You really roll like my old man. Honest in heart, but blank in the bulb. You see, I am not wearing this jumpsuit voluntarily, nor am I an Intern."
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
"They say anything to get you in here, really. Point is, you wan ne be anywhere, but here."
*   Yes, the interior is distasteful!
    -> NotWhatIMeant
*   What’s so awful about this place?
    -> AboutPlace


    === NotWhatIMeant ===
"Hehheh, good one! Ehm..., well, as a matter of fact, I quite like it."
*   Sorry?
    -> Bunker


    === Bunker ===
"I wouldn't fit the prejudice, if I didn't have a shelter in my garden, right? So, yeah. looks quite familiar. I've hung up some curtains, though."
*   Okay, back to the topic: What about this place?
    -> AboutPlace


    === AboutPlace ===
"First: they throw you in here for any reason. Second: no one really is working here. So, I GUESS we fill a rather passive purpose, not to say: we are being kept!"
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
"First: did you feel something strange about the way the shady figure in the lobby was talking, too? To many allusions, right?"
*   Yep, his behavior was suspicious.
    -> Exactly
*   I do enjoy some poetic phrasing from time to time.
    -> GotThat
*   Spare me further details and tell me what to do.
    -> ToDo
    

    === GotThat ===
"Hm, so you got him to sing the jingle, right? I catch my feed move to the rhythm all the time... ."
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
"Feels to me like someone really tries to paint a picture here.. Listen, This is supposed to be a factory for dog food production. But I didn’t see ANY CATTLE."
*   Yiiiieks! They ARE using carrots for dog food!
    -> DontWanneDoThisAnymore
*   You don't say...
    -> Yes


    === DontWanneDoThisAnymore ===
"'Hrmpf', what am I talking for anyways....."
*   Continue
    -> ToDo


    === Yes ===
"Yes, I do! Damn, get this whole moldy pizza...do you understand now how urgent the situation is?!"
*   Tell me how to get oooooooout!
    -> ToDo


    === ToDo ===
"Okay, so here's the plan: I need you to acquire an item of most value to me. It fell through these damn holes in the floor."
*   Continue
    ->ToDo2


    === ToDo2 ===
# completeQuest nerdtalk
# addQuest fetchtinfoilhat
"I was showering and I wasn't fast enough to catch it. You should start your search there."
*   Wait, that's your big plan?
    -> Planning


    === Planning ===
"Consider this your test of worth. I reveal my plan to you if I know you're' with me. Now, Good Luck"
    -> END







    === ThinfoilProgress ===

*   Yes
    -> Hehheh
*   No
    -> bother


    === Hehheh ===
# addQuest nerdtalk2
# completeQuest fetchtinfoilhat
"Yes! Thats it! No one will be able to control my thoughts now, hehheh!"
    -> RevealPlan


    === bother ===
"So, why do you bother me?"
    -> END






    === RevealPlan ===
"Fellow Prisoner! As promised I've worked out a Plan to level the ground for our escape! Are you with me?"
*   Aye Son!
    -> Plan1


    === Plan1 ===
"Listen then. Recently I got my hands on top secret Intel. Tomorrow morning the factory will be visited by people of hygiene control, to check quality standards."
*   [Continue]
    -> Plan2


    === Plan2 ===
"Their staff will be provided with access cards, to be able to move freely throughout the facility. Our goal is to get our hands on one of these!"
*   [Continue]
    -> Plan3


    === Plan3 ===
"The most adequate tool will be to cause a distraction! So your first mission will be to convince "Mr. Blushing Knuckles" to manipulate the outflow of the trough, in the canteen-area!"
*   To cover the canteen in a tide of food!
    -> Plan4


    === Plan4 ===
"Almost. Because dear Nob will be an obstacle in this plan, you have to get rid of him, somehow, first!"
*   Okay, maybe I can distract him..
    -> Plan5


    === Plan5 ===
"I leave the details to you. At last, your "acquisition skills" will be put to a test again. I was able to fetch the key for the lobby. Go and search for incriminating evidence!"
*   Continue
    -> Plan6


    === Plan6 ===
"If we spread them well visible in the canteen, this will be our sincerely regards, hehheh!"
*   Continue
    -> Plan7


    === Plan7 ===
"So, do you've got any question?"
*   What role do you play in that plan?
    -> role


    === role ===
#completeQuest nerdtalk2
#addQuest manipulatecanteen
#addQuest hidethenob
#addQuest collectevidence
#addQuest nerdtalk3
"Oh Pinky, I am the brains of this plan! Now go and help me taking over the world tonight, hehheh!"
    -> END







    === HintsOnPlan ===
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
+   I want to give you report about the progress!
    -> Progress
*   Im on my way!
    -> OnMyWay


    === Progress ===
*   {completable_manipulatecanteen}  The canteen will soon be a mess!
    -> greatcanteen
*   {completable_hidethenob}   The Nob is under control!
    -> greatnob
*   {completable_collectevidence}   I've got the material!
    -> greatevidence
+   [About something else...]
    -> Choices


    === greatcanteen ===
#completeQuest manipulatecanteen
    "Great Job!"
*   [Continue] "Is there something else?"
    -> Done1

    === greatnob ===
#completeQuest hidethenob
    "Great Job!"
*   [Continue] "Is there something else?"
    -> Done1

    === greatevidence ===
#completeQuest collectevidence
    "Great Job!"
*   [Continue] "Is there something else?"
    -> Done1

    === Done1 ===
+   {completed_manipulatecanteen} -> Done2
+   {not completed_manipulatecanteen} -> Progress

    === Done2 ===
+   {completed_hidethenob} -> Done3
+   {not completed_hidethenob} -> Progress


    === Done3 ===
+   {completed_collectevidence} -> Done4
+   {not completed_collectevidence} -> Progress


    === Canteen ===
"I assume, the best solution will be to hire the Bully. Bet, he can leak some destructive energy into the trough... You have to figure out a way of communicating with him, though."
+   [Continue]
    -> Choices


    === IdeasNob ===
"Hmm, at the end of the big factory gate should be a room that's lockable from outside. Maybe you can lure him inside somehow? I heard this boy used it before, to get his cut of the meal.."
+   [Continue]
    -> Choices


    === Evidence ===
"You've got the keys to go back to the lobby now. Search lockers, shelfs ... get creative!"
+   [Continue]
    -> Choices


    === OnMyWay ===
"Good luck then!"
    -> END





    === Done4 ===
#giveItem Apple
#completeQuest nerdtalk3
#addQuest stealaccesscard
"Well that will be a nice mess. Hurry now! Let's put the evidence, the control starts in about a hour."
    -> END





    === Disaster ===
"What are you waiting for?? To the kitchen!"
*   Alright
    -> goDis


    === goDis ===
"Let's end this!"
    -> END
