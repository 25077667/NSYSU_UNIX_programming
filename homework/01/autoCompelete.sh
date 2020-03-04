#! /bin/bash

run(){
    mkdir PA1
    cd PA1
    mkdir inventory obj objects start

    cd inventory
    echo "lamp" > lamp
    cd ../
    
    cd objects
    # edit .alerts
    echo "The panel lights are steady and motionless." >> .alerts
    echo "The panel lights are flashing in a seemingly organized pattern." >> .alerts
    echo "There is a CPU card here." >> .alerts
    echo "There is a ferocious bear here!" >> .alerts
    echo "There is a large boulder here." >> .alerts
    echo "There is a shiny brass key here." >> .alerts
    echo "There is a shovel here." >> .alerts
    echo "There is an emerald bracelet here." >> .alerts
    echo "There is some food here." >> .alerts

    echo "It looks like a grizzly to me." >> bear

    echo "All of the bins are empty.  Looking closely you can see that there" >> bin
    echo "are names written at the bottom of each bin, but most of them are" >> bin
    echo "faded away so that you cannot read them.  You can only make out three" >> bin
    echo "names:" >> bin
    echo "                   Jeffrey Collier" >> bin
    echo "                   Robert Toukmond" >> bin
    echo "                   Thomas Stock" >> bin
    cp bin bins

    echo "The CPU board has a VAX chip on it.  It seems to have" >> cpu
    echo "2 Megabytes of RAM onboard." >> cpu
    cp cpu board
    cp cpu card
    
    echo "It is just a boulder.  It cannot be moved." >> boulder
    
    echo "I see nothing special about that." >> vax
    cp vax bracelet
    cp vax cabinet
    cp vax coconut
    cp vax coconuts
    cp vax computer
    cp vax emerald
    cp vax key


    echo "I don't know what that is." >> flashing
    cp flashing steady


    echo "It looks like some kind of meat.  Smells pretty bad." >> food

    echo "lamp" >> lamp

    echo "They are palm trees with a bountiful supply of coconuts in them." >> palm
    cp palm tree
    cp palm trees

    echo "It is a normal shovel with a price tag attached that says \$19.99." >> shovel
    cd ../
    # objects dir done

    # start 
    cd start
    echo "Dead end" >> .d
    echo "You are at a dead end of a dirt road.  The road goes to the east." >> .d
    echo "In the distance you can see that it will eventually fork off.  The" >> .d
    echo "trees here are very tall royal palms, and they are spaced equidistant" >> .d
    echo "from each other." >> .d

    touch '9'
    mkdir e

    echo "coconut" >> coconut
    echo "coconuts" >> coconuts
    echo "palm" >> palm
    echo "shovel" >> shovel
    echo "tree" >> tree
    echo "trees" >> trees

    # start/e
    cd e
    echo "E/W Dirt road" >> .d
    echo "You are on the continuation of a dirt road.  There are more trees on" >> .d
    echo "both sides of you.  The road continues to the east and west." >> .d

    ln -s .. w
    cp ../???* .    # copy previous directory all ???* to here, except for 'shovel'
    rm shovel
    echo "boulder" >> boulder
    touch '9'
    mkdir e


    # start/e/e
    cd e
    echo "Fork" >> .d
    echo "You are at a fork of two passages, one to the northeast, and one to the" >> .d
    echo "southeast.  The ground here seems very soft. You can also go back west." >> .d

    echo "board" >> .board
    cp .board .card
    cp .card .cpu

    touch '9'
    mkdir ne
    mkdir se
    ln -s .. w

    # start/e/e/se
    cd se
    echo "food" >> food
    echo "SE/NW road" >> .d
    echo "You are on a southeast/northwest road." >> .d
    touch '9'
    mkdir se
    ln -s .. nw

    # start/e/e/se/se
    cd se
    echo "Bear hangout" >> .d
    echo "You are standing at the end of a road.  A passage leads back to the" >> .d
    echo "northwest." >> .d

    echo "bear" >> bear
    echo "key" >> .key
    mkdir sw
    ln -s .. nw

    # start/e/e/se/se/sw
    cd sw
    echo "Hidden area" >> .d
    echo "bracelet" >> bracelet
    cp bracelet emerald
    ln -s .. ne
    touch '9'
    
    # start/e/e/ne
    cd ../../../ne
    echo "NE/SW road" >> .d
    echo "You are on a northeast/southwest road." >> .d
    touch '9'
    mkdir ne
    ln -s .. sw

    # start/e/e/ne/ne
    cd ne
    echo "Building front" >> .d
    echo "You are at the end of the road.  There is a building in front of you" >> .d
    echo "to the northeast, and the road leads back to the southwest." >> .d
    touch '9'
    mkdir ne
    ln -s .. sw 

    # start/e/e/ne/ne/ne
    # this ne state: drw-------+
    cd ne
    echo "Old Building hallway" >> .d
    echo "You are in the hallway of an old building.  There are rooms to the east" >> .d
    echo "and west, and doors leading out to the north and south." >> .d
    touch '1'
    mkdir e
    mkdir n # this cannot go
    chmod 600 n
    ln -s .. s
    mkdir w

    # start/e/e/ne/ne/ne/e
    cd e
    echo "Mailroom" >> .d
    echo "You are in a mailroom.  There are many bins where the mail is usually" >> .d
    echo "kept.  The exit is to the west." >> .d
    touch '9'
    echo "bin" >> bin
    echo "bins" >> bins

    # start/e/e/ne/ne/ne/w
    cd ../w
    touch '9'
    ln -s .. e
    echo "Computer room" >> .d
    echo "You are in a computer room.  It seems like most of the equipment has" >> .d
    echo "been removed.  There is a VAX 11/780 in front of you, however, with" >> .d
    echo "one of the cabinets wide open.  A sign on the front of the machine" >> .d
    echo "says: This VAX is named ‘pokey’.  To type on the console, use the" >> .d
    echo "\‘type\’ command.  The exit is to the east." >> .d
    echo "computer" >> computer
    echo "cabinet" >> cabinet
    echo "vax" >> vax
    
    echo "steady" >> steady
    echo "flashing" >> .flashing

    # start/e/e/ne/ne/ne/n
    # this is empty

    # bach to start/e/e/ne/ne/
    cd ../../
    chmod 600 ne/

    echo "done!"
}



echo "This script will auto generate full directories about this homework"
echo "Please go to the dir. you want to generate!"
echo 
echo "Are you sure you are in the directory?[Y/n] "
read yes_i_do

if [[ "${yes_i_do}" == "Y" || "${yes_i_do}" == "y" ]]; then
    run
else
    echo "Exit!"
fi
