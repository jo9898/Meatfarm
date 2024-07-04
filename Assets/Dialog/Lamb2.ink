EXTERNAL addQuest(questName)
VAR completed_Lambtalk2 = false
VAR completable_Lambtalk2 = false
VAR active_Lambtalk2 = false
VAR completed_ReturnTheHat = false
VAR completable_ReturnTheHat = false
VAR active_ReturnTheHat = false
VAR completed_Canscheck = false
VAR completable_Canscheck = false
VAR active_Canscheck = false
#speaker Lamb





Divider
* {not completed_Lambtalk2} -> Reunion
*   -> Hello


    === Hello ===
"Alumina may bless you"
*   -> Choices



    === Choices ===
*   {completed_Canscheck}   Pack your hat, we're going!
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
*   I heared the Priestess lost Alumminas voice!["She did?? That would mean I can interpret Alumminas will by myself!"]
    -> Gathering3


    === Rebel ===
"No, YOU'RE a lier!"
*   No and I will give you reason to believe!
    -> AlumminasPraise 


    === Gathering3 ===
*   Please wait for me at the Truck!
    -> END


    === Bye ===
"Reflected. You almost made it not sound ironic"
    -> END



    === Reunion ===
#addQuest Reunion
"Granddad."
*   [Son] "What is it?"
    -> Choices6


    === Choices6 ===

*   I brought back your tinfoil-hat.
    -> TinfoilHat


    === TinfoilHat ===
"My hat! Now I am a whole disciple again! Thank you! So there is an upside about that theorist vanishing after all."
#completeQuest Return The Hat
*   Your welcome!
    -> TinfoilHat2


    === TinfoilHat2 === 
#speaker Canspiracy Theorist 
"Hey! Your unthankful boy! Do you even know, that hat has some actuall worth?"
*   [Continue]
    -> TinfoilHat5


    === TinfoilHat5 ===
#speaker Lamb
"Of all dire reflections, youuu reached trancendence?! Alumminas highest bless? I...want to bow and to laught at the same time! I will bow though..."
*   [Continue]
    -> TinfoilHat6


    === TinfoilHat6 ===
#speaker Canspiracy Theorist
"Heh, yes. Please write this into my memoirs. Now, Lamb, listen .. deciple! I need you to go on .. a secret quest ... for calculated clarity!"
*   [Continue]
    -> Quest1


    === Quest1 ===
#speaker Lamb
"Yes, oh protected one. I accept, hoping one day some of Alumminas glory reflects upon me!"
*   [Continue]
    -> Quest2


    === Quest2 ===
#speaker Canspiracy Theorist
"I consider your plea. Now there's a combination required to open up a door in the factory..."
*   [Continue]
    -> Quest3


    === Quest3 ===
#speaker Lamb
"SOLVED! There is only one code regarding Alummina! You are required to decipher it for reaching trancendence! When your time comes, wander where word is spread without a sound!"
*    [Continue]
    -> Quest4


    === Quest4 ===
"Lines tell lies, but the shape will be truthfull. Uncloak three riddles and you're one step closer to shepards embrace."
*   [Continue]
    -> Quest5


    === Quest5 ===
#completeQuest Reunion
#speaker Canspiracy Theorist
#addQuest CalculatedClarity
"Deciple, you were heared. Words with no sound. The lines tell lies, but Shape will be truthful. Any ideas, Pinky?"
    -> END




