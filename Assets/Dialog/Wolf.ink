VAR completed_wolftalk = false
VAR completed_findclarity = false

#speaker: Wolf
"...he's quite the pest. You're angry, Dog's angry. Sounds like a quest!"
*   -> FurtherQuestions
*   {completed_findclarity} WuffWuff!
    -> Yeeeks 


    === FurtherQuestions ===
"So you do have questions? Why don't you find the answers yourself?"
*  {completed_wolftalk} -> StepThrough
*  {not completed_wolftalk} -> HelloSir


    === StepThrough ===
* I like the leading approach!
    -> StepThrough2


    === StepThrough2 ===
"Step through the door, please!"
    -> END


    === HelloSir ===
#addQuest wolftalk
"Hello Sir! Welcome to our happy, little farm store!"
*   Good evening!
    -> Hello
*   I read about your job posting in the newspaper.
    -> jobPosting


    === Hello ===
"How may I help you?"
*   I read about your job assignment in the newspaper.
    -> jobPosting


    === jobPosting ===
"Is that so.. . Well, you seem to fit the requirements just fine! Actually we've been waiting EXACTLY for someone like you!"
*   If I'm so suitable, maybe you want to hear something about myself-...
    -> Explain
*   It wasn’t actually mentioned what your company does.
    -> Great_Company
*   How much will I earn-...
    -> Explain
*   What working hours do I have to expect-...
    -> Explain


    === Explain ===
"Let me first give you a proper introduction of our lovely, little business!"
*   Continue
    -> Great_Company


    === Great_Company ===
"*clears throat* Welcome to the place, where humans are not mediocre, but - BEST! Welcome to "Human's Best"! Producer off premium rations for human's best friend!"
*   Wow, that's catchy! Do you, by any chance, have a company jingle?
    -> Jingle
*   So what is it exactly, that makes your dog food so special?...
    -> Sign

    
    === Jingle ===
"Ehem, sure *clears throat*: Come home tired, oh you wan ne rest! Your dog is barking, he's quite the pest. You're angry, Dog's angry. Sounds like a quest."
*   Continue
    -> Jingle2


    === Jingle2 ===
"Carrots will fail your very friend's test. Some meat in the bowl, is what he requests. Come, reach out a hand and let him digest..."
*   That part about the hand...
    -> Jingle3


    === Jingle3 ===
"...humane rations for a lioness. But, the food for your dog, simply is "Human's Best"!"
*   'Clap Clap', really nice performance. 
    -> Thanks
*   I always was a big fan of jingles! You absolutely convinced me about this job!
    -> Worth_it


    === Thanks ===
"Oh, thank you. You will learn it yourself, once you're working here!"
*   The wording in the song, though, sounded like the dog likes my hand a bit to much-...
    -> Sign


    === Worth_it ===
"- whispering - : Everybody falls for the jingle, ehehe"
*   Continue
    -> Sign


    === Sign ===
"And here we go! Just sign the contract here and ... here! I must confess you proved to be a excellent candidate and I am incredibly IMPRESSED by your performance!
*    I barely said anything. What's your point?
    -> Convincing
*   Ok, I’m signing
    -> Contract


    === Convincing ===
"My POINT is that YOU     ARE     SUPREME! These days people are just so suspicious about compliments! Relax... ! Soak it up, you've EARNED IT! And now your signature, please."
*   It doesn't smell like dog FOOD in here...
    -> Dogfood
*   Ok, I'm signing
    -> Contract



    === Dogfood ===
"Don’t you worry about the funny smell! Besides, a luxury payment of 10.000 bucks a month - after four weeks as an intern - we offer accommodation and free to use showers as well!
*   Sounds pretty good, but there has to be a hook, right?
    -> Hook
*   Ok, I'm signing
    -> Contract


    === Hook ===
"Oh, this business gets people hooked quite easy, hahaha. Ehem... . No really. You pass your four weeks internship and you get a big pile of cash every month! 
*   But if your offer is that good, how can you still search for people?
    -> annoyed
*   Ok, I'm signing
    -> Contract


    === annoyed ===
