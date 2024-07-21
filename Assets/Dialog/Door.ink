EXTERNAL addQuest(questName)
VAR completed_room = false
VAR completable_room = false
VAR active_room = false
VAR completed_wallpaper = false
VAR completable_wallpaper = false
VAR active_wallpaper = false
VAR completed_doorcheck = false
VAR completable_doorcheck = false
VAR active_doorcheck = false
VAR completed_calculatedclarity = false
VAR completable_calculatedclarity = false
VAR active_calculatedclarity = false

#speaker: Canspiracy-Theorist

Another door. Looks important.

* {completed_room} -> Door
* {not completed_room} -> Dialog
*   -> Bye


    === Door ===
* {completable_calculatedclarity} We've solved all Wallpaperriddles!
    -> Open
*   -> Bye

    === Open ===
#completeQuest doorcheck
#completeQuest calculatedclarity
There are still ways to type the combination..
*   -enter the combination-
    -> OpenUp


    === OpenUp ===
#giveItem ControlKey
Sounds like it opened up!
    -> END


    === Dialog ===
#speaker Canspiracy Theorist
#completeQuest room
#addQuest doorcheck
"It's looked. Kick it open!"
*   [Surprisingly a artificial knee doesn't provide superpowers..] "Looks like we need a combination, then."
    -> ByeBye

    === ByeBye ===

    -> END


    === Bye ===
    Something's missing.

    -> END