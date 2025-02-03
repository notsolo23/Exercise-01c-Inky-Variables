/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
*/

VAR health = 100
VAR pet_name = ""
VAR torches = 0



-> memory

== memory ==
Before you stands the covern of Josh. You wish your childhood pet was with you now. The cave might be less intimidating then. what was your poet`s name?

* [Charlie] 
    ~ pet_name = "Charlie" 
    -> cave_mouth
* [Susan]
    ~ pet_name = "Susan"
    -> cave_mouth
* [Spot]
    ~ pet_name = "Spot"
    -> cave_mouth
* [Ben]
    ~ pet_name = "Ben"
    -> cave_mouth
* [Cash]
    ~ pet_name ="cash"
    -> cave_mouth
    
    
== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. if only {pet_name} could see you now!

You have {torches} torches
You have {health} hp

+ [Take the north tunnel] -> north_tunnel
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

==north_tunnel==
You are the north tunnel.... 

AHHH YOUR ATTACKED BY A BEAR....

YOU BARELY SURVIVE LOSING 90 HP...

~health = health - 90
YOU NOW HAVE {health} HP
+[Go back] -> cave_mouth
-> END

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west

{pet_name == "Spot": Scout would love it here in the west| }

+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END

