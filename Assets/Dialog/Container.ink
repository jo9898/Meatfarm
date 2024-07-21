EXTERNAL addQuest(questName)
VAR completed_container = false
VAR completable_container = false
VAR active_container = false
#speaker: Canspiracy-Theorist
"Ha! My tinfoil hat!"
*   [Continue] 
    -> Bye


    === Bye ===
    #completeQuest container
    #giveItem Tinfoilhat
    "Well, maybe its time, it finds its way back to his true owner.."
    
    -> END