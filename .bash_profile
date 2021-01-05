# Colors from http://wiki.archlinux.org/index.php/Color_Bash_Prompt
# misc
NO_COLOR='\e[0m' #disable any colors
# regular colors
BLACK='\e[0;30m'
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
BLUE='\e[0;34m'
MAGENTA='\e[0;35m'
CYAN='\e[0;36m'
WHITE='\e[0;37m'
# emphasized (bolded) colors
EBLACK='\e[1;30m'
ERED='\e[1;31m'
EGREEN='\e[1;32m'
EYELLOW='\e[1;33m'
EBLUE='\e[1;34m'
EMAGENTA='\e[1;35m'
ECYAN='\e[1;36m'
EWHITE='\e[1;37m'
# underlined colors
UBLACK='\e[4;30m'
URED='\e[4;31m'
UGREEN='\e[4;32m'
UYELLOW='\e[4;33m'
UBLUE='\e[4;34m'
UMAGENTA='\e[4;35m'
UCYAN='\e[4;36m'
UWHITE='\e[4;37m'
# background colors
BBLACK='\e[40m'
BRED='\e[41m'
BGREEN='\e[42m'
BYELLOW='\e[43m'
BBLUE='\e[44m'
BMAGENTA='\e[45m'
BCYAN='\e[46m'
BWHITE='\e[47m'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# GIT
alias gd="git diff --word-diff"
alias cm="git cm"
#alias ca="git commit --amend"
alias cob="git cob"
alias ra="git ra"
alias br="git branch"
alias st="git status -sb"
alias g="st; echo ''; ra; echo '';"
alias done_today='GIT_COMMITTER_DATE="`date`" git commit --amend --date "`date`"'
alias gitx='open -a GitX .'
alias ll='ls -la'
alias be='bundle exec'
alias submodinit="git submodule update --init --recursive"
alias subcheckmas="git submodule foreach --recursive git checkout master"
alias submodpull="git submodule foreach --recursive git pull"
alias avail-k8s="kubectl config get-contexts"
alias use-sbp="kubectl config use-context insert-context-name-here"
alias gitpush-t="git push | git push origin --tags"
alias sbp-pf="kubectl port-forward -n kubedb svc/pg-sqlproxy-gcloud-sqlproxy 1111:5432"
alias ts-pf="kubectl -n kubedb port-forward svc/hosted-timescale-proxy 6543:6543"
alias evicted-sbp="kubectl get pods -n sbp | grep Evicted | awk '{print $1}' | xargs kubectl delete pod -n sbp"
