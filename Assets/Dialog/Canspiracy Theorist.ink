
VAR completed_canstalk = false
VAR completable_canstalk = false
VAR active_canstalk = false
VAR completed_machine = false
VAR completable_machine = false
VAR active_machine = false
VAR completed_gate = false
VAR completable_gate = false
VAR active_gate = false
VAR completed_container = false
VAR completable_container = false
VAR active_container = false
VAR completed_truck = false
VAR completable_truck = false
VAR active_truck = false
VAR completed_room = false
VAR completable_room = false
VAR active_room = false
VAR completed_reunion = false
VAR completable_reunion = false
VAR active_reunion = false
VAR completed_doorcheck = false
VAR completable_doorcheck = false
VAR active_doorcheck = false
VAR completed_canscheck = false
VAR completable_canscheck = false
VAR active_canscheck = false
VAR completed_priesttalk3 = false
VAR completable_priesttalk3 = false
VAR active_priesttalk3 = false
VAR completable_redbutton = false
#speaker: Canspiracy-Theorist

"Easy! I cant defend myself!"
* {not completed_canstalk}  -> Canstalk
* {completed_room} -> A2
*   -> Choices


    === A2 ===
* {completed_priesttalk3} -> OneLiner
* {completed_room} -> A1

    === A1 ===
* {completed_doorcheck} -> Check
* {not completed_doorcheck} -> T


    === Check ===
* {not completed_canscheck} -> CentralOfEvil
* {completed_canscheck} -> A3

    === A3 ===
* {completable_redbutton} -> LetsPress
*   -> Tasks








    === T ===
* {completed_truck} -> C
*   -> Choices

    === C ===
* {completed_container} -> G
*   -> Choices

    === G ===
* {completed_gate} -> M
*   -> Choices

    === M ===
{completed_machine} -> Columns
*   -> Choices


    === Choices ===
#speaker: Canspiracy Theorist
+   - Shake the can -
    -> Eyy 
+   How's it in there?
    -> HowsIt
+   - Put the can away -
    -> NotEvenBye


    === Eyy ===
"Outch, PINKYYY! I won’t stop calling you that, just because you're using brutal violence!"
*   [I just slipped, sorry.] "Well, what happens ones is forgotten when sun rises again.."
    -> Choices
+   -> Eyy2


    === Eyy2 ===
"Pleaaase be a good Yeti and stop, I'm on my knees already!"
*   [Oh, I slipped again!] "Apparently your more monkey than I thought!"
    -> Choices
+   -> Eyy3


    === Eyy3 ===
"Okay! You’re the brains! I concede!"
*   [Just a slippery can! I swear...] "...monkey!"
    -> Choices
+   -> Choices


    === HowsIt ===
"Honestly? Fine! I have a good armchair, no long walkways and you poked me some eyeholes."
*   Was that a thank you?
    -> HowsIt2


    === HowsIt2 ===
"Well because you did it from outside, I have to take care not to cut myself every time I want to watch out of the window."
*   [Woopsi.] "I've been too good of a master."
    -> Choices


    === NotEvenBye ===
"I don’t want to go back in the pocket! It smells like old couch!"
    -> END


    === Canstalk ===
#addQuest canstalk
"YEEOUTCH! My head!"
*   Dare to speak to me in that manner, can!
    -> IsThatYou


    === IsThatYou ===
"Pinky! Is that you? Did the puppet came back for its master?"
*   - Shake the can again -
    -> OkOk
*   You summoned me?
    -> Right


    === OkOk ===
"OUTCH! OKAY, okay, I got it. My humble apologies."
*   [Continue]
    -> TurnOnLight


    === Right ===
"Yes, Pinky and your damn late!
*   [Continue]
    -> TurnOnLight


    === TurnOnLight ===
" Now, could you drop the act and turn on the light - 'PLEASE'?"
*   I'm sorry, friend, but you've got canned.
    -> Canned


    === Canned ===
"....What? That's impossible. I feel, like I'm in perfect condition...besides, you hitting me on the head.. I don’t believe you!"
*   - Use a sharp edge to poke to holes into the can -
    -> ICanSee


    === ICanSee ===
