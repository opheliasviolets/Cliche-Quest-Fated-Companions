//all of the variables we'll need!

//starting classes for the main 5
VAR vivienClass = "noble"
VAR owenClass = "noble"
VAR morganClass = "noble"
VAR kitClass = "commoner"
VAR hectorClass = "commoner" 

//the amount of damage each character can do is based on their assigned class
VAR vivienDamage = 0
VAR owenDamage = 0
VAR morganDamage = 0 
VAR kitDamage = 0 
VAR hectorDamage = 0 

//damage dealt is based on characters' classess
VAR knightDamage = 8 
VAR clericDamage = 6 
VAR darkMageDamage = 12
VAR fighterDamage = 10 
VAR bardDamage = 6

//the characters' health values
VAR owenHealth = 28
VAR vivienHealth = 24
VAR morganHealth = 25
VAR kitHealth = 26
VAR hectorHealth = 27 

//bond levels - if two characters are deployed together, it increases by 1. only the characters i wrote bond conversations for have bond levels here.
VAR vivienAndMorgan = 0 
VAR owenAndVivien = 0 
VAR morganAndKit = 0 
VAR owenAndHector = 0 

->welcome

===welcome===
Welcome to Cliche Quest!
Five young people stand before you. It is up to you to shape their destinies. 
->owenClassSelect


=== owenClassSelect ===
Owen stands before you. The second son of the king of Illunis's younger brother, he has been desperate to prove himself for his entire life. He may not be the most clever, but he's quite hardworking and almost annoyingly enthusiastic.
Select a class for Owen.
+ [Cleric]
~ owenClass = "Cleric"
~ owenDamage = clericDamage
+ [Dark Mage]
~ owenClass = "Dark Mage"
~ owenDamage = darkMageDamage
+ [Knight]
~owenClass = "Knight"
~owenDamage = knightDamage
+ [Fighter]
~owenClass = "Fighter"
~owenDamage = fighterDamage
+ [Bard]
~owenClass = "Bard"
~owenDamage = bardDamage 
- -> vivienneClassSelect


===vivienneClassSelect===
Vivien stands before you. As the eldest daughter of a deeply pious and influential family of nobles, she's been looking after others - especially her younger siblings - her entire life. She's been Owen's most trusted friend since childhood and is trusted by most.
Select a class for Vivien.
+ [Cleric]
~ vivienClass = "Cleric"
~vivienDamage = clericDamage
+ [Dark Mage]
~ vivienClass = "Dark Mage"
~vivienDamage = darkMageDamage
+ [Knight]
~vivienClass = "Knight"
~vivienDamage = knightDamage
+ [Fighter]
~vivienClass = "Fighter"
~vivienDamage = fighterDamage
+ [Bard]
~vivienClass = "Bard"
~vivienDamage = bardDamage 
- ->morganClassSelect


===morganClassSelect===
Morgan stands before you. Her older brother will be the next king of Komorebi, the kingdom neighboring Illunis. She lives in Illunis to further her education, but also to ensure goodwill between her family and Owen's. Her kingdom's beliefs are fairly similar to Illunis's, yet they are seen as pagan superstition at best and demon worship at worst. 
Select a class for Morgan.
+ [Cleric]
~ morganClass = "Cleric"
~morganDamage = clericDamage
+ [Dark Mage]
~ morganClass = "Dark Mage"
~morganDamage = darkMageDamage
+ [Knight]
~morganClass = "Knight"
~morganDamage = knightDamage
+ [Fighter]
~morganClass = "Fighter"
~morganDamage = fighterDamage
+ [Bard]
~morganClass = "Bard"
~morganDamage = bardDamage 
- -> kitClassSelect


===kitClassSelect===
Kit stands before you. He came to the capital of Illunis to find a noble to patronize his writing and musical endeavors. He's very charming (or at least he thinks he is), so he'll likely be successful. Not much is known about his past.
Select a class for Kit.
+ [Cleric]
~ kitClass = "Cleric"
~kitDamage = clericDamage
+ [Dark Mage]
~ kitClass = "Dark Mage"
~kitDamage = darkMageDamage
+ [Knight]
~kitClass = "Knight"
~kitDamage = knightDamage
+ [Fighter]
~kitClass = "Fighter"
~kitDamage = fighterDamage
+ [Bard]
~kitClass = "Bard"
~kitDamage = bardDamage
- ->hectorClassSelect

