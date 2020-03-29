#run cpp-file
cpp-run() {
    echo "Compiling file..."
    g++ -o "$1" "$1.cpp"
    echo "Compiled! "
    ./"$1"
}

#run c-file
c-run() {
    echo "Compiling file..."
    gcc -o "$1" "$1.c"
    echo "Compiled!"
    ./"$1"
}

#run py-file
py-run() {
    echo "Compiling file ..."
    python ./"$1.py"
}
