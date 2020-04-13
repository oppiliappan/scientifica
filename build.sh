#! /usr/bin/env bash

export BNP="BitsNPicas.jar"

ff_filter() {
    fontforge -c 'open(argv[1]).generate(argv[2])' "$1" "$2"
}

ttf_filter() {
    # 1 - source file
    # 2 - destination file
    java -jar "$BNP" convertbitmap -f ttf -o "$2" "$1"
}

export_fonts() {
    for i in src/*; do
        local file_name=$(basename "${i%.*}")
        ttf_filter "$i" "build/ttf/$file_name.ttf"
        ff_filter "$i" "build/otb/$file_name.otb"
        ff_filter "$i" "build/bdf/$file_name.bdf"
    done
}

main() {
    rm -rf build
    mkdir -p build/{otb,ttf,bdf}
    export_fonts
}

main
