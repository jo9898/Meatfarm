EXTERNAL addQuest(questName)
VAR completed_CalculatedClarity = false
VAR completable_CalculatedClarity = false
VAR active_CalculatedClarity = false
VAR completed_Riddletalk = false
VAR completable_Riddletalk = false
VAR active_Riddletalk = false
#speaker: Canspiracy Theorist


Divider
* {not completed_CalculatedClarity} -> Riddletalk
* -> Wallpaper

    === Riddletalk ===
* {not completed_Riddletalk}  -> Riddle
* -> Wallpaper

    === Wallpaper ===
"Colorful. I imediatly feel like I want to buy Dog-food."
    -> END


    === Riddle ===
#addQuest Riddletalk
"Yes! Its a wallpaper! I thought of a book, but who's got books in here."
*   Lines lying, but shape is truthfull..
    -> Number


    === Number ===
#completeQuest Riddletalk
"The number should be hidden somewhere on the Paper.."
    -> END



