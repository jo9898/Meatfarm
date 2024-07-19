EXTERNAL addQuest(questName)
VAR completed_findclarity = false
VAR completable_findclarity = false
VAR active_findclarity = false
#speaker: Granddad

"Please insert an accesscard to the console"
*   I dont have an accesscard.
    -> GoAway
* {completed_findclarity} Insert accesscard
    -> OpenUp


    === GoAway ===
"Please insert an accesscard to ... "
    -> END


    === OpenUp ===
#giveItem FactoryKey
#completeQuest findclarity
"Thank you. The Door is unlocked now."
    -> END