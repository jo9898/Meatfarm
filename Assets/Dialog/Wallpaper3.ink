EXTERNAL addQuest(questName)
VAR completed_CalculatedClarity = false
VAR completable_CalculatedClarity = false
VAR active_CalculatedClarity = false
VAR completed_Riddletalk3 = false
VAR completable_Riddletalk3 = false
VAR active_Riddletalk3 = false
#speaker: Canspiracy Theorist


Divider
* {not completed_CalculatedClarity} -> Riddletalk
* -> Wallpaper

    === Riddletalk ===
* {not completed_Riddletalk3}  -> Riddle
* -> Wallpaper

    === Wallpaper ===
"Colorful. I imediatly feel like I want to buy Dog-food."
    -> END


    === Riddle ===
#addQuest Riddletalk3
"You found a wallpaper - go on Sherlock!"
*   [When we're out, I could provide you with some Sudoku.] "Thanks, but I prefare to dance!"
   -> Number


    === Number ===
#completeQuest Riddletalk3

    -> END


