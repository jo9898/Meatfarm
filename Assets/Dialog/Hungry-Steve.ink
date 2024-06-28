#speaker: Hungry-Steve
VAR finished_apple = false

Hey, where you succesful?
* {finished_apple} "I got you an delicious apple (wink-wink)!"
    -> Finish
*   -> Hello

=== Hello ===
Oh Hello Sir!
*   Hello 
    -> Top_Knot

=== Top_Knot ===
I have the feeling somethings brewing up and its getting me excited! But i dont have anything to eat!

* "Whats brewing?"
    -> AskWhatsBrewing
* "Your hungry? Can i get you something?"
    -> Apple


=== AskWhatsBrewing ===
"I guess its all a Game"
*Ha...ha....
    -> Top_Knot


=== Apple ===
# addQuest apple
"I dont wanne eat this "smoothy" they are serving. But ive heared an apple made its way into the kitchen! Could you fetch it for me?"

    -> END

=== Finish ===
# removeQuest apple
"You did it!! hand over this delicous, crunchy peace of heaven.....ouh...hm. Is this a worm?? Oh my, doesnt get more fresh than that. Thank you so much!"

    -> END