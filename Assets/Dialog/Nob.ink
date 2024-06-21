#speaker: Nob

/*
"NOMNOMNOMNOMNOOMNOM - BURPS - OMNOMNOM...."
* {finished_hide_the_Nob} Better dont wake sleeping dogs...
    -> SneakAway
*   -> Hello1


    === SneakAway ===
"OMNOMNOM..."
    -> END


    === Hello1 ===
"Howdy!"
*   -> Hello
* {QuestinProgress_hide_the_Nob}{QuestDone_Bait} [Howdy!]
    -> TheLure


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
"Spare me, DumDum. I'm hungry. I cant listen when I'm hungry!"
*   Son, I'm hungry too!
    -> Oh


    === Oh ===
"Smells like competition!"
*   I would say it smells like ...    
    -> Meal1


    === Meal1 ===
+   ... roastet meat with salt and pepper. 
    -> Almost
+   ... bruscetta with fresh tomatos and basil.
    -> No
+   ... honey-soaked chickenstrips with potatos.
    -> Oh2


    === Almost ===
"Mh, thats good, but not what I crave for."
+   It smells more like...
    -> Meal1


    === No ===
"My stomach hasn't been insultet like that in a while!"
+   It smells more like...
    -> Meal1


    === Oh2 ===
"That's exactly what I dream about, these days!"
*   Talking about dreams. In my last dream I tastet ...
    -> Meal2


    === Meal2 ===
+   ... ham - sugarglazed and roasted over the fire with some garlic-barguette!
    -> Oh3
+   ... ratatouille served next to a medium-rare steak and potato-puree!
    -> Almost2
+   ... fries with parsley-Mayonaise and cutlet!
    -> No2


    === Almost2 ===
"My mum always did puree, but it was always lacking sugar!"
+   What am I saying, it was ...
    -> Meal2


    === No2 ===
"Bah, your ruining everything!"
+   Wait! It tastet more like ...
    -> Meal2


    === Oh3 ===
"Har....ya, I've almost taste it right now! And pizza!"
*   Yes, pizza! But pizza triple in size! On top with ...
    -> Meal3


    === Meal3 ===
+   ...chillipeppers and chorizo!
    ->  Almost3
+   ...anchovies, gyros and jelly beans!
    ->  Hit
+   ... rosemary-potatos and chickenbreast!
    ->  No3


    === Almost3 ===
"Chorizo mmmh, but chillipeppers look like herbs to me!"
+   The Pizza was still packed! Instead its topped with...
    -> Meal3


    === No3 ===
"Hey, my dreams are holy ground! Dont play me as a fool!"
+   That was Lambs pizza! Yours is served with...
    -> Meal3


    === Hit ===
"Yes, that's better then I could imagine! I AM HUNGRYYY!" I NEED FOOD! WHERES FOOD!?"
*   It's an emergency! Gladly I have my emergency-stash.
    -> Hit2


    === Hit2 ===
"ROOOAAAAAAAAAAAA....!"
*   Easy, you can have it! It's in the room, down the corridor!
    -> Hit3


    === Hit3 ===
"...AAAAAAAAARG!"
    -> END
*/








    === Hello ===
"Howdy!"
*   Howdy! 
    -> Name


    === Name ===
"Nice to meet you! Im Nob! How is your name?"
*   You can call me Granddad.
    -> ok

    === ok ===
"Oh I lost mine.. well actually I got lost, myself."
*   [Continue]
    -> Choices


    === Choices ===
*   How do you got here?
    -> HowGotHere
*   Can you tell me anything about this place?
    -> AboutThisPlace
*   I'm on my way!
    -> Howdy


    === HowGotHere ===
"Oh, I dont know."
*   Did you woke up from unconciousness?
    -> Unconciousness


    === Unconciousness ===
"No"
*   So, you were walking into the Lobby, like me?
    -> Choices2


    === Choices2 ===
"Naaaa, i dont."
*   How did you got here, then?
    -> Choices3


    === Choices3 ===
"You know, i dont know.."
*   [What you just said? I dont knew, but now I do!]
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
"Well, haven't you seen the wallpapers? It's what everbody is into, Dumdum!"
*   I wasnt riding this trend lately.
    -> See


    === See ===
"I see Dumdum, haha. Oh it's about time again! Was there something else?"
    -> Choices


    === Howdy ===
"Alright! Howdy then!"
    -> END





