VAR completed_redbutton = false
VAR completable_redbutton = false
VAR active_redbutton = false

#speaker Canspiracy-Theorist




*   {completed_redbutton} -> RUN
*   -> Choices

    === Choices ===
"That's what i call a 'Big Red Button'!"
*   {completable_redbutton} Time has come!
    -> Press
*   I wanne press it!
    -> Later


    === Later ===
"Latter Pinky!"
    -> END


    === Press ===
#completeQuest preparethetruck
#completeQuest bullysandbarrels
#completeQuest redbutton
#giveItem BANG
"Are you ready Pinky? This is it. The eye of the Alien! Let's put an end to it!"
    -> END


    === RUN ===
"WHAT ARE YOU WAITING FOR??"
*   What do you mean?
    -> RUN2

    === RUN2 ===
"STOP TESTING GAMEMECHANICS AND RUN!!!"
    -> END