===hectorClassSelect===
Hector stands before you. He comes from a small village where he works in the forest, but Owen owes his family a favor, so he's come to the capital to earn money fighting alongside Owen and his companions. 
Select a class for Hector. 
+ [Cleric]
~ hectorClass = "Cleric"
~hectorDamage = clericDamage
+ [Dark Mage]
~ hectorClass = "Dark Mage"
~hectorDamage = darkMageDamage
+ [Knight]
~hectorClass = "Knight"
~hectorDamage = knightDamage
+ [Fighter]
~hectorClass = "Fighter"
~hectorDamage = fighterDamage 
+ [Bard]
~hectorClass = "Bard"
~hectorDamage = bardDamage 
- ->firstBattle


===firstBattle===
VAR char1 = "someone"
VAR char2 = "someone's friend"
VAR char1class = ""
VAR char2class = ""
VAR char1health = 0
VAR char2health = 0
VAR char1damage = 0 
VAR char2damage = 0 

VAR palaceGuardHealth = 30
It's time to train. 
You'll be fighting a palace guard who volunteered to get beaten up because he really, really wants a promotion.
->characterSelection
==attack==
{char1} and {char2} are ready to go!
->checkHealthChar1
==char1Actions==
{char1}'s Health: {char1health}
What should {char1} do?
+[Attack]
    {char1} attacked! Palace guard took {char1damage} damage.
    ~palaceGuardHealth -= char1damage
    ->checkHealthPG1
+[Wait]
- ->palaceGuardAction
==palaceGuardAction
Palace Guard's Health: {palaceGuardHealth}
Palace Guard attacked {char1} and dealt 5 damage.
~char1health -=5
->checkHealthChar2
==char2Actions==
{char2}'s Health: {char2health}
What should {char2} do?
+[Attack]
    {char2} attacked! Palace guard took {char2damage} damage.
    ~palaceGuardHealth -= char2damage
    ->checkHealthPG2
+[Wait]
- ->palaceGuardAction2
==palaceGuardAction2
Palace Guard's Health: {palaceGuardHealth}
Palace guard attacked {char2} and dealt 5 damage.
~char2health -= 5
->checkHealthChar1

==checkHealthPG1
{palaceGuardHealth <= 0:
    ->youWon
- else:
    ->palaceGuardAction
}

==checkHealthPG2
{palaceGuardHealth <= 0:
    ->youWon
- else:
    ->palaceGuardAction2
}

==checkHealthChar1
{char1health <= 0:
    ->youLost
-else:
    ->char1Actions

}

==checkHealthChar2
{char2health <= 0:
    ->youLost
-else:
    ->char2Actions

}



->END


==characterSelection===
Select a character to deploy.
+ [Owen]
~char1 = "Owen"
~char1health = owenHealth
~char1class = owenClass
~char1damage = owenDamage
+ [Vivien]
~char1 = "Vivien"
~char1health = vivienHealth
~char1class = vivienClass
~char1damage = vivienDamage
+ [Morgan]
~char1 = "Morgan"
~char1health = morganHealth
~char1class = morganClass
~char1damage = morganDamage
+ [Kit]
~char1 = "Kit"
~char1health = kitHealth
~char1class = kitClass
~char1damage = kitDamage 
+ [Hector]
~char1 = "Hector"
~char1health = hectorHealth
~char1class = hectorClass
~char1damage = hectorDamage 
- ->partnerSelection


