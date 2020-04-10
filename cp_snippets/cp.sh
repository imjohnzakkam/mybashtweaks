#compile cpp-file
cc() {
    g++ "$1.cpp"
    echo "Compiled! "
}
#execute cpp-file
alias o="./a.out"


cf() {
#you can change the path
mkdir ~/Desktop/Codeforces/$1
cd ~/Desktop/Codeforces/$1
#test.cpp is my template file
cp ~/Desktop/test.cpp ~/Desktop/Codeforces/$1 
mv test.cpp a.cpp
cp ~/Desktop/test.cpp ~/Desktop/Codeforces/$1 
mv test.cpp b.cpp
cp ~/Desktop/test.cpp ~/Desktop/Codeforces/$1 
mv test.cpp c.cpp
cp ~/Desktop/test.cpp ~/Desktop/Codeforces/$1 
mv test.cpp d.cpp
cp ~/Desktop/test.cpp ~/Desktop/Codeforces/$1 
mv test.cpp e.cpp
}
```
```shell
#similarly for codechef
cc() {
#you can change the path
mkdir ~/Desktop/Codechef/$1
cd ~/Desktop/Codechef/$1
#test.cpp is my template file
cp ~/Desktop/test.cpp ~/Desktop/Codechef/$1 
mv test.cpp 1.cpp
cp ~/Desktop/test.cpp ~/Desktop/Codechef/$1 
mv test.cpp 2.cpp
cp ~/Desktop/test.cpp ~/Desktop/Codechef/$1 
mv test.cpp 3.cpp
cp ~/Desktop/test.cpp ~/Desktop/Codechef/$1 
mv test.cpp 4.cpp
cp ~/Desktop/test.cpp ~/Desktop/Codechef/$1 
mv test.cpp 5.cpp
}
```
