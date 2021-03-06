export XTERM=256color
export http_proxy=proxy.vmware.com:3128
export P4CONFIG=.p4config
export PPWD=tgb.1234
export CPWD='ca$hc0w'

# for search
alias gr='grep -i -R'
alias gi='grep -i '
alias ag='ack-grep'
alias ai='ack-grep -i'

# for install
alias sui='sudo apt-get install '
alias suu='sudo apt-get update'
alias sug='sudo apt-get upgrade'
alias emc='emacs -nw'
alias emo='emacs -nw -q'
alias emg='emacs &'

alias ta='tmux attach -t'
alias tn='tmux new -s'

# alias for mount public file server
alias sanya='sudo mount -t cifs //10.117.47.199/yanchaozhang /sanya -o uid=qe,username=yanchaozhang,domain=crt,password=$PPWD,iocharset=utf8'
alias smb='sudo mount -t cifs //10.117.45.89/view /smb -o username=yanchao,domain=crt,password=$CPWD,iocharset=utf8,uid=qe'

# alias for pip install
alias pxi='sudo pip --proxy proxy.vmware.com:3128 install'
alias pxu='sudo pip --proxy proxy.vmware.com:3128 update'

alias dstat='dstat -cdmnpsy'

# for rdesktop
alias rd='rdesktop -u administrator -d crt -p $PPWD -g 1650x1080 -r disk:home=/home/qe '
alias xf='xfreerdp -u administrator -d crt -p $PPWD -g 1650x1080 --no-nla '

# for win2008
alias xfk8='xfreerdp  --no-nla -u administrator -d company.pri -p $PPWD -g 1650x1080 --plugin cliprdr --plugin rdpdr --data disk:T3500:"/home/qe" -- 10.117.44.166 &'
alias rdk8='rdesktop -u administrator -d company.pri -p $PPWD -g 1650x1080 -r disk:T3500=/home/qe -r clipboard:PRIMARYCLIPBOARD 10.117.44.166 & '

# for eclipse
alias jdt='/opt/eclipse_cl/java-juno/eclipse -clean -vm /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java &'
alias cdt='/opt/eclipse_cl/cpp-juno/eclipse -clean -vm /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java &'
alias esdk='/opt/eclipse_cl/eclipse/eclipse -clean -vm /usr/lib/jvm/java-7-oracle/bin/java &'