"We just have a high demand. Do you know how hard it is to find qualified people these days? We could hire HERDS of people, haha. YOUR profession will keep our production going for quite some time."
*   Didn't told you about my profession, really..
    -> profession
*   Ok, I'm signing
    -> Contract

    === profession ===
"Look, your skepticism tells me, this job will fit you so much! Why don’t you take a peak into our factory?"
*   Alright, I give you a chance to convince me.
    -> Contract

    === Contract ===
#completeQuest wolftalk
"Great! If you want to get more familiar with our product, you're welcome to have a look around our small exhibition!"
*   Continue
    -> Door


    === Door ===
"When you're ready, please step through the door to my right and follow the cleaning procedure!"
*   You didn't mentioned a cleaning procedure...
    -> cleaning
*   Okay Dokay!
    -> questions


    === cleaning ===
"We care about our top of the line hygiene-standards. Please just follow the protocol."
*   Continue
    -> questions


    === questions ===
"If you have any further questions - please - just ask."
    -> END





    === Yeeeks ===
"YEEEEEEEKS!!"
*   Time for the Jingle-man to mingle with his biggest fan's - FIST!
    -> Please


    === Please ===
"P-P-PLEAAASE! I surrender! Let me explain! Ask me anything!"
*   You bet I will.
    -> Choices1


    === Choices1 ===
*   [Are you the scum, who kidnaped the theorist?] "I didn't do anything like that! My job is just to lead people in."
    -> WasntMe
*   What is it, this factory is doing?
    -> WhatsFactory
*   How can we get out?
    -> HowGetOut


    === WasntMe ===
*   Who took the theorist?
    -> Theorist
*   Your job? For whom are you working then?
    -> WhoIsInCharge
*   Back to other matters...
    -> Choices1



    === Theorist ===
"I never witnessed how people where taken! They...disappear and that's when they call me, to put away the new cans of Dog Food."
*   [So people really get turned into pedigrees here?] "There have been incidents...but its not the goal."
    -> WasntMe


    === WhoIsInCharge ===
"If I would know, the situation would be so much easier to solve!"
*   [Continue] "They communicate in messages, written in fine letters or short and descriptive via the speakers!"
    -> WasntMe


    === WhatsFactory ===
"They are.. experimenting. You saw the product, down in the lobby. It's not finished though."
*   How do you know, it's not finished?
    -> NotFinished


    === NotFinished ===
"Well...that’s the leverage they have against me.. or do you thought, I'd stay, because I enjoy the place so much?"
*   Yes, partially. All your allusions during that lobby talk.. 
    ->  Brother


    === Brother ===
"My motto is to always give 150%! But frankly they have my brother. Ether I hire more people every week, or he ends up on the conveyor-belt, too!" 
*   Go on..
    -> GoOn


    === GoOn ===
"They need to be discreet, while figuring out the right formular. So they are using this small business, with the friendly reception staff."
*   And if the product is finished?
    -> GoOn2


    === GoOn2 ===
"Afterwards they go into mass production. At that point they will recruit in bigger scale, maybe human trade."
*   [Continue] "And I'll lose my worth and won't be able to protect my brother anymore.."
    -> Choices1


    === HowGetOut ===
"First, I go nowhere without my brother. Second - my hands are bound. If I'm getting too close to the cattle shed..."
*   LANGUAGE!
    -> HowGetOut2


    === HowGetOut2 ===
"I'm sorry, it’s a habit. If I'm getting too close, the bosses made clear, Lamb or I'll die. But maybe I can help you in another way."
*   Thats the least you should do.
    -> HowGetOut3

    === HowGetOut3 ===
"You're right. I think the theorist figured out a way to disrupt this whole operation. He's a threat to my bosses plans."
*   "Is" ?
    -> HowGetOut4


    === HowGetOut4 ===
"When I told you about the unfinished product....He might still be alive!"
*   What? I thought of him in a bowl of my neighbor already!
    -> HowGetOut5


    === HowGetOut5 ===
#addQuest checkcans
"Go to the long conveyor-belt and check the cans! I have to go back to work...good luck!"
    -> END
