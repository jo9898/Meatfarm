EXTERNAL addQuest(questName)
VAR completed_BullysAndBarrels = false
VAR completable_BullysAndBarrels = false
VAR active_BullysAndBarrels = false
VAR completed_Bullytalk3 = false
VAR completable_Bullytalk3 = false
VAR active_Bullytalk3 = false
#speaker: Bully

"..."
*   {not completed_Bullytalk3} - give fistbump -
    -> Divider
*   -> Choices


    === Divider ===
*   {not completed_BullysAndBarrels}  -> Barrels
*   ->  Choices


    === Barrels ===
#addQuest Bullytalk3
"Harhar"
*   I have a job for your knuckles.
    -> LetsGo


    === LetsGo ===
"Puunch! Where?"
*   Meet me at the Factory!
    -> Right


    === Right ===
#completeQuest Bullytalk3
- The Bully punches you against the shoulder - way to hard -
    -> END


    === Choices ===
"..."
*   ...
    -> NoWords


    === NoWords ===
"..."
    -> END