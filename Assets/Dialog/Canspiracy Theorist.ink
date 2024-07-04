EXTERNAL addQuest(questName)
VAR completed_Canstalk = false
VAR completable_Canstalk = false
VAR active_Canstalk = false
VAR completed_Machine = false
VAR completable_Machine = false
VAR active_Machine = false
VAR completed_Gate = false
VAR completable_Gate = false
VAR active_Gate = false
VAR completed_Container = false
VAR completable_Container = false
VAR active_Container = false
VAR completed_Truck = false
VAR completable_Truck = false
VAR active_Truck = false
VAR completed_Room = false
VAR completable_Room = false
VAR active_Room = false
VAR completed_Reunion = false
VAR completable_Reunion = false
VAR active_Reunion = false
VAR completed_DoorCheck = false
VAR completable_DoorCheck = false
VAR active_DoorCheck = false
VAR completed_Canscheck = false
VAR completable_Canscheck = false
VAR active_Canscheck = false
#speaker: Canspiracy Theorist

"Easy! I cant defend myself!"
* {not completed_Canstalk}  -> Canstalk
* {completed_DoorCheck} -> Check
* {completed_Room} -> T
*   -> Choices


    === Check ===
* {not completed_Canscheck} -> CentralOfEvil
* {completed_Canscheck}  -> Tasks


    === T ===
* {completed_Truck} -> C
*   -> Choices

    === C ===
* {completed_Container} -> G
*   -> Choices

    === G ===
* {completed_Gate} -> M
*   -> Choices

    === M ===
{completed_Machine} -> Columns
*   -> Choices


    === Choices ===

+   - Shake the can -
    -> Eyy 
+   How's it in there?
    -> HowsIt
+   - Put the can away -
    -> NotEvenBye


    === Eyy ===
"Outch, PINKYYY! I wont stop calling you that, just because you're using brutal violence!"
*   [I just slipped, sorry.] "Well, what happens ones is forgotten when sun rises again.."
    -> Choices
+   -> Eyy2


    === Eyy2 ===
"Pleaaase be a good Yeti and stop, I'm on my knees already!"
*   [Oh, I slipped again!] "Apparently your more monkey than I thought!"
    -> Choices
+   -> Eyy3


    === Eyy3 ===
"Okay! Your the brains! I concede!"
*   [Just a slippery can! I swear...] "...monkey!"
    -> Choices
+   -> Choices


    === HowsIt ===
"Honstly? Fine! I have a good armchair, no long walkways and you poked me some eyeholes."
*   Was that a thank you?
    -> HowsIt2


    === HowsIt2 ===
"Well because you did it from outside, I have to take care not to cut myself everytime I want to watch out of the window."
*   [Woopsi.] "I've been to good of a master."
    -> Choices


    === NotEvenBye ===
"I dont want to go back in the pocket! It smells like old couch!"
    -> END


    === Canstalk ===
#addQuest Canstalk
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
*   I'm sorry, firend, but you've got canned.
    -> Canned


    === Canned ===
"....What? That's impossible. I feel, like I'm in perfekt condition...besides, you hitting me on the head.. I dont believe you!"
*   - Use a sharp edge to poke to holes into the can -
    -> ICanSee


    === ICanSee ===
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
"First, the big machine right next to us. Second, the gate behind. I can see a truck, too."
#addQuest Machine
#addQuest Gate
#addQuest Truck
*   Continue
    -> PointsOfInterest2


    === PointsOfInterest2 ===
"Please check out, if there are any rooms behind the truck."
#addQuest Rooms
*   Continue
    -> PointsOfInterest3
    
    
    === PointsOfInterest3 ===
" And, last but not least, in the far corner there are some Containers. I wonder what's hiding there!"
#addQuest Containers
*   Okay, i took my notes, please fasten you seatbells!
    -> LetsGo


    === LetsGo ===
"Please, try to be at least a little more serious about this. You're the one they haven't killed yet."
#completeQuest Canstalk
    -> END











    === Columns ===
"The columns are in place. I'll now have to connect them and find a solution for that door. Im sure it'll be helpful."
*   [Continue] "In the meantime, why don't you bring back this hat to Lamb. I got better protection now."
    -> LambHat


    === LambHat ===
# removeQuest Truck
# removeQuest Gate
# removeQuest Room
# removeQuest Container
# removeQuest Machine
# addQuest ReturnTheHat

    -> END



    === CentralOfEvil ===
#addQuest Canscheck
"Here we have it! The central of evil!"
*   [We made it!] "That was only the framework!"
    -> Plan


    === Plan ===
#completeQuest Canscheck
#addQuest BullysAndBarrels
#addQuest PrepareTheTruck
#addQuest SpreadWord
*   So what has to be done for our escape?
    -> Tasks


    === Tasks ===
*   Meater
    -> Escape
*   Truck   
    -> Truck
*   What about the priestess?
    -> Priest
*   What about the others?
    -> Inform
*   -> StartEscape
*   Lets go!
    -> StartEscape


    === Escape ===
"It's fairly simple. You'll get the Bully to put some of this weird bubbling barrels under the roll of this meatmachine. Then hit the Big Red Button!"
*   [That's my favourite part!] "Let it be our final greetings, hehheh!"
    -> Tasks


    === Truck ===
"We need Keys, they should be in the factory. Probably you have to use your brush."
*   [What about fuel?] "In the Nob-room should be some. Fetch it and prepare the truck. Dont forget to unlock the Gate from the controlroom."
    -> Tasks


    === Priest ===
"She brought up all this talk about Alummina. She's projecting the path of ending as can-food as trancendence."
*   [Continue] "Don't trust her! She might be very close to our enemies."
    -> Tasks


    === Inform ===
"Please, inform anyone else about our escape."
*   [Continue] "They should be ready, when you start the Truck!"
    -> Tasks

    === StartEscape ===
"Let's go then!"
    -> END

