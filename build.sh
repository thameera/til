#!/bin/bash

set -e

out_file="README.md"

[ -f $out_file ] && rm $out_file

function write {
    echo -e -n "$1" >> $out_file
}

function writeln {
    write "$1\n"
}

function writeSeparator {
    writeln "---"
    writeln
}

function uppercaseFirstLetter {
    if [[ $1 == 'iterm2' ]]; then
        # Hack for iTerm2
        echo -n "iTerm2"
    else
        echo -n "$(tr '[:lower:]' '[:upper:]' <<< ${1:0:1})${1:1}"
    fi
}

writeln "# TIL"
writeln
writeln "> Today I Learned"
writeln
writeln "A collection of concise write-ups on small things I learn day to day across a"
writeln "variety of languages and technologies. Idea stolen from"
writeln "[jbranchaud/til](https://github.com/jbranchaud/til)."
writeln

tip_count="$(for f in *; do [ -d ./"$f" ] && ls "$f" | wc -l; done | awk '{s+=$1} END {print s}'
)"
writeln "_$tip_count TILs and counting..._"
writeln

writeSeparator

writeln "### Categories"
writeln

for f in *; do
    # Skip if this is not a directory
    [ -d ./"$f" ] || continue

    write "* ["
    write $(uppercaseFirstLetter "$f")
    writeln "](#$f)"
done

writeln
writeSeparator

for dir in *; do
    [ -d ./"$dir" ] || continue

    write "### "
    writeln $(uppercaseFirstLetter "$dir")
    writeln

    for f in $dir/*; do
        write "- ["
        write "$(head -n 1 $f | sed -e 's/^# //' )"
        writeln "]($f)"
    done

    writeln
done
