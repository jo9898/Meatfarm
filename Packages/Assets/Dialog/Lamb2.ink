
VAR completed_lambtalk2 = false
VAR completable_lambtalk2 = false
VAR active_lambtalk2 = false
VAR completed_returnthehat = false
VAR completable_returnthehat = false
VAR active_returnthehat = false
VAR completed_canscheck = false
VAR completable_canscheck = false
VAR active_canscheck = false
#speaker Lamb





Divider
* {not completed_lambtalk2} -> Reunion
*   -> Hello


    === Hello ===
"Alumina may bless you"
*   -> Choices



    === Choices ===
*   {completed_canscheck}   Pack your hat, we're going!
    -> Gathering
*   Thank you. May you be very...reflective!
    -> Bye


    === Gathering ===
"Where should we go?"
*   We are finally leaving this place. 
    -> Gathering2


    === Gathering2 ===
"Alummina may forgive me..."
*   You can continue praising her after you've escaped.
    -> AlumminasPraise
*   She's a lie projected by the false priest!
    -> Rebel

    === AlumminasPraise ===
"She told me, Alumminas bless is weak outside."
*   I heard the Priestess lost Alumminas voice!["She did?? That would mean I can interpret Alumminas will by myself!"]
    -> Gathering3


    === Rebel ===
"No, YOU'RE a liar!"
*   No and I will give you reason to believe!
    -> AlumminasPraise 


    === Gathering3 ===
*   Please wait for me at the Truck!
    -> END


    === Bye ===
"Reflected. You almost made it not sound ironic"
    -> END



    === Reunion ===
#addQuest reunion
"Granddad."
*   [Son] "What is it?"
    -> Choices6


    === Choices6 ===

*   I brought back your tinfoil-hat.
    -> TinfoilHat


    === TinfoilHat ===
#completeQuest returnthehat
"My hat! Now I am a whole disciple again! Thank you! So there is an upside about that theorist vanishing after all."
*   The Theorist is now living as a can!
    -> TinfoilHat5


    === TinfoilHat5 ===
#speaker Lamb
"Of all dire reflections, HEEEE reached transcendence?! Alumminas highest bless? I...want to bow and to laugh at the same time! I will bow though..."
*   [I have to go and searrch this combination..]
    -> Quest3

    === Quest3 ===
#speaker Lamb
"SOLVED! There is only one code regarding Alummina! You are required to decipher it for reaching transcendence! When your time comes, wander where word is spread without a sound!"
*    [Continue]
    -> Quest4


    === Quest4 ===
"Lines tell lies, but the shape will be truthful. Uncloak three riddles and you're one step closer to shepherds embrace."
*   [I guess, the solution is found on Wallpapers!]
    -> Quest5


    === Quest5 ===
#completeQuest reunion
#giveItem Wallpaperreader
#speaker Canspiracy Theorist
#addQuest calculatedclarity
"That's....just what I thought too!"
*   So I just look at them?
    -> MyIdea


    === MyIdea ===
"Yes,yes. A look at each wallpaper. That was MY IDEA. It's not a real riddle i guess.."
*   And the one in the Lobby?
    -> MyIdea2


    === MyIdea2 ===
"That's just the manual! It's NOT part of this riddle, I'm sure!"
    -> END








