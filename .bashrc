
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

PS1='\u:~$ '

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export QT_QPA_PLATFORM=x11
export PATH=/opt/maven/bin:$PATH
export MAVEN_HOME=/home/adeshmalunjkar/Apps/apache-maven-3.9.9
# Change PostgreSQL color settings
export LESS_TERMCAP_mb=$(tput bold; tput setaf 4)   # Dark blue for columns
export LESS_TERMCAP_md=$(tput bold; tput setaf 4)   # Dark blue for headers
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_se=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 1)   # Red for search highlights
export LESS_TERMCAP_ue=$(tput sgr0)
export LESS_TERMCAP_us=$(tput bold; tput setaf 6)   # Cyan for underlined text


alias db='pgcli -h localhost -d postgres -u postgres'
alias devdb='pgcli -h upgrad-dev-postgres-payment.cscyttgt1cwf.us-east-1.rds.amazonaws.com -d one_program_service -u adeshmalunjkar'
alias stagingdb='pgcli -h upgrad-staging-postgres-payment.cscyttgt1cwf.us-east-1.rds.amazonaws.com -d one_oms_db -u adeshmalunjkar'
alias proddb='pgcli -h upgrad-prod-postgres-payment-replica.ci6igqqqwfeo.ap-south-1.rds.amazonaws.com -d one_program_service -u adeshmalunjkar'

alias devpwd='echo YzI3MDBiNmNl'
alias stagingpwd='echo YWI5OWVlNmM2'
alias prodpwd='echo YjhjZGRjNzNh'

alias gsummary='echo 🔍 Summary: && git status && echo 📚 Log: && git log -3 --oneline'

alias clip='xclip -selection clipboard && echo "✅ Copied to clipboard!"'

alias cls='clear'
alias gp='git pull'


#export PS1="📁\w \[\e[0m\]\[\e[1;33m\]➜ \[\e[0m\]"


#PS1="💻 adesh 📁\w⚙️  ➜"
PS1="➜ "
#PS1="🚀 ➜ \[\e[0m\]"
parse_git_branch() {
  git branch 2>/dev/null | grep '\*' | sed 's/\* \(.*\)/[\1]/'
}
#PS1="🚀 \$(parse_git_branch)➜\[\e[0m\] "

alias terminal='gnome-terminal --working-directory="$(pwd)"'
alias cmd='gnome-terminal --working-directory="$(pwd)"'
alias update='sudo apt update && sudo apt upgrade'
alias joke='curl https://icanhazdadjoke.com/'
alias todo='vim ~/todo.txt'
alias java-8='sdk use java 8.0.452-amzn'
alias java-11='sdk use java 11.0.25-amzn'
alias java-21='sdk use java 21.0.5-oracle'
alias java-17='sdk use java  17.0.12-oracle'
alias java-24='sdk use java  24-oracle'
alias javav='java --version'

vpn() {
  ip=$(curl -s ifconfig.me)
  case "$ip" in
    35.174.123.192)
      echo "dev"
      ;;
    3.7.162.196)
      echo "prod"
      ;;
    54.204.238.147)
      echo "staging"
      ;;
    *)
      echo "Not connected to VPM IP : $ip"
      ;;
  esac
}
# Set cursor to vertical bar (ibeam)
echo -ne '\e[5 q'

# On exit, reset cursor to block
trap "echo -ne '\e[2 q'" EXIT
