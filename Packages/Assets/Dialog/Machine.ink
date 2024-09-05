EXTERNAL addQuest(questName)
VAR completed_machine = false
VAR completable_machine = false
VAR active_machine = false
#speaker Granddad

It looks like it's born to quash!
* {not completed_machine} -> Dialog
*   -> Bye



    === Dialog ===
#completeQuest machine
"The spikes on this heavy roll are leaving no room for speculation."
*   [Continue] "Hard to believe, I would still talk to you, if they put me in there."
    -> ByeBye

    === ByeBye ===

    -> END


    === Bye ===


    -> END