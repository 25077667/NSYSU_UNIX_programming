The other homework file has all of the aliases. It was able to reproduce a
surprising amount of the original game, with just ideas from the first 2
lectures (although, after some further thought, I realize now that it also
uses "tr", which comes from lecture 3).

There was one basic limitation of aliases: they cannot receive arguments. But
many of the commands do have arguments. For example "get shovel" or "x tree".
Our solution was to use alias ...='(cat ; ...)<', which causes the UNIX shell
to interpret the argument you typed (eg, the "tree" in "x tree") as a file
name. This worked fairly well for "x tree": If you were in a directory with a
file named "tree", then the contents of that file could pass into the script.

Of course the solution for "x tree" was not perfect. If you were in a directory
without the tree file, you would get "File not found" rather than "I don't see
that here." Also, you could only examine objects that were on the ground, not
those in your inventory (eg, "x lamp" would not work unless you first drop the
lamp).

Well for all of the limitations of the method, it is more impressive for what
it can do, than for what it can't.

But that takes us to the drop command. The thing you want to drop will not be
on the ground; it will be in your inventory. So, when you type "drop lamp",
you cannot use the same method that you use for "get shovel". We need a new
method -- and we have one. Lecture 2 introduced how to make scripts, including
the "$*" symbol for the arguments given to the script. (In lecture 4, we learn
how to get the individual arguments, $1, $2, etc. -- but this homework doesn't
allow you to use lecture 4 material. But we assume that the user only ever
types one argument. So $* will work just like $1.)

So the drop.sh file is a script that has access through $* to the passed-in
argument (the thing that you want to drop). It is a script. It does not use
aliases. It also does not any commands that are not described in the first 2
lectures (except: I do allow you to use plain "exit" commands (but no arguments
are allowed). So you cannot use variable, or if statements, or anything else
that wasn't in the first two lectures. Thus: you have to store information in
files, not variables. And you have to perform conditional test through command
coordination (&&/||).

So, what does drop.sh do?
The first 3 lines of the script handle the cases where you do not have the
object that you are trying to drop. So you should give the correct one of the
following messages: "I do not know what that is." or "You do not have that."
(The correct message is determined based on whether the ~/O directory contains
a file with the same name $* holds.) On the third line, if either of those
messages printed, you do an "exit".

So, to get to line 4, you know that you really do have something to drop.
So you need to move that file from ~/I to .
You also need to print "Done."

But there are special cases:
1. If you type either "drop emerald" or "drop bracelet" then both the "emerald"
   and "bracelet" files must be moved.
2. Similarly, the "card", "cpu", and "board" files must also all move together.
3. If you drop the key, you must also lock the door to the house, but turning
   off its write permissions.
4. If you drop the food, and if you are in the place with the hidden key, then
   you will need to do the following (in an order)
   1. Say: "The bear takes the food and runs away with it. He left something 
      behind."
   2. Remove the files for "food" and "bear".
   3. Move the file ".key" to "key".


You'll also need to remove any temporary files this script creates. (Recall
that I said earlier: "you have to store information in files, not variables.")