//this code looks horrible because it turns out you can't use gathers with switch cases :( 
==partnerSelection==
Select a partner for {char1}. 
{char1: 
- "Owen":
    + [Vivien]
    ~char2 = "Vivien"
    ~char2class = vivienClass
    ~char2health = vivienHealth
    ~char2damage = vivienDamage
    ->attack
    + [Morgan]
    ~char2 = "Morgan"
    ~char2class = morganClass
    ~char2health = morganHealth
    ~char2damage = morganDamage
        ->attack
    + [Kit]
    ~char2 = "Kit"
     ~char2class = kitClass
    ~char2health = kitHealth
    ~char2damage = kitDamage
        ->attack
    + [Hector]
    ~char2 = "Hector" 
    ~char2class = hectorClass
    ~char2health = hectorHealth
      ~char2damage = hectorDamage
        ->attack
        
- "Vivien":
    + [Owen]
    ~char2 = "Owen"
  ~char2class = owenClass
    ~char2health = owenHealth
        ~char2damage = owenDamage
        ->attack
    + [Morgan]
    ~char2 = "Morgan"
    ~char2class = morganClass
    ~char2health = morganHealth
    ~char2damage = morganDamage
        ->attack
    + [Kit]
    ~char2 = "Kit"
     ~char2class = kitClass
    ~char2health = kitHealth
    ~char2damage = kitDamage
        ->attack
    + [Hector]
    ~char2 = "Hector" 
      ~char2class = hectorClass
    ~char2health = hectorHealth
      ~char2damage = hectorDamage
        ->attack
        
- "Morgan":
    + [Owen]
    ~char2 = "Owen"
      ~char2class = owenClass
    ~char2health = owenHealth
        ~char2damage = owenDamage
        ->attack
    + [Vivien]
     ~char2 = "Vivien"
    ~char2class = vivienClass
    ~char2health = vivienHealth
       ~char2damage = vivienDamage
        ->attack
    + [Kit]
    ~char2 = "Kit"
     ~char2class = kitClass
    ~char2health = kitHealth
    ~char2damage = kitDamage
        ->attack
    + [Hector]
    ~char2 = "Hector" 
      ~char2class = hectorClass
    ~char2health = hectorHealth
      ~char2damage = hectorDamage
        ->attack
        
- "Kit":
    + [Owen]
    ~char2 = "Owen"
      ~char2class = owenClass
    ~char2health = owenHealth
        ~char2damage = owenDamage
        ->attack
    + [Vivien]
     ~char2 = "Vivien"
    ~char2class = vivienClass
    ~char2health = vivienHealth
       ~char2damage = vivienDamage
        ->attack
    + [Morgan]
    ~char2 = "Morgan"
    ~char2class = morganClass
    ~char2health = morganHealth
    ~char2damage = morganDamage
        ->attack
    + [Hector]
    ~char2 = "Hector" 
      ~char2class = hectorClass
    ~char2health = hectorHealth
    ~char2damage = hectorDamage
        ->attack
        
- "Hector":
    + [Owen]
    ~char2 = "Owen"
    ~char2class = owenClass
    ~char2health = owenHealth
    ~char2damage = owenDamage
    ->attack
    + [Vivien]
     ~char2 = "Vivien"
    ~char2class = vivienClass
    ~char2health = vivienHealth
       ~char2damage = vivienDamage
    ->attack
    + [Morgan]
    ~char2 = "Morgan"
    ~char2class = morganClass
    ~char2health = morganHealth
     ~char2damage = morganDamage
    ->attack
    + [Kit]
    ~char2 = "Kit" 
    ~char2class = kitClass
    ~char2health = kitHealth
    ~char2damage = kitDamage
    ->attack
} 






===youWon===
Congrats!! You beat the first level of Cliche Quest: Fated Companions.
->bondLevelCheck


===selectConversations===
{
   -owenAndVivien == 1:
        You unlocked Owen and Vivien's first bond conversation! View?
        +[Yes]
        ->owenAndVivien1
        +[No]
        ->END
        
    -vivienAndMorgan == 1:
         You unlocked Vivien and Morgan's first bond conversation! View?
        +[Yes]
            ->vivienAndMorgan1
        +[No]
            ->END
    -owenAndHector == 1:
         You unlocked Owen and Hector's first bond conversation! View?
        +[Yes]
        ->owenAndHector1
        +[No]
            ->END
    -morganAndKit == 1:
         You unlocked Morgan and Kit's first bond conversation! View?
        +[Yes]
            ->morganAndKit1
        +[No]
            ->END
    
   }


===youLost===
{char1} and {char2} have fallen in battle. 
Begin again?
+ Yes
->welcome
+No 
->END

