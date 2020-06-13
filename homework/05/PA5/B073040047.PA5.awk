#!/usr/bin/awk
function notHaveThat(){
	print "You don't have that."
	exit
}

function notSee(){
	print "I don't see that here."
	exit
}

function notInDest(){
	print "That indirect object is not here."
	exit
}


END{
	isNotSeeDest = 0;

	for( i = 0; i< NF; i++)
		I[$i] = $i

	getline < "F";
	#print I, $0
	
	
	if ((/^d .*/ || /^e .*/ || /^s .*/) && !($2 in I)){
		if($1 != "s" || $2 != "tree"){
			notHaveThat()
		}
	}
	if (/@/){
		if($2 in I){
			sub("@", "")
		}
		else{
			notSee()
		}
		isNotSeeDest = 1
	}

	if (/^p .*/){
		if (!($2 in I)){
			notHaveThat()
		}
		else if (isNotSeeDest == 1 && !($4 in I)){
			notInDest()
		}
	}
	print
}

