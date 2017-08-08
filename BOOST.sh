echo '


--------------------------------------------|
 ____   ___   ___  ____ _____ _____ ____    |
| __ ) / _ \ / _ \/ ___|_   _| ____|  _ \   |
|  _ \| | | | | | \___ \ | | |  _| | |_) |  |
| |_) | |_| | |_| |___) || | | |___|  _ <   |
|____/ \___/ \___/|____/ |_| |_____|_| \_\  |
--------------------------------------------|
By - @Mahmoud0x00

'

read -p '[*] Enter the list : ' Targets
if [[ -z $Targets ]]; then
  echo [*] Enter the List of the Targets Please!
  exit 0
fi

if [[ -f $Targets ]]; then

  echo '[*] well the directory is exist'

else

  echo '[*] enter valid directory please!!'
  exit 0
fi
read -p '[*] Enter the out put folder : ' output
if [[ -z $output ]]; then
  echo [*] Enter the List of the directory of the output Please!
  exit 0
fi
if [[ -d $output ]]; then

  echo '[*] well the directory is exist'

else

  echo '[*] enter valid directory please!!'
  exit 0
fi
read -p '[*] Enter the dir of dirsearch : ' dirsearch
if [[ -z $dirsearch ]]; then
  echo [*] Enter the List the directory of dirsearch Please!
  exit 0
fi
if [[ -d $dirsearch ]]; then

  echo '[*] well the directory is exist'

else

  echo '[*] enter valid directory please!!'
  exit 0
fi
read -p '[*] Enter the Extenstions : ' Ex
if [[ -z $Ex ]]; then
  echo [*] Enter the Extenstions Please!
  exit 0
fi

echo '[*] well we will scan them Now'

for target in $(cat $Targets); do
  cd $dirsearch
  python3 dirsearch.py -u $target -e $Ex --plain-text-report=$output/$target.txt
done > /dev/null

echo [*] Well we have created the files to you in $output
