EXTERNAL addQuest(questName)
VAR completed_priesttalk = false
VAR completable_priesttalk = false
VAR active_priesttalk = false
VAR completed_priesttalk2 = false
VAR completable_priesttalk2 = false
VAR active_priesttalk2 = false
VAR completed_nerdtalk3 = false
VAR completable_nerdtalk3 = false
VAR active_nerdtalk3 = false
VAR completed_searchforclarity = false
VAR completable_searchforclarity = false
VAR active_searchforclarity = false
# speaker: Priest

Divider
"How are you doing?"
* {completed_priesttalk} -> Divider2
* {not completed_priesttalk} -> AnotherSheep


    === Divider2 ===
"How are you doing?"
* {not completed_nerdtalk3} -> Choices
* {completed_nerdtalk3} -> NoCounting



    === AnotherSheep ===
 "Another lost sheep travelled the veal."
*   [Continue] "Don't you worry, I provide guidance for all troubled minds!"
    -> Choices

    === Choices ===
*   {completable_searchforclarity} I cleaned the dirt.
    -> Dirt
*   What is this place?
    -> WhatIsLocation
+   I didn't expect to find a Priest in here. Who do you worship?
    -> Alummina
*   Why do you call me sheep?
    -> IntroductionPriest
*   {not completed_priesttalk} I like to chose my own path
    -> Horns 
*   {completed_priesttalk} Bye Bye
    -> Hopp


    === Dirt ===
#completeQuest searchforclarity
"So you found clarity."
*   [What was that stuff?] "Only Alummina knows...but i think it's related to nob."
    -> Choices

    === Alummina ===
"I serve Alummina, the all reflecting. I have the honor to be chosen as her medium - though she could have chosen everyone!"
+   What’s this Goddess about?
    -> Alummina2
+   Theres something else I wanted to ask...
    -> Choices


    === Alummina2 ===
"Her omni sight grands great wisdom and she deflects all harm by those blessed by her."
+   Sounds like the blessing grants you everything already? What’s left then?
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
"Dear sheep does not see the loan its walking on! This is where the shepherd lets you feed. Here you’re protected."
*   [Continue] "But do not dare to leave the cradle, there are eyes lurking beyond the fence."
    -> Choices


    === IntroductionPriest ===
"Oh, I recognize a sheep when I meet one! Pour lost one, driven by the urge to understand."
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
"Hushh, the shepherd might listen!"
*   So you're not the shepherd?
    -> Wind


    === Wind ===
"I'm the wind to blow your sails and the footsteps you find on your path."
*   [Now your talking Latin again.]
    -> Choices


    === Horns ===
#addQuest priesttalk
"Ah, so this sheep got some horns! Just what this place is lacking of! I must encourage your attitude!
Such free spirit must dare to find clarity."
*   This talk made me rather confused, i must admit.
    -> clarity
*   Please grand me your insight
    -> clarity

    
    === clarity ===
"I hear your call and while we stand the goddess Alummina spoke truth. Sheep, go and find clarity."
*   Which path shall I take, oh priestess?
    -> Description
*   I shall do something for you, but .... where?
    -> DirectDescription


    === Description ===
#completeQuest priesttalk
#addQuest searchforclarity
"Where water runs between your toes. The standing Lights will guide your way. My disciple will await you there, help him to clean that place."
    -> END


    === DirectDescription ===
#completeQuest priesttalk
#addQuest searchforclarity
"Go to the showers, talk to Lamb and clean the floor!"
    -> END

 


    === NoCounting ===
*   {not completed_priesttalk2} -> Counting1
*   {completed_priesttalk2}  -> Reminder


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
"You speak honest. Saw you mingling around with this self-proclaimed detective."
*   [Continue]"Might interest you, that he's missing, then"
    -> Cons2


    === Cons2 ===

*   What? Since when? How long have I passed out?
    -> PassedOut
*   Did anybody witnessed him vanishing?
    -> Vanish
*   -> Clean
    === PassedOut ===
"When the intruders where gone, your friend was too. You decided to pillow your head for the rest of the day then."
*   [I certainly didn't decide anything.]"Still your path is unclear, then."
    -> Cons2


    === Vanish ===
"So many questions. Without a goal, there's no path. Alummina watches you poking frogs, like a child, expecting one to confess about your friends misery."
*   [Continue]
    -> Cons2


    === Clean ===
#completeQuest stealaccesscard
"It's time to be pilgrim again. Find your clarity. As things wash clean, so will your thoughts!"
*   [Not this again..]
    -> Clean2


    === Clean2 ===
#completeQuest priesttalk2
#addQuest findclarity
"If you've laid your unsettling temper to rest, point your nose toward the canteen. You're brush will graze full of satisfaction!"

    -> END
