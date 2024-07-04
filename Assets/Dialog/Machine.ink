EXTERNAL addQuest(questName)
VAR completed_Machine = false
VAR completable_Machine = false
VAR active_Machine = false
#speaker Granddad

It looks like it's born to quash!
* {not completed_Machine} -> Dialog
*   -> Bye



    === Dialog ===
#speaker: Canspiracy Theorist
#completeQuest Machine
"The spikes on this heavy roll are leaving no room for speculation."
*   [Continue] "Hard to believe, I would still talk to you, if they put me in there."
    -> ByeBye

    === ByeBye ===

    -> END


    === Bye ===
    #speaker: Granddad

    -> END