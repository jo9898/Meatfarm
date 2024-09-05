EXTERNAL addQuest(questName)
VAR completed_placethebait = false
VAR completable_placethebait = false
VAR active_placethebait = false
VAR completed_nerdtalk3 = false
VAR completable_nerdtalk3 = false
VAR active_nerdtalk3 = false
VAR completed_hidethenob = false
VAR completable_hidethenob = false
VAR active_hidethenob = false
VAR completed_nobtalk = false
VAR completable_nobtalk = false
VAR active_nobtalk = false
VAR completed_canscheck = false
VAR completable_canscheck = false
VAR active_canscheck = false
#speaker: Nob

"Howdy!"
*   {not completed_nobtalk}    -> Hello
*   {completed_hidethenob}  -> Omnomnom
*   -> divider


    === divider ===
*   {not completed_nerdtalk3}  -> Bait
*   -> Choices


    === Omnomnom ===
"NOMNOMNOMNOMNOOMNOM - BURPS - OMNOMNOM...."
*    Better don't wake sleeping dogs...
    -> SneakAway


    === SneakAway ===
"OMNOMNOM..."
    -> END


    === Bait ===
* {completed_placethebait}  -> TheLure
*   -> Choices
    


    === TheLure ===
*   Hey, you wanne go into that room, next to the factory-entrance?
    -> PffNo
*   Shall I tell you something interesting?
    -> DumDum


    === PffNo ===
"I like that place, but last times I went in, the door locked. I better stay outside."
*   [Continue]
    -> TheLure

    === DumDum ===
"Spare me, DumDum. I'm hungry. I can’t listen when I'm hungry!"
*   Son, I'm hungry too!
    -> Oh


    === Oh ===
"Smells like competition!"
*   I would say it smells like ...    
    -> Meal1


    === Meal1 ===
+   ... roasted meat with salt and pepper. 
    -> Almost
+   ... bruschetta with fresh tomatoes and basil.
    -> No
+   ... honey-soaked chicken strips with potatoes.
    -> Oh2


    === Almost ===
"Mh, that’s good, but not what I crave for."
+   It smells more like...
    -> Meal1


    === No ===
"My stomach hasn't been insulted like that in a while!"
+   It smells more like...
    -> Meal1


    === Oh2 ===
"That's exactly what I dream about, these days!"
*   Talking about dreams. In my last dream I tasted ...
    -> Meal2


    === Meal2 ===
+   ... ham - sugar glazed and roasted over the fire with some garlic-baguette!
    -> Oh3
+   ... ratatouille served next to a medium-rare steak and potato-puree!
    -> Almost2
+   ... fries with parsley-mayonnaise and cutlet!
    -> No2


    === Almost2 ===
"My mum always did puree, but it was always lacking sugar!"
+   What am I saying, it was ...
    -> Meal2


    === No2 ===
"Bah, your ruining everything!"
+   Wait! It tasted more like ...
    -> Meal2


    === Oh3 ===
"Har....ya, I've almost taste it right now! And pizza!"
*   Yes, pizza! But pizza triple in size! On top with ...
    -> Meal3


    === Meal3 ===
+   ...chill peppers and chorizo!
    ->  Almost3
+   ...anchovies, gyros and jelly beans!
    ->  Hit
+   ... rosemary-potatoes and chicken breast!
    ->  No3


    === Almost3 ===
"Chorizo mmmh, but chill peppers look like herbs to me!"
+   The Pizza was still packed! Instead its topped with...
    -> Meal3


    === No3 ===
"Hey, my dreams are holy ground! Don’t play me as a fool!"
+   That was Lambs pizza! Yours is served with...
    -> Meal3


    === Hit ===
"Yes, that's better than I could imagine! I AM HUNGRYYY!" I NEED FOOD! WHERES FOOD!?"
*   It's an emergency! Gladly I have my emergency-stash.
    -> Hit2


    === Hit2 ===
#giveItem NobHideTrigger
"ROOOAAAAAAAAAAAA....!"
*   Easy, you can have it! It's in the room, down the corridor!
    -> Hit3


    === Hit3 ===
"...AAAAAAAAARG!"
    -> END








    === Hello ===
#addQuest nobtalk
"Howdy!"
*   Howdy! 
    -> Name


    === Name ===
#completeQuest nobtalk
"Nice to meet you! I’m Nob! How is your name?"
*   You can call me Granddad.
    -> ok

    === ok ===
"Oh I lost mine.. well actually I got lost, myself."
*   [Continue]
    -> Choices


    === Choices ===
*   {completed_canscheck} Nob, let's get out of here!
    -> OutOfHere
*   How do you got here?
    -> HowGotHere
*   Can you tell me anything about this place?
    -> AboutThisPlace
*   I'm on my way!
    -> Howdy


    === OutOfHere ===
"Out? But the food..."
*   I found some documents, they're cutting our rations!
    -> OutOfHere2


    === OutOfHere2 ===
"I knew something's wrong all along! When do we start?"
*   Be at the truck in the factory-hall, asap!
    -> AlrightBoss


    === AlrightBoss ===
"Alright, Boss!"
    -> END


    === HowGotHere ===
"Oh, I don’t know."
*   Did you woke up from unconsciousness?
    -> Unconsciousness


    === Unconsciousness ===
"No"
*   So, you were walking into the Lobby, like me?
    -> Choices2


    === Choices2 ===
"Naaaa, i don’t."
*   How did you got here, then?
    -> Choices3


    === Choices3 ===
"You know, i don’t know.."
*   [What you just said? I don’t knew, but now I do!]
    -> Confused


    === Confused ===
"Ehm, what?"
*   [Continue]
    -> Choices


    === AboutThisPlace ===
"Oh yeah, they've got a biiig canteen with a all you can eat trough."
*   Sounds ... fascinating.
    -> ATP2


    === ATP2 ===
"Yeah, and the shower is for free. But it's outmatched by the trough!"
*   Got You. Is there anything else worth telling? 
    -> Else


    === Else ===
"Hm, sometimes, when I'm eating, there are funny sounds. Almost like someone is screaming. I always imagine to eat small people, hihihi"
*   Uff, okay, haha... So why do you eat so much?
    -> Else2


    === Else2 ===
"Well, haven't you seen the wallpapers? It's what everybody is into, Dumdum!"
*   I wasn’t riding this trend lately.
    -> See


    === See ===
"I see Dumdum, haha. Oh it's about time again! Was there something else?"
    -> Choices


    === Howdy ===
"Alright! Howdy then!"
    -> END




