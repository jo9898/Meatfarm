EXTERNAL addQuest(questName)
VAR completed_stealaccesscard = false
VAR completable_stealaccesscard = false
VAR active_stealaccesscard = false
VAR completable_hightalk = false
VAR active_hightalk = false
VAR completed_hightalk = false
#speaker: High-giene-Staff

Divider
* {not completed_stealaccesscard}   -> Check
* {completed_stealaccesscard}   -> Unconcious


    === Check ===
* {completed_hightalk} -> Casual
* {not completed_hightalk} -> Hijacked


    === Casual ===
"Is that really you again? .. 'BRZZZZZZT' I WANT DOG FOOD!"
*   Maybe I can get you some..
    -> WONDERFUL


    === Hijacked ===
"What?...Where - 'BRZZZZZZZT' ARGH, BEAUTIFUL!"
*   Are you alright?
    -> Marvelous


    === Marvelous ===
#addQuest hightalk
"I FEEL SO GOOD! Do you have any criti - 'BRZZZT'....THOUGHTS ABOUT THIS WONDERFUL PLACE?"
*   [Continue]
    -> Choices


    === Choices ===
*   Where shall I start...
    -> Honest
*   I want to complain about the toilettes!
    -> ComplainToilettes
*   Have you seen, what mess is around?
    -> Complains
*   Yeeeks, only thing that's keeping me warm at night, are the rats under my bed of hay!  
    -> ComplainRats
*    -> Complains2
   


    === Honest ===
"Hf...hf....just give us your honest opinion, please."
*   [If that's so...] "You dont have to hold any - 'BRRZZZZT' ANYTHING! ANYTHING! I - WANT - ANYTHIIIIING!!!"
    -> Choices


    === Complains ===
"Oh that's - 'BRZZZZZZT' A COMPLAIN! AGAINST THE MOTHER OF ALL COMPANYS! ABSURD!"
*   [Oh.. didn’t' you just said you value honesty?] "I'm not -'BRRRRRZZZZZZZZT' HONEST!"
    -> Choices


    === ComplainRats ===
"Immediately cancel this organiza... - 'BRZZZZZZZZZZT' ...TION OF ALL BORING RATS WITH GLASSES! HAHAHA!"
*   [I'm sure you would have done that joke anyways...] "Maybe."
    -> Choices


    === Complains2 ===
"'BRZZZZZZT' THE HUMAN BRAIN IS 'BRZZZZZT' hf, hf, hf .... hf 'BRZZT' ONLY MENT TO ENDURE A CERTAIN AMOUNT OF 'BRZZZZZZZZZZZZZT' ELECTROSHOCKS!"
*   Better to leave this one alone...
    -> Yes


    === Yes ===
#completeQuest hightalk
#giveItem KlongTrigger
"Wonderful Idea."
    -> END


    === WONDERFUL ===
"WONDERFUL IDEA!"
    -> END


    === ComplainToilettes ===
"This dirty smear - 'BRZZZZZZT' IS HOW I LIKE IT. MMMH, PRETTY TOILETTES REALLY!"
*   [Maybe I could rent that helmet for a while?] "Help me - 'BRRZZZZZZZZT' TO FORGET YOUR FACE - HAHAHA!'
    -> Choices




    === Unconcious ===
"She's not moving, but I hear weak breathing from underneath the helmet"
*   Hopefully she can make it...
    -> Unconcious2


    === Unconcious2 ===
"Lets carry on, we don't have time's short!"
    -> END