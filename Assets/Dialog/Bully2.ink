EXTERNAL addQuest(questName)
VAR completed_bullysandbarrels = false
VAR completable_bullysandbarrels = false
VAR active_bullysandbarrels = false
VAR completed_bullytalk3 = false
VAR completable_bullytalk3 = false
VAR active_bullytalk3 = false
#speaker: Bully

"..."
*   {not completed_bullytalk3} - give fistbump -
    -> Divider
*   -> Choices


    === Divider ===
*   {not completed_bullysandbarrels}  -> Barrels
*   ->  Choices


    === Barrels ===
#addQuest bullytalk3
"Harhar"
*   I have a job for your knuckles.
    -> LetsGo


    === LetsGo ===
"Puunch! Where?"
*   Meet me at the Factory!
    -> Right


    === Right ===
#completeQuest bullytalk3
- The Bully punches you against the shoulder - way to hard -
    -> END


    === Choices ===
"..."
*   ...
    -> NoWords


    === NoWords ===
"..."
    -> END