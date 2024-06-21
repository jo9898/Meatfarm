#speaker: Wolf

"Hello Sir! Welcome to our happy, little farmstore!"
*   Good evening!
    -> Hello
*   I read about your job posting in the newspaper.
    -> jobPosting


    === Hello ===
"How may I help you?"
*   I read about your jobassignement in the newspaper.
    -> jobPosting


    === jobPosting ===
"Is that so.. . Well, you seem to fit the requirements just fine! Actually we've been waiting EXACTLY for someone like you!"
*   If I'm so suitable, maybe you want to hear something about myself-...
    -> Explain
*   It wasnt actually mentioned what your company does.
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
"Ehem, sure *clears throat*: Come home tired, oh you wanne rest! Your dog is barking, he's quite the pest. You're angry, Dog's angry. Sounds like a quest."
*   Continue
    -> Jingle2


    === Jingle2 ===
"Carrots will fail your very friend's test. Some meat in the bowl, is what he requests. Come, reach out a hand and let him digest..."
*   That part about the hand...
    -> Jingle3


    === Jingle3 ===
"...humane rations for a lioness. But, the food for your dog, simply is "Human's Best"!"
*   'Clap Clap', really nice perfomance. 
    -> Thanks
*   I always was a big fan of jingles! You absolutely convinced me about this job!
    -> Worth_it


    === Thanks ===
"Oh, thank you. You will learn it yourself, once you're working here!"
*   The wording in the song, though, sounded like the dog likes my hand a bit to much-...
    -> Sign


    === Worth_it ===
"(whispering): Everybody falls for the jingle, ehehe"
*   Continue
    -> Sign


    === Sign ===
"And here we go! Just sign the contract here and ... here! I must confess you proved to be a excellent candidate and i am incredibly IMPRESSED by your performance!
*    I barely said anything. What's your point?
    -> Convincing
*   Ok, i'm signing
    -> Contract


    === Convincing ===
"My POINT is that YOU     ARE     SUPREME! These days people are just so suspicious about compliments! Relax... ! Soak it up, you've EARNED IT! And now your signature, please."
*   It doesn't smell like dog FOOD in here...
    -> Dogfood
*   Ok, I'm signing
    -> Contract



    === Dogfood ===
"Dont you worry about the funny smell! Besides, a luxery payment of 10.000 bucks a month - after four weeks as an intern - we offer accommodation and free to use showers as well!
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
"Look, your scepticism tells me, this job will fit you so much! Why dont you take a peak into our factory?"
*   Alright, I give you a chance to convince me.
    -> Contract

    === Contract ===
"Great! The contract's to my right. If you want to get more familiar with our product, you're welcome to have a look around our small exhibition!"
*   Continue
    -> Door


    === Door ===
"When you're ready, please step through the door to my right and follow the cleaning procedure!"
*   You didn't mentioned a cleaning procedure...
    -> cleaning
*   Okay Dokay!
    -> questions


    === cleaning ===
"We care about our top of the line hygiene-standarts. Please just follow the protocol."
*   Continue
    -> questions


    === questions ===
"If you have any further questions - please - just ask."
    -> END