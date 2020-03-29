# mybashtweaks
bash tweaking is an art they say, yes it is. 

---

We all know that Linux is open-source right, one day I was exploring random directories, suddenly I opened some file which was all like `They are speaking the language of the gods` meme, it was `~/.bashrc`.  
So, I thought can I edit it ? , and here I am.  


Since we all work everyday in Linux, some aliases/snippets could be useful.  

An `alias` means as the name suggests, we call something instead of something else.  
A `snippet` is a piece of code which behaves in the same way we define it.  

# Contents : 

- [general purpose aliases](#general_purpose)
- [git cli aliases](#git_cli_aliases)
- [programming snippets](#programming_snippets)
- [Competitve Programming snippets](#)

Some of my useful `aliases and snippets `  :  

### general_purpose

```shell
#clear screen in terminal
alias c='clear
```
```shell
#change directory aliases
alias home='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
```

```shell
#go instead of cd
alias go="cd"
```

```shell
# find a file in a directory
alias f="find . | grep "
```

```shell
#system update
alias up="sudo apt-get update"
```

```shell
#shoutdown aliases
alias sn="sudo shutdown now"
alias ss="sudo shutdown -r now"
alias sf="sudo shutdown -r -n now"
```

```shell
#update ubuntu
alias up="sudo apt-get update"
```

```shell
# Create a dir and go to the directory
mkdirgo ()
{
	mkdir -p $1
	cd $1
}
```

```shell
# Move a dir and go to the directory
mvgo ()
{
	if [ -d "$2" ];then
		mv $1 $2 && cd $2
	else
		mv $1 $2
	fi
}
```

```shell
# Copy file with a progress bar
copy ()
{
	set -e
	strace -q -ewrite cp -- "${1}" "${2}" 2>&1 \
	| awk '{
	count += $NF
	if (count % 10 == 0) {
		percent = count / total_size * 100
		printf "%3d%% [", percent
		for (i=0;i<=percent;i++)
			printf "="
			printf ">"
			for (i=percent;i<100;i++)
				printf " "
				printf "]\r"
			}
		}
	END { print "" }' total_size=$(stat -c '%s' "${1}") count=0
}
```
```shell

# IP address lookup
alias whatismyip="whatsmyip"
function whatsmyip ()
{
	# Dumps a list of all IP addresses for every device
	# /sbin/ifconfig |grep -B1 "inet addr" |awk '{ if ( $1 == "inet" ) { print $2 } else if ( $2 == "Link" ) { printf "%s:" ,$1 } }' |awk -F: '{ print $1 ": " $3 }';

	# Internal IP Lookup
	echo -n "Internal IP: " ; /sbin/ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}'

	# External IP Lookup
	echo -n "External IP: " ; wget http://smart-ip.net/myip -O - -q
}

```
### git_cli_aliases

```shell
#git commands
alias s="git status"
alias p="git push"
alias pu="git pull"
alias add="git add ."
alias m="git merge"
alias commit="git commit"
```

### programming_snippets

```shell
#run cpp-file
cpp-run() {
    echo "Compiling file..."
    g++ -o "$1" "$1.cpp"
    echo "Compiled! "
    ./"$1"
}
```
```shell
#run c-file
c-run() {
    echo "Compiling file..."
    gcc -o "$1" "$1.c"
    echo "Compiled! Enter input :D"
    ./"$1"
}
```
```shell
#run py-file
py-run() {
    echo "Compiling file ..."
    python ./"$1.py"
}
```

*the above programming snippets only run when the program takes no input from the user*
