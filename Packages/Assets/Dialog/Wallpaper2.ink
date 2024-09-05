EXTERNAL addQuest(questName)
VAR completed_CalculatedClarity = false
VAR completable_CalculatedClarity = false
VAR active_CalculatedClarity = false
VAR completed_Riddletalk2 = false
VAR completable_Riddletalk2 = false
VAR active_Riddletalk2 = false
#speaker: Canspiracy Theorist


Divider
* {not completed_CalculatedClarity} -> Riddletalk
* -> Wallpaper

    === Riddletalk ===
* {not completed_Riddletalk2}  -> Riddle
* -> Wallpaper

    === Wallpaper ===
"Colorful. I imediatly feel like I want to buy Dog-food."
    -> END


    === Riddle ===
#addQuest Riddletalk2
"Here we go, lets solve"
*   [I was always a big fan of puzzles.] Oh, me too!!
    -> Number


    === Number ===
#completeQuest Riddletalk2

    -> END
