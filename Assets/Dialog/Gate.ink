
VAR completed_gate = false
VAR completable_gate = false
VAR active_gate = false
#speaker: Granddad


That scale is biiig!
* {not completed_gate} -> Dialog
*   -> Bye

    === Dialog ===
#speaker: Canspiracy Theorist
#completeQuest gate
"Seems sturdy. Probably its enhanced to keep people from escaping."
*   [Continue] "I bet there is a switch nearby!"
    -> ByeBye

    === ByeBye ===

    -> END


    === Bye ===
    #speaker: Granddad

    -> END