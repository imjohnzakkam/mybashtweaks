#compile cpp-file
cc() {
    g++ "$1.cpp"
    echo "Compiled! "
}
#execute cpp-file
alias o="./a.out"
