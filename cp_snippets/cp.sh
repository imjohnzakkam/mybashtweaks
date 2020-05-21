#compile cpp-file
cc() {
    g++ "$1.cpp"
    echo "Compiled! "
}
#execute cpp-file
alias o="./a.out"


cf() {
# you can change the path
mkdir ~/Desktop/Codeforces/$1
cd ~/Desktop/Codeforces/$1
loop=0 
var=( {a..z} )
while [ $loop -lt $2 ] 
do
	# test.cpp is my template file
	cp ~/Desktop/test.cpp ~/Desktop/Codeforces/$1 
	mv test.cpp ${var[a]}.cpp
	loop=`expr $loop + 1` 
done 
}
```
```shell
#similarly for codechef
cc() {
#you can change the path
mkdir ~/Desktop/Codechef/$1
cd ~/Desktop/Codechef/$1
loop=0 
var=( {a..z} )
while [ $loop -lt $2 ] 
do
	# test.cpp is my template file
	cp ~/Desktop/test.cpp ~/Desktop/Codeforces/$1 
	mv test.cpp ${var[a]}.cpp
	loop=`expr $loop + 1` 
done 
}
```
