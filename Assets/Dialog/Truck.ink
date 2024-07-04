EXTERNAL addQuest(questName)
VAR completed_Truck = false
VAR completable_Truck = false
VAR active_Truck = false
#speaker: Granddad

A beautiful, old Truck
* {not completed_Truck} -> Dialog
*   -> Bye

    === Dialog ===
#speaker: Canspiracy Theorist
#completeQuest Truck
"If this isn't a beauty! According to the dust, it wasn't moved in a while."  
*   [Continue] "We could probably use it, but we need to prepare it first."
    -> ByeBye

    === ByeBye ===

    -> END



    === Bye ===
    #speaker: Granddad
    
    -> END