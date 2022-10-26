cd
pwdR=$(pwd)
help=false


echo '# Prompt Desining.' > .zshrc
echo 'echo "____ __    _______ __    ___ _  @ddaniboy"'>> .zshrc
echo 'echo "|    \ \   |  ___  \ \   | | |    "'>> .zshrc
echo 'echo "|    / /   |  || \  | |  | | |    "'>> .zshrc
echo 'echo "| |\ \ \   |  ||_/  | |  | |_|__ _"'>> .zshrc
echo 'echo "|_||\_\_\  |_______/_/   |______|_|💻RaG Doll"'>> .zshrc
echo 'echo ""' >> .zshrc
echo 'echo "help Command: helpRDL"' >> .zshrc
echo 'echo ""' >> .zshrc
echo ''>> .zshrc

echo 'PROMPT="[%F{red}%n%F{reset}](%F{gree}%~%F{reset})🦊> "'>> .zshrc
echo ''>> .zshrc

helpcommands=""

case "$1" in
  '-h'|'--help')
    echo ''
    echo '@ddaniboy'
    echo '[-avd | --AndroidVirtualDevice]> create options that interact with android studio for linux and mac'
    echo '[ -h  |         --help        ]> displays available commands.'
    echo ''
    help=true
    exit 1
    ;;

  '-avd'|'--AndroidVirtualDevice')
    echo '#avd Commands' >> .zshrc
    echo 'UserPath='$pwdR >> .zshrc
    echo ''
    echo 'alias mobileTools="cd $UserPath/Library/Android/sdk/tools"' >> .zshrc
    echo 'alias runavd=""$UserPath/Library/Android/sdk/tools/emulator""' >> .zshrc
    echo 'alias listavds="$UserPath/Library/Android/sdk/tools/emulator -list-avds"' >> .zshrc
    helpcommands='\"mobileTools: directs you to the adv tool directory.\\nrunavd:      runs the specified ADV.\\nlistadvs:    list the advs that exist.\"'
    shift
    continue
    ;;

esac
echo ''>> .zshrc
echo '#help command'>> .zshrc
echo ''>> .zshrc

echo 'alias helpRDL="echo '$helpcommands'"' >> .zshrc

if [ $help != true ]; then
  echo '[!]WARNING:: Sometimes for all the resources of the template to be loaded I need to close and open the terminal!'
  source .zshrc
fi
