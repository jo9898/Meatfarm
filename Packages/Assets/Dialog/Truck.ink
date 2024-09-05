EXTERNAL addQuest(questName)
VAR completed_truck = false
VAR completable_truck = false
VAR active_truck = false
#speaker: Granddad

A beautiful, old Truck
* {not completed_truck} -> Dialog
*   -> Bye

    === Dialog ===
#speaker: Canspiracy Theorist
#completeQuest truck
"If this isn't a beauty! According to the dust, it wasn't moved in a while."  
*   [Continue] "We could probably use it, but we need to prepare it first."
    -> ByeBye

    === ByeBye ===

    -> END



    === Bye ===
    #speaker: Granddad
    
    -> END