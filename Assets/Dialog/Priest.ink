EXTERNAL addQuest(questName)
VAR completed_Priesttalk = false
VAR completable_Priesttalk = false
VAR active_Priesttalk = false
VAR completed_Priesttalk2 = false
VAR completable_Priesttalk2 = false
VAR active_Priesttalk2 = false
VAR completed_Nerdtalk3 = false
VAR completable_Nerdtalk3 = false
VAR active_Nerdtalk3 = false
# speaker: Priest

Divider
* {completed_Nerdtalk3} -> NoCounting
*  -> AnotherSheep

    === AnotherSheep ===
 "Another lost sheep travelled the veal."
*   [Continue] "Dont you worry, I provide guidance for all troubled minds!"
    -> Choices

    === Choices ===
*   What is this place?
    -> WhatIsLocation
+   I didn't expect to find a Priest in here. Who do you worship?
    -> Alummina
*   Why do you call me sheep?
    -> IntroductionPriest
*   {not completed_Priesttalk} I like to chose my own path
    -> Horns 



    === Alummina ===
"I serve Alummina, the all reflecting. I have the honor to be chosen as her medium - though she could have chosen everyone!"
+   Whats this Goddess about?
    -> Alummina2
+   Theres something else I wanted to ask...
    -> Choices


    === Alummina2 ===
"Her omnisight grands great wisdom and she deflects all harm by those blessed by her."
+   Sounds like the blessing grants you everything already? Whats left then?
    -> Alummina3
+   Theres something else I wanted to ask...
    -> Choices


    === Alummina3 ===
"You only gain with sacrifice, dear sheep. Her affection needs devotion. To finally bath in her sight, to be sheltered as a whole ..."
+   Yes?
    -> Alummina4
+   Theres something else I wanted to ask...
    -> Choices


    === Alummina4 ===
" ...it requires you to face a test of devotion. Even I can tell you only as much."
+   How many have bathed in her light yet?
    -> Alummina5
+   Theres something else I wanted to ask...
    -> Choices


    === Alummina5 ===
"Many! And there will be so many more!"
+   [Continue] "You have the potential, too!"
    -> Choices


    === WhatIsLocation ===
"Dear sheep does not see the loan its walking on! This is where the shepard lets you feed. Here youre protected."
*   [Continue] "But do not dare to leave the craddle, there are eyes lurking beyond the fence."
    -> Choices


    === IntroductionPriest ===
"Oh, I recognize a sheep when i meet one! Pour lost one, driven by the urge to understand."
*   [Continue] "Because the wolf was your misery. You ran into the forest and thought of the trap as shelter."
    -> IntroductionPriest2


    === IntroductionPriest2 ===
*   Well, it happened, he had a door of steel and no bad mind about tricking people.
    -> Intro
*   Can you repeat that in common language please?
    -> Irritated


    === Irritated ===
"Once carved into the stone, my word is set."
*   hmhm.
    -> Intro1
    

    === Intro ===
"Ohohoo, the sheep is bleating!"
*   [Continue]
    -> Intro1
    

    === Intro1 ===
"Hushh, the shepard might listen!"
*   So you're not the shepard?
    -> Wind


    === Wind ===
"I'm the wind to blow your sails and the footsteps you find on your path."
*   [Now your talking latin again.]
    -> Choices


    === Horns ===
#addQuest Priesttalk
"Ah, so this sheep got some horns! Just what this place is lacking of! I must encourage your attitude!
Such free spirit must dare to find clarity."
*   This talk made me rather confused, i must admit.
    -> clarity
*   Please grand me your insight
    -> clarity

    
    === clarity ===
"I hear your call and while we stand the goddes Alu spoke truth. Sheep, go and find clarity."
*   Which path shall i take, oh priestes?
    -> Discription
*   I shall do something for you, but .... where?
    -> DirectDiscription


    === Discription ===
#completeQuest Priesttalk
#addQuest SearchforClarity
"Where water runs between your toes. Look out for the standing Lights, their warm embrace may guide your way. My disciple will await you there."
    -> END


    === DirectDiscription ===
#completeQuest Priesttalk
#addQuest SearchforClarity
"Go to the showers and talk to Lamb!"
    -> END

 


    === NoCounting ===
*   {not completed_Priesttalk2} -> Counting1
*   {completed_Priesttalk2}  -> Reminder


    === Reminder ===
"The kitchen, dear sheep."
*   Didn't even want to ask.
    -> Hopp


    === Hopp ===
"Well, go on then."
    -> END


    === Counting1 ===
#addQuest Priesttalk2
"The sheep isn't counting sheeps no more."
*   What happened? 
    -> WhatHappened


    === WhatHappened ===
"Told you not to pass the fence. Stray sheep like you, who think, the gras on the other side is more green, are lonely and easy prey."
*   I am not alone.
    -> Cons


    === Cons ===
"You speak honest. saw you mingling around with this self-proclaimed detective."
*   [Continue] "Might interest you, that he's missing, then"
    -> Cons2


    === Cons2 ===

*   What? Since when? How long have I passed out?
    -> PassedOut
*   Did anybody witnessed him vanishing?
    -> Vanish
*   -> Clean
    === PassedOut ===
"When the intruders where gone, your friend was too. You decided to pillow your head for the rest of the day then."
*   [I certainly didn't decide anything.] "Still your path is unclear, then."
    -> Cons2


    === Vanish ===
"So many questions. Without a goal, there's no path. Alumminia watches you poking frogs, like a child, expecting one to confess about your friends misery."
*   [Continue]
    -> Cons2


    === Clean ===
"It's time to be pilgrim again. Find your clarity. As things wash clean, so will your thoughts!"
*   [Not this again..] "If you laid your unsettling temper to rest, point your nose toward the canteen. You're brush will graze full of satisfaction!"
    -> Clean2


    === Clean2 ===
#completeQuest Priesttalk2
#addQuest FindClarity

    -> END
