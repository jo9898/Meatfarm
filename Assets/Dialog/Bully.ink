EXTERNAL addQuest(questName)
VAR completed_bullytalk = false
VAR completable_bullytalk = false
VAR active_bullytalk = false
VAR completed_nerdtalk3 = false
VAR completable_nerdtalk3 = false
VAR active_nerdtalk3 = false
VAR completed_manipulatecanteen = false
VAR completable_manipulatecanteen = false
VAR active_manipulatecanteen = false
VAR completed_stealaccesscard = false
VAR completable_stealaccesscard = false
VAR active_stealaccesscard = false
VAR completed_bullytalk2 = false
VAR completable_bullytalk2 = false
VAR active_bullytalk2 = false

#speaker: Bully





"..."
*   {not completed_bullytalk} -> Hello
*   {completable_nerdtalk3} -> CanteenTalk
*   {completed_nerdtalk3} - give fist bump -
    -> Unusual
*   -> Bye



    === CanteenTalk ===
#addQuest bullytalk2
"..."
*   {not completed_bullytalk2} - show your teeth and growl -
    -> Growl
*   {not completed_bullytalk2} - try hand signs -
    -> Handsign
*   {not completed_bullytalk2} - hit him on the shoulder as hard as you can -
    -> Hit
*   {completable_manipulatecanteen} - give fist bump -
    -> Fistbump






    === Unusual ===
- The Bully’s bump is ... weak! His face shows a unusual amount of expression. Like a mailbox, which hasn't been emptied for months. -
*   Hey,... quite the view right? Keeps me busy too ..
    -> NaNoProblem


    === NaNoProblem ===
"Pain, Dance? No problem."
*   Unshaken warrior, what crosses your mind?
    -> Unshaken


    === Unshaken ===
"NO ONE CAN CROSS BULLYS MIND!"
*   My apologies, I didn't meant it.
    -> Apologies
*   - Hit his shoulder -
    -> Shoulder


    === Apologies ===
- The Bully narrows his eyes, until they are two slim gaps -
*   - Hit his shoulder -
    -> Shoulder


    === Shoulder ===
"Punch, ... Har. Punch! In sleeping room, punch! Hay, Punch!!"
*   [- He seems to be pretty shaken. -] - Maybe I should go and see what stirred him up -
    -> GoOn


    === GoOn ===

    -> END


    === Fistbump ===
"Harhar, one day my Knuckles will blush you lot, harharharhar!"
*   - better get away fast -
    -> Bye


    === Growl ===
- You shudder, as you see a sudden sparkle in his eyes! Is this...empathy? 
*   Continue to play the dominant ape.
    -> recognition


    === recognition ===
- There it was again! This time you were watching his face intensively. Like a blank slope of stone. You realize what you thought empathy is in real ...
*   Continue
    -> Outch


    === Outch ===
- ...Anger. He punches you in the stomach. hard. -
*   Ouuuuuutch!
    -> CanteenTalk


    === Handsign ===
- You remember, how you where communicating with your small granddaughter. You poke out two fingers, like the ears of a peacefully grazing bunny. Just if saying: "I come in peace."-
*   [Continue]
    -> Handsign2


    === Handsign2 ===
- He approaches you. Slow, thoughtful, like if stuck in recognition, meeting a old friend. -
*   [Continue]
    -> Outch2


    === Outch2 ===
- Suddenly he reaches out, grabs your fingers and bows them back a bit too much. A cat's no friend with a mouse. -
*   Yeeeeksyoutch!
    -> CanteenTalk


    === Hit ===
- You swing your arm around like popeye and throw it against the Bully’s shoulder, as hard as you can.-
*   [Continue]
    -> HitReaction


    === HitReaction ===
- You two stand there as the moment passes by. It felt like trying to hit through wood. Your hand starts aching, but the face in front of you shows no emotions ...
*   [Continue]
    -> Success


    === Success ===
- ...until there's a change! The skin around the eyes is cut in wrinkles. Like cracking earth, a smile appears and shows big teeth.  -
*   [Continue]
    -> KnucklesHappy


    === KnucklesHappy ===
"Your Knuckles happy? Harharhar!"
*   Not really if I’m honest.
    -> Suspicious
*   - punch again -
    -> Harharhar


    === Suspicious ===
- The Bully stops laughing immediately and watches you with an critical eye -
*   - punch again -
    -> Harharhar


    === Harharhar ===
"Harharharharhar! Just punch! Don’t know where go? Punch, yes! Harhar!"
*   - think about that for a moment -
    -> Thoughts


    === Thoughts ===
#completeQuest bullytalk2
#giveItem canteentrigger
- Communication with the Bully will include a lot of punching. Maybe you can try punching the pipe at the trough? -
    -> END





    === Hello ===
# addQuest bullytalk
"..."
*   Hello! Isn't this a friendly face!
    -> No


    === No ===
"..."
*   You can call me Granddad!
    ->  Granddad


    === Granddad ===
"..."
*   Hm, and how's it going?
    ->  Good


    === Good ===
"Yesterday my knuckles where blushing"
*   Ehm, oh are they happy knuckles?
    ->  Knuckles


    === Knuckles ===
"If they speak - Yes! And they did - yes ... terday!"
*   Oh I am very glad for your knuckles! 
    -> Talk


    === Talk ===
# completeQuest bullytalk
"You talk too much!"
*   Hey, have a nice day you guys! Bye!
    -> Bye


    === Bye ===
"..."
-> END








