rm -f ~/X ~/O ~/I ~/A
ln -s /dev/null ~/X
ln -s ~/PA2/inventory ~/I
ln -s ~/PA2/objects ~/O
ln -s ~/PA2/obj ~/A
alias nogo='echo You cannot go that way.'
alias nokey='echo You do not have a key that can open this door.'
alias quit='echo You scored 0 out of a possible 90 points.;exit'
alias l='mv 1 9;see'
alias drop='~/drop.sh'
alias see='head -n _1_; mv _2_; itemAlerts; echo -n'
alias itemAlerts='(ls _1_ | __x__ | _2_ ~/O/.alerts) 2> ~/X'

# Line 14: Leave this line blank

