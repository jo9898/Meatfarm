
VAR completed_placethebait = false
VAR completable_placethebait = false
VAR active_placethebait = false
VAR completed_nerdtalk3 = false
VAR completable_nerdtalk3 = false
VAR active_nerdtalk3 = false
VAR completed_nerdtalk2 = false
VAR completable_nerdtalk2 = false
VAR active_nerdtalk2 = false
VAR completed_hidethenob = false
VAR completable_hidethenob = false
VAR active_hidethenob = false
VAR completed_fetchtinfoilhat = false
VAR completable_fetchtinfoilhat = false
VAR active_fetchtinfoilhat = false
VAR completed_lambtalk = false
VAR completable_lambtalk = false
VAR active_lambtalk = false
VAR completed_searchforclarity = false
VAR completable_searchforclarity = false
VAR active_searchforclarity = false
#speaker: Lamb


"Willchoker!"
*   {completed_nerdtalk3} -> Willchoker
*   {not completed_nerdtalk3} -> ImBusy


    === ImBusy ===
*  {not completed_fetchtinfoilhat} [Continue]"Haaa, can't you see I'm busy? I'm on my search for clarity!" -> Choices
*  {completed_searchforclarity} [Continue]"What is it?" -> Choices
    


    === Choices ===
+   {not completed_searchforclarity} Spotted any items in this ... mess?
    -> Items
+   Hey, do you know anything about that strange woman with the hat of tinfoil?
    -> The_Priest
*   {completed_nerdtalk2} Hey, I want to talk about something else..
    -> TalkAboutNob
*   Bye
    -> Bye2


    === Items ===
"Not yet. I'm looking for my hat of tinfoil. You know, it's the sign of my devotion to Alummina."
+   I just remembered, the priest was asking for you!
    -> Request
*   It's' your hat?
    -> Sure


    === Sure ===
"Whom else should it belong to?"
*   The Conspiracist told me it's his.
    -> Maggot


    === Maggot ===
"This maggot! He must be jealous of Alummina's affection!"
*   Continue
    -> Items

    === Bye2 ===
"Wait! The priest wasn't asking for me, right?"
    -> END

    === Request ===
"You-Your Highness?! Are you sure?"
+   Yes
    -> Thanks
+   No
    -> DontJoke


    === Thanks ===
#giveItem Bait
"Thank you for the message, now excuse me!"
    -> END

    === DontJoke ===
"Even I tell better jokes!"
+   Continue
    -> Choices


    === The_Priest ===
"Don't you use that foul language on HER HIGHNESS! Her voice is the rustle in the gras, making the words of the wind comprehensible for human ears.
+   And the wind told her you should mob the floor?
    -> DamnRight
+   Ahem, maybe you should try making your own decisions. 
    -> MyDecision


    === MyDecision ===
"My decision is to follow the word of Alummina!"
+   Continue
    -> Choices


    === DamnRight ===
"Alummina's will is not to question!"
+   Alu told me, you should try some humor.
    -> Joke


    === Joke ===
"A Horse walks into a bar. The barman says, 'funny! Never saw a lasagna walking into my bar!' So, the horse: 'heh, never got a drink served by a heap of dogfood either!'"
+   Wait what?
    -> WaitWhat


    === WaitWhat ===
"That's what my brother told me, when I came here. It's funny, right? That barman must have looked like a mess, haha"
+   Who's your Brother?
    -> Brother


    === Brother ===
"Wolf. The person in the lobby? You couldn't have missed him!"
+   Continue
    -> Choices









    === TalkAboutNob ===
*   {not completed_lambtalk} Lets talk about Nob.
    -> Nob
+   {completed_lambtalk} Where was that room again?
    -> FactoryRoom
*   Hey, are you mad, because I gave that hat to the Conspiracy Theorist?
    -> Alummina
*   Lets talk about something else..
    -> Choices


  === Alummina ===
"You may have taken the sign of my worship, but the priest told me, I'm still blessed with Alumminas affection."
*   [Continue]
    -> TalkAboutNob
    

    === FactoryRoom ===
"Its the door, all the way down the corridor, next to the factory entry."
+   [Continue]
    -> TalkAboutNob


    === Nob ===
"Argh! This plague! I don't like to talk about him!"
*   Why not?
    -> HesJust


    === HesJust ===
"I dont wanne bore you with my problems."
*   I get some "I really don't wan ne, but I wan ne" vibes here.
    -> Problems


    === Problems ===
"I am starving! He's taking eating as competition and ... he's a bully!!"
*   I am with you.
    -> Problems2
*   and?...
    -> Rude1


    === Rude1 ===
"Have you ever not eaten for several days??
*   [Continue]
    -> Problems2


    === Problems2 ===
"When there's time for lunch he pushes away everybody, but the biggest. Dominating that trough like he's a boar in the puddle!"
*   Son, I'm listening.
    -> Problems3
*   A buh buh buh
    -> Rude2


    === Rude2 ===
"HEY! YOU wanted me to talk, so listen, turtleneck!"
*   Ouch!
    -> Problems3

    === Problems3 ===
"Usually he's quite nice, but as soon as there's food on the plate... . Well long story short, I had to come up with a plan!"
*   Thats right. Don't let people push you around!
    -> Problems4
*   -Push him-
    -> What


    === What ===
"Outch, what?..... Oh your a bad person. May Alummina be generous with you!"
*   I'm sorry, with age came these uncontrolled movements you know? 
    -> HmOkay
*   -Push him again-
    -> THATSIT


    === THATSIT ===
"You are no help for nobody! The day you reached retirement was a bless for you colleagues and a curse for all others! Your ignorant, gave my hat away, pushing others around like you would matter! But YOU DONT!"
    -> END


    === HmOkay ===
"Hm, well. I will forgive you, JUST ONCE!"
*   [Continue]
    -> WhereWas


    === WhereWas ===
"So where was I?...."
*   Continue
    -> Problems4


    === Problems4 ===
#addQuest lambtalk
"I started to collect leftovers where ever I found them. Now if I'm hungry, I just place them in the room, next to the factory entrance. Then I lock him up."
*   Do you maybe have some leftovers for me? 
    -> TheTrick


    === TheTrick ===
"Wait, what are you gonna do with that?"
*   I'll lure him into the room, by myself, this time.
    -> Suspicious


    === Suspicious ===
#addQuest placethebait
"Hm, you really haven't done anything to make me trust you. It would spare me the adrenalin to get caught though..."
*   Hey, I know, you're a good person.
    -> GoodPerson
*   See, you already gave the reason.
    -> IGuess


    === GoodPerson ===
#addItem Bait
"This..was actually a nice. Thank you. I share my baits with you."
    -> END 


    === IGuess ===
#addItem Bait
"Hm yeah. Here's the bait. Now go and do your work."
 
    -> END



    




    === Willchoker ===
"A Will choker! That's what is hunting my nightmares. To have no free will!"
*   [Continue] "Damn, I miss my tinfoil hat! It would protect me from the Will chokers.."
    -> Choices5


    === Choices5 ===
*   Sometimes, no free will means incredible dance-moves, Yiha!
    -> DanceMoves
*   Didn't thought you much of a pioneer in decision-making.
    -> Pioneer
*   Bye
    ->  Bye


    === DanceMoves ===
"The effort is often worth the pain."
*   [Continue] "That's why I always give 50%!"
    -> Choices5


    === Pioneer ===
"Don't think of you as a intoxicating person, too!"
*   [Continue] "Any more trash you wanne drop?"
    -> Choices5

    === Bye ===
"May Alummina bless you pour soul"
    -> END



