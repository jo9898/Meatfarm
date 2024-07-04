EXTERNAL addQuest(questName)
VAR completed_Container = false
VAR completable_Container = false
VAR active_Container = false
#speaker: Granddad


I don't want to open that door for no reason..
* {not completed_Container} -> Dialog
*   -> Bye

    === Dialog ===
#speaker: Canspiracy Theorist
#completeQuest Container
"Ha! My tinfoil hat!"
*   [Continue] "Well, maybe its time, it finds its way back to his true owner..""
    -> ByeBye

    === ByeBye ===

    -> END


    === Bye ===
    #speaker: Granddad
    
    -> END