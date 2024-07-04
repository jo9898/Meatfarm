EXTERNAL addQuest(questName)
VAR completed_Gate = false
VAR completable_Gate = false
VAR active_Gate = false
#speaker: Granddad


That scale is biiig!
* {not completed_Gate} -> Dialog
*   -> Bye

    === Dialog ===
#speaker: Canspiracy Theorist
#completeQuest Gate
"Seems sturdy. Probably its enhanced to keep people from escaping."
*   [Continue] "I bet there is a switch nearby!"
    -> ByeBye

    === ByeBye ===

    -> END


    === Bye ===
    #speaker: Granddad

    -> END