#speaker: Canspiracy Theorist
"Hey, that's, Argh!"
*   Now you should be able to have a look around.
    -> NoWay


    === NoWay ===
"I .. became a 'Jack in the box'.. breath! Hffffff, Hffffffff...   . Time for some stoicism!"
*    [Continue] "Pinky! We need to get an overview again! From what i can see, there are five points of interest here."
    -> Choices1


    === Choices1 ===
*   Shall I just roll you over?
    -> Funny
*   What's popping out?
    -> PointsOfInterest


    === Funny ===
"My legs are in perfect condition!...Oh. Haha, aren't you a funny one"
*   [Hihi] "It shames me to admit, you have to carry me over. Maybe you can give me a SMALL shake, if you found something."
    -> Choices1


    === PointsOfInterest ===
#addQuest machine
#addQuest gate
#addQuest truck
"First, the big machine right next to us. Second, the gate behind. I can see a truck, too."
*   Continue
    -> PointsOfInterest2


    === PointsOfInterest2 ===
#addQuest room
"Please check out, if there are any rooms behind the truck."
*   Continue
    -> PointsOfInterest3
    
    
    === PointsOfInterest3 ===
#addQuest container
" And, last but not least, in the far corner there are some Containers. I wonder what's hiding there!"
*   Okay, i took my notes, please fasten your seatbelts!
    -> LetsGo


    === LetsGo ===
#completeQuest canstalk
"Please, try to be at least a little more serious about this. You're the one they haven't killed yet."
    -> END











    === Columns ===
#speaker: Canspiracy Theorist
"The columns are in place. I'll now have to connect them and find a solution for that door. I’m sure it'll be helpful."
*   [Continue] 
    -> LambHat


    === LambHat ===
#addQuest returnthehat
"In the meantime, why don't you bring back this hat to Lamb. I got better protection now."

    -> END



    === CentralOfEvil ===
#addQuest canscheck
"Here we have it! The central of evil!"
*   [We made it!]
    -> Plan


    === Plan ===
"That was only the framework!"
#completeQuest canscheck
#addQuest bullysandbarrels
#addQuest preparethetruck
#addQuest redbutton
*   So what has to be done for our escape?
    -> Tasks


    === Tasks ===
*   Meater & Truck
    -> Escape
*   What about the priestess?
    -> Priest
*   What about the others?
    -> Inform
*   Lets go!
    -> StartEscape


    === Escape ===
"It's fairly simple. You'll get the Bully to put some of this weird bubbling barrels under the roll of this meat machine."
*   [Continue] 
    -> Escape2


    === Escape2 ===
"Before you should fetch the keys of the truck. They should be somewhere in this room."
*   [Continue]
    -> Truck


    === Truck ===
"Then hit the Big Red Button in the controlroom!"
*   [That's my favorite part!]"Let it be our final greetings, hehheh!"
    -> Tasks


    === Priest ===
"She brought up all this talk about Alummina. She's projecting the path of ending as can-food as transcendence."
*   [Continue]"Don't trust her! She might be very close to our enemies."
    -> Tasks


    === Inform ===
"If we destroy the meater it will produce enough noice to get everyones attention."
*   [Continue]"They should be ready, when you start the Truck!"
    -> Tasks


    === StartEscape ===
"Let's go then!"
    -> END


    === OneLiner ===
#speaker: Canspiracy-Theorist
"It's getting hot in here!!"
*   Let's goo!
   -> YesLetsGo


   === YesLetsGo ===
Yes, Pinky!We did well today. Maybe tomorrow it will be the whole world, ehehehe."
    -> END

    === YesNob ===
#speaker High-giene staff
"Yes, Nob helped me with that helmet! Now this thing can taste its own medicine!"
*   Very well! Everybody! Let's go!!
    -> END


    === LetsPress ===
"It's time to press the Button!!"
*   Allright!
    -> LetsPress2


    === LetsPress2 ===
"I'm alreeady smelling the burn...oh no, it's myself!"
    -> END