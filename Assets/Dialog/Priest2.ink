EXTERNAL addQuest(questName)
VAR completed_priesttalk2 = false
VAR completable_priesttalk2 = false
VAR active_priesttalk2 = false

#speaker Priest



 * {not completed_priesttalk2}  -> Sinner
 * {completed_priesttalk2} -> Explanation


    === Sinner ===
#addQuest priesttalk2
"Sinner!"
*   Oh, I didn't do anything!
    -> Talk1


    === Talk1 ===
"You tell lies about me and raise my disciples against me!"
*   You created a fake religion to control people around you!
    -> Talk2


    === Talk2 ===
"I gave them something to hang on, while they were down!"
*   You're preaching transcendence, as being stuck in a can!
    -> Talk3


    === Talk3 ===
"I never said that. You caused a famine among these pour souls and lit up the factory!"
*   You never said, but I have proof! - pulling out theorist -
    -> END


    === Talk4 ===
#speaker Canspiracy Theorist
"Here I am! This person is as far from a holy priest as possible!"
*   [Continue] 
    -> Talk5


    === Talk5 ===
#speaker Priest
"Success nr. One! There you are! An example of scientific strive! Give him back, old one!"
*   No more religious talk?
    -> Talk6


    === Talk6 ===
#speaker Canspiracy Theorist
"You yellow marshmallow put me into this misery! I know it's cliché for people like me, but, listen guys: she's an ALIEN!"
*   I guess to call someone like her that way is fine.
    -> LambReact


    === LambReact ===
#speaker Lamb
"Oh, like in that movie about E.B. the alien!"
*   Continue
    -> NobReact


    === NobReact ===
#speaker Nob
"No, like in the one about signs!"
*   More like "Black suit boys one"
    -> WolfReact


    === WolfReact ===
#speaker Wolf
"I would say, 'non-terrestrial lifeform - the thing from another system'"
*   Continue
    -> BullyReact


    === BullyReact ===
#speaker Bully
"'crouching Tiger, hidden alien'! Only Movie harhar"
*   Continue
    ->  Talk7

    === Talk7 ===
#completeQuest priesttalk2
#speaker Priest
"Mwahahahaha, your bubbling flesh balls."
    -> END



    === Explanation ===
#speaker Lamb
"YEEEEEEKS! You're tarnishing Alumminas pure surface!"
*   She was misleading you all the time, Lamb.
    -> Explanation2


    === Explanation2 ===
#speaker Alien-Priest
"Visiting earth revealed a disappointment and a true love."
*   Mrs. /Mr. Alien. Tell us about love.
    -> Choice
*   Only disappointment is you're still standing.
    -> Underline


    === Choice ===
"As if you would have a choice."
*   Continue
    -> revealed


    === Underline ===
"Well assisted!"
*   I don’t ...
    -> revealed


    === revealed ===
"You Humans are unstable! You never managed to be consistent, always seeking foes around you - instead of preparing for forces, lurking outside your control and sight."
*   [Continue]
    -> revealed2


    === revealed2 ===
#speaker Canspiracy Theorist
"Guys! She's got the moral high ground in this one. Excluding me with my poor sight of course.."
*   [Continue]
    -> revealed3


    === revealed3 ===
#speaker Alien-Priest
"Just another example how narcistic behavior negates unity. You're just afraid, because the humans on the other side..."
*   [Continue]
    -> revealed4


    === revealed4 ===
"...if they are afraid, they too use fire for war instead of development. Just pitiful humans too."
*   So we should turn others into Dog food instead?
    -> revealed5


    === revealed5 ===
"Yes. Because dogs are lovely"
*   ehm...
    -> revealed6


    === revealed6 ===
"We want to adopt all of them. You should know, intelligence and emotional health correlate with each other."
*   Continue
    -> revealed7


    === revealed7 ===
"We saw many species raising to greatness just to found themself to unsatisfied to push the struggle of life further."
*   Continue
    -> revealed8


    === revealed8 ===
"But with a good buddy at your side.. . They keep you busy and become your best friends! And apparently they love to eat you humans - which is great irony, hihihi. "
*   Continue
    -> revealed9


    === revealed9 ===
"But our way of interplanar travelling turns all dead materiel bad, so we came up with a way to preserve you alive!"
*   So what do you have this xxl meat grinder for?
    -> finale


    === finale ===
"Like I said, first several thousand cans turned bad."
*   Continue
    -> Enough


    === Enough ===
#speaker High-gene Staff
"ENOUGH OF THAT, EGGPLANT ABOMINATION!"
    -> END
