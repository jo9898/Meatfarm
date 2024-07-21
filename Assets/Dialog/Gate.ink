
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
"Seems not too solid. With something big we could break through."
*   [Continue]
    -> ByeBye

    === ByeBye ===
"Wasn't there a truck around?"
    -> END


    === Bye ===
    #speaker: Granddad

    -> END