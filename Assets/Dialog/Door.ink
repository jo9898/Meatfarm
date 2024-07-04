EXTERNAL addQuest(questName)
VAR completed_Room = false
VAR completable_Room = false
VAR active_Room = false
VAR completed_Wallpaper1 = false
VAR completable_Wallpaper1 = false
VAR active_Wallpaper1 = false
VAR completed_Wallpaper2 = false
VAR completable_Wallpaper2 = false
VAR active_Wallpaper2 = false
VAR completed_Wallpaper3 = false
VAR completable_Wallpaper3 = false
VAR active_Wallpaper3 = false
VAR completed_DoorCheck = false
VAR completable_DoorCheck = false
VAR active_DoorCheck = false
#speaker: Granddad

Another door. Looks important.

* {completed_Room} -> WP1
* {not completed_Room} -> Dialog
*   -> Bye


    === WP1 ===
Another door. Looks important.
* {completed_Wallpaper1} -> WP2
*   -> Bye


    === WP2 ===
Another door. Looks important.
* {completed_Wallpaper2} -> WP3
*   -> Bye


    === WP3 ===
Another door. Looks important.
* {completed_Wallpaper3} -> Check
*   -> Bye


    === Check ===
#addQuest DoorCheck
* {not completed_DoorCheck} -> Open
*   -> Bye

    === Open ===
#completeQuest DoorCheck
*   Enter the combination 
    -> OpenUp


    === OpenUp ===
Sounds like it opened up!
    -> END


    === Dialog ===
#speaker Canspiracy Theorist
#completeQuest Room
"It's looked. Kick it open!"

*   [Surprisingly a artificial knee doesn't provide superpowers..] "Looks like we need a combination, then."
    -> ByeBye

    === ByeBye ===

    -> END


    === Bye ===
    #speaker: Granddad

    -> END