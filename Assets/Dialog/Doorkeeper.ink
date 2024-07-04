EXTERNAL addQuest(questName)
VAR completed_FindClarity = false
VAR completable_FindClarity = false
VAR active_FindClarity = false
#speaker: Intercom

"Please insert an accesscard to the console"
*   I dont have an accesscard.
    -> GoAway
* {completed_FindClarity} Insert accesscard
    -> OpenUp


    === GoAway ===
"Please insert an accesscard to ... "
    -> END


    === OpenUp ===
"Biep-Bup TSSssssssss..."
    -> END