alias gateway="ssh aron.neagu@10.249.95.10"
alias ll="ls -lah"
alias l="ls -lah"
alias t="task"
alias in="task add +in"
alias g="ssh wowcher"
#requires httpie
https='http --default-scheme=https'
#alias g='ttyrec -e "ssh wowcher" ttyrecord-$(date +%Y%m%dT%H%MZ)'
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

function mountAndroid { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; }
function umountAndroid() { hdiutil detach /Volumes/android; }

##
# Your previous /Users/aron.neagu/.bash_profile file was backed up as /Users/aron.neagu/.bash_profile.macports-saved_2017-04-19_at_00:18:41
##

# MacPorts Installer addition on 2017-04-19_at_00:18:41: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# set the number of open files to be 1024
ulimit -S -n 1024

PATH=~/bin:$PATH
source ~/.bash-powerline.sh
