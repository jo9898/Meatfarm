EXTERNAL addQuest(questName)
VAR completed_priesttalk3 = false
VAR completable_priesttalk3 = false
VAR active_priesttalk3 = false

#speaker Priest



 * {not completed_priesttalk3}  -> Sinner
 * {completed_priesttalk3} -> Explanation2


    === Sinner ===
#addQuest priesttalk3
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
*   You never said, but I have proof!
    -> Talk4


    === Talk4 ===
"Let's see"
*   - Pull out Theorist -
    -> Talk5

    === Talk5 ===
"Success nr. One! There you are! An example of scientific strive! Give him back, old one!"
*   Guess what. He thinks your an ALIEN!
    -> Talk7
/*

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
*/
    === Talk7 ===
#completeQuest priesttalk3
#giveItem AlienTrigger
"Mwahahahaha, your bubbling flesh balls."
    -> END



    === Explanation ===
"YEEEEEEKS! You're tarnishing Alumminas pure surface!"
*   She was misleading you all the time, Lamb.
    -> Explanation2


    === Explanation2 ===
#addQuest defeat
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
    -> revealed3


    === revealed2 ===
#speaker Canspiracy Theorist
"Guys! She's got the moral high ground in this one. Excluding me with my poor sight of course.."
*   [Continue]
    -> revealed3


    === revealed3 ===
"You're just afraid, because the humans on the other side..."
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
* Bully: Punch!
    -> hm

    === hm ===
#completeQuest defeat

"Hm?"
    -> END