===bondLevelCheck===

{ 
    -(char1 == "Owen" && char2 == "Vivien") || (char2 == "Owen" && char1 == "Vivien"):
       ~owenAndVivien += 1
       
    -(char1=="Vivien" && char2 == "Morgan") || (char1 == "Morgan" && char2 == "Vivien"):
        ~vivienAndMorgan += 1
        
    -(char1=="Morgan" && char2=="Kit") || (char1 == "Kit" && char2 == "Morgan"):
        ~morganAndKit+=1
        
    -(char1=="Owen" && char2 == "Hector") || (char1=="Hector" && char2=="Owen"):
        ~owenAndHector+= 1
        
}
- -> selectConversations


===owenAndVivien1===
Owen: Hello, Vivien!
+[Advance]
Vivien: Owen! I'm surprised you had the time to see me. 
++[Advance]
Owen: Of course I had time for you!
+++[Advance]
Owen: We spent so much time together when we were young. I was so excited when your family moved to the capital. 
++++[Advance]
Owen: But you've been so busy with the Church, and I've been so busy with my education. 
+++++[Advance]
Vivien: I know! I wish I could have learned alongside you. 
++++++[Advance]
Vivien: I've always wanted to learn more about plants and their properties.
+++++++[Advance]
Vivien: I want to learn about poisons, really. 
++++++++[Advance]
Owen: Poisons? I've always thought you were so kind! I guess I'll have to watch my back now. 
+++++++++[Advance]
Vivien: No, not to poison others. To reverse the effects of poisons. They teach us nothing about poisons in the Church. 
++++++++++[Advance]
Vivien: It's the one area of medicine clerics are forbidden to study. Since we could use it for our own evil ends. 
+++++++++++[Advance]
Vivien: But it seems fascinating. 
++++++++++++[Advance]
Vivien: And, who knows? If Morgan steps out of line, I could take care of her. 
+++++++++++++[Advance]
Vivien: That's a joke, I promise. I trust Morgan. Though I don't think she likes me very much ... 
++++++++++++++[Advance]
Owen: I never knew that!
+++++++++++++++[Advance]
Owen: I'd like to help you, then.
++++++++++++++++[Advance]
Owen: Truthfully, I didn't learn very much about plants, but I can lend you some old scrolls I was supposed to read. If you have any questions, I'll try to answer them.
+++++++++++++++++[Advance]
Vivien: Really? Thank you so much!
->END

===vivienAndMorgan1===
Vivien: ...
+[Advance]
Vivien: ...
++[Advance]
Morgan: Hello, Vivien. Did you need something from me?
+++[Advance]
Vivien: No.
++++[Advance]
Vivien: I wanted to say hello. 
+++++[Advance]
Morgan: Hello.
++++++[Advance]
Morgan: ... 
+++++++[Advance]
Vivien: ... 
++++++++[Advance]
Vivien: I'm sorry I haven't talked to you more. In the time you've been studying at court. 
+++++++++[Advance]
Morgan: You have no need to apologize. I'm sure your family has told you all sorts of troubling things about me. 
++++++++++[Advance]
Vivien: Not about you, really.
+++++++++++[Advance]
Morgan: Then about my country, I'd assume. 
++++++++++++[Advance]
Morgan: And our superstitions. How your Goddess is only one of the gods we worship. 
+++++++++++++[Advance]
Vivien: I've never thought any less of you, you know. 
++++++++++++++[Advance]
Morgan: I'm sure. You probably see me as a soul to save. Someone who could be your equal, if only I had been taught correctly. 
+++++++++++++++[Advance]
Morgan: Good day, Vivien.
++++++++++++++++[Advance]
Morgan leaves.
Vivien: She'll never listen to me, will she?
->END

===morganAndKit1===
Kit: Your name is Morgan, correct?
+[Advance] 
    Morgan: Hello, Kit. Yes, my name is Morgan.
