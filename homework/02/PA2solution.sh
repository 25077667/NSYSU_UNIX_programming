rm -f ~/X ~/O ~/I ~/A
ln -s /dev/null ~/X
ln -s ~/dunnet2020/inventory ~/I
ln -s ~/dunnet2020/objects ~/O
ln -s ~/dunnet2020/obj ~/A
alias nogo='echo You cannot go that way.'
alias nokey='echo You do not have a key that can open this door.'
alias quit='echo You have scored 0 out of a possible 90 points.;exit'
alias l='mv 1 9 &> ~/X;see'
alias drop='~/drop.sh'
alias see='head -n `ls [0-9]` .d*;mv 9 1 &> ~/X;(ls ???* | itemAlerts)2>~/X;ls -d >~/X'
alias itemAlerts='cat -n | tr -d "\t1-8" | cat -n | tr "\t1-8" "e-" | xargs fgrep ~/O/.alerts'


alias e='cd `pwd -P`/e &> ~/X && (see) || nogo'
alias s='cd `pwd -P`/s &> ~/X && (see) || nogo'
alias w='cd `pwd -P`/w &> ~/X && (see) || nogo'
alias se='cd `pwd -P`/se &>~/X &&(see) || nogo'
alias nw='cd `pwd -P`/nw &>~/X &&(see) || nogo'
alias sw='cd `pwd -P`/sw &>~/X &&(see) || nogo'
alias n='cd `pwd -P`/n &> ~/X  && (see)|| (ls -d n &> ~/X &&nokey || nogo)'
alias ne='cd `pwd -P`/ne &>~/X && (see)|| (ls -d ne &> ~/X && nokey || nogo)'

alias i='echo You currently have:;(cd ~/I; ls * | cat -n | tr -d "\t1-8" | cat -n | tr "\t1-8" "e-" | xargs fgrep .messages) 2> ~/X'
alias x='(cat | xargs echo ~/O | tr " " "/" | xargs cat) <'
alias get='(echo > ~/A/`cat` && ls ~/A/*[^ne][^d][tduypl] &> ~/X && mv `ls ~/A|xargs basename` ~/I && echo Taken || echo "You cannot get that.";ls ~/A/bracelet &> ~/X && mv emerald ~/I;ls ~/A/board &> ~/X && mv cpu card ~/I;ls ~/A/key &> ~/X && chmod 700 ~/dunnet2020/start/e/e/ne/ne/ne; rm -f ~/A/*) <'
alias dig='ls ~/I/s* &> ~/X && ( ( mv .card card && mv .board board && mv .cpu cpu ) &> ~/X && echo "I think you found something." || echo "Digging here reveals nothing." ) || echo "You have nothing with which to dig."'

cd; PS1=">";chmod 700 ~/dunnet2020/start/e/e/ne/ne/ne/n; chmod 700 ~/dunnet2020/start/e/e/ne/ne/ne; rm -r dunnet2020; tar xvf dunnet2020.tar > ~/X;cd ~/dunnet2020/start;l
