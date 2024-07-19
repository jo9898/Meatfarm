VAR completed_placethebait = false
VAR completable_placethebait = false
VAR active_placethebait = false
VAR completed_nerdtalk2 = false
VAR completable_nerdtalk2 = false
VAR active_nerdtalk2 = false

#speaker: Granddad
"There's a lot of space here..""
*   {active_placethebait}  -> divider3
*   {not active_placethebait}  -> Choices

    === divider3 ===
*   {completed_nerdtalk2}   -> Item
*   {not completed_nerdtalk2} -> Choices



    === Choices ===
There's a lot of space here..
*   It's just a table
    -> Bye


    === Bye ===
Maybe later i can make use of it..
    -> END


    === Item ===
#giveItem BaitCheck
#completeQuest placethebait
The bait will be well visible here!
* [-Place the bait.] I should step back a bit. 
    -> OpEnd


    === OpEnd ===

    -> END