++[Advance]
Morgan: We fought side by side. Have I truly made so little of an impression that you forgot my name already?
+++[Advance]
Kit: Don't worry, you made quite the impression. 
++++[Advance]
Kit: I was fairly sure of your name, but you barely speak to any of us. I didn't want to be overly familiar.
+++++[Advance]
Morgan: You don't have to worry about that with me. Unlike the others in our party, I'm open to making new friends. 
++++++[Advance]
Kit: Are you sure? 
+++++++[Advance]
Kit: I've seen Vivien try to talk to you. Not that you have to worry about that anymore. I think you've scared her away. 
++++++++[Advance]
Morgan: She seemed scared the entire time we spoke. I've lived in this country for two years, and Vivien's never been normal around me. 
+++++++++[Advance]
Morgan: Hector doesn't talk to anyone, which I understand. As for Owen ...
++++++++++[Advance]
Kit: Yes?
+++++++++++[Advance]
Morgan: You truly don't know?
++++++++++++[Advance]
Kit: I'm afraid I don't, my lady. 
+++++++++++++[Advance]
Morgan: It was Owen's uncle the king who invited me to live in Illunis. I'm not naive enough to think it was out of the kindness of his heart. 
++++++++++++++[Advance]
Morgan: Essentially, I'm only here to keep my mother the queen in line. Our country and Illunis have never gotten along too well. I'm here to ensure we do. 
+++++++++++++++[Advance]
Kit: I see.
++++++++++++++++[Advance]
Kit: That must be difficult. And I thought I was an outsider at court being from a merchant family instead of a noble one.
+++++++++++++++++[Advance]
Morgan: You'll be fine. 
++++++++++++++++++[Advance]
Morgan: But if you want to fit in, perhaps you shouldn't be seen with me.
+++++++++++++++++++[Advance]
Morgan leaves.
Kit: That's a pity. I thought I had found a fellow outsider to befriend.
->END


===owenAndHector1===
Owen: Hector! Do you have a moment to talk?
+[Advance]
Hector: Yes. I have a few things to do, but they can wait. 
++[Advance]
Owen: Is there anything the palace staff can help you with?
+++[Advance]
Owen: I've seen you washing your own clothes, making your own meals. We have servants who can help you with that. 
++++[Advance]
Hector: Thank you, milord, but it's no trouble, really. I've always done that for myself and my family. 
+++++[Advance]
Hector: What is it you wanted to speak to me about?
++++++[Advance]
Owen: I wanted to thank you for coming here. 
+++++++[Advance]
Hector: It's no trouble. I should be thanking you for this opportunity. My family is poor, and one of my younger sisters-
++++++++[Advance]
Owen: Is she ill? I'm so sorry. I can double your pay. 
+++++++++[Advance]
Hector: I was going to say she has expensive taste. You already pay me more than enough. 
++++++++++[Advance]
Owen: I see! Well, it's admirable that you came here. Your whole family is upstanding. 
+++++++++++[Advance]
Hector: What exactly did we do for you? 
++++++++++++[Advance]
Hector: All I know is that my cousin was so sick of your letters about how you owe him that he sent me here to get you to stop sending them. 
+++++++++++++[Advance]
Owen: You aren't aware? One of your cousins saved my life!
++++++++++++++[Advance]
Hector: He's not my cousin, really. More of my father's brother's nephew's cousin's former roommate. 
+++++++++++++++[Advance]
Hector: How exactly did he save your life?
++++++++++++++++[Advance]
Owen: I fought off some bandits on the road once. When I was done, I had a scratch on my arm and he gave me a bandage. 
+++++++++++++++++[Advance]
Hector: That's it? 
++++++++++++++++++[Advance]
Hector: He didn't fight with you?
+++++++++++++++++++[Advance]
Hector: He just gave you a bandage after you already fought off the bandits?
++++++++++++++++++++[Advance]
Owen: That's correct! Without him, I could have bled to my untimely death. Since then, I've been doing my best to repay the debt I owe him. 
+++++++++++++++++++++[Advance]
Hector: That's ... nice. 
++++++++++++++++++++++[Advance]
Hector: I'm glad he saved your life, then.
+++++++++++++++++++++++[Advance]
Owen: Me too! I have to go now, but it was wonderful to talk to you and thank you properly. 
++++++++++++++++++++++++[Advance]
Owen leaves.
Hector: He's ... interesting. 
Hector: Are all nobles like that? 
->END

