EXTERNAL addQuest(questName)
VAR completed_container = false
VAR completable_container = false
VAR active_container = false
#speaker: Canspiracy-Theorist
#completeQuest container
"Ha! My tinfoil hat!"
*   [Continue] "Well, maybe its time, it finds its way back to his true owner..""
    -> ByeBye

    === ByeBye ===

    -> END


    === Bye ===
    #speaker: Granddad
    #giveItem Tinfoilhat
    
    -> END