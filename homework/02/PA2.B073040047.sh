rm -f ~/X ~/O ~/I ~/A
ln -s /dev/null ~/X
ln -s ~/PA2/inventory ~/I
ln -s ~/PA2/objects ~/O
ln -s ~/PA2/obj ~/A
alias nogo='echo You cannot go that way.'
alias nokey='echo You do not have a key that can open this door.'
alias quit='echo You scored 0 out of a possible 90 points.;exit'
alias l='mv 1 9 &> ~/X;see'
alias drop='~/drop.sh'
alias see='head -n `(cat 1 2>~/X && echo 1) || (cat 9 2>~/X && echo 9)` ./.d; mv 9 1 2>~/X; itemAlerts; echo -n'
alias itemAlerts='(ls ???* | cat -n | tr -d " " | tr "[:digit:]" "e" | tr "\t" ":" | cat -n | tr "[:digit:]" "-" | tr -d "\t" | tr -d " " | tr ":" " " | xargs fgrep ~/O/.alerts) 2> ~/X'


alias nw='cd `pwd -P`/nw && see || nogo'
alias s='cd `pwd -P`/s && see || nogo'
alias w='cd `pwd -P`/w && see || nogo'
alias sw='cd `pwd -P`/sw && see || nogo'
alias e='cd `pwd -P`/e && see || nogo'
alias se='cd `pwd -P`/se && see || nogo'
alias ne='cd `pwd -P`/ne && see || nokey' 
alias n='cd `pwd -P`/n && see || nokey'

alias i='echo You currently have:;(cd ~/I; ls ???* | cat -n | tr -d " " | tr "[:digit:]" "e" | tr "\t" ":" | cat -n | tr "[:digit:]" "-" | tr -d "\t" | tr -d " " | tr ":" " " | xargs fgrep .messages) 2> ~/X' # Where is the .message?
alias x='(cat | xargs echo ~/O | tr " " "/" | xargs cat) <'
alias get='(echo > ~/A/`cat` && ls ~/A/*[acklov][elmopr][dlptuy] &> ~/X && mv `ls ~/A| xargs bracelet` ~/I && echo Taken. || echo "You cannot get that.";ls ~/A/bracelet &> ~/X && mv ~/A/bracelet emerald ~/I &> ~/X;ls ~/A/board &> ~/X && mv card ~/I &> ~/X && mv cpu ~/I &> ~/X && mv ~/A/board ~/I &> ~/X;ls ~/A/key &> ~/X && chmod +x ~/PA2/start/e/e/ne/ne/ne; rm -f ~/A/* &> ~/X) <'
alias dig='(ls ~/I/shovel 2>~/X || echo "You have nothing with whitch to dig.") && (ls cpu && echo "I think you found something." && rename "s/^.//" .[a-z]* )2>~/X'

cd; PS1='>'; chmod +x ~/PA2/start/e/e/ne/ne/ne; chmod +x ~/PA2/start/e/e/ne/ne/ne/n; rm -rf ~/PA2/*; tar -xf ~/PA1.tar; cd ~/PA2/start; l
