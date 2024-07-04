EXTERNAL addQuest(questName)
#speaker: Hungry-Steve
VAR completable_getmeapple = false
VAR completed_getmeapple = false
VAR active_getmeapple = false

"Wheres my apple??"
*   -> Choice
*{active_getmeapple} [Im on the run-Steve] "Hurry up, Granddad!"
    -> Choice


    === Choice ===
"Hello, im hungry steve!"
*{completable_getmeapple} Heres your apple!
    -> THANKS
*{not completed_getmeapple}wanne quest
    -> Quest
*{completed_getmeapple} Just wanted to say: Your a big Bitch, Steve!
    -> Bitch
*   Bye Steve!
    -> Bye


    === Quest ===
# addQuest getmeapple
    "here you got one"
*   bye Steve!
    -> Bye


    === Bye ===
"bye granddad"
    -> END


    === THANKS ===
# removeQuest getmeapple
# giveItem getmeapple
thank you
    -> END


    === Bitch ===
your a Bitch, Granddad!
    -> END