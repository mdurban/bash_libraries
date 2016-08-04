#!/usr/bin/env bash

PI=$(echo "scale=10; 4*a(1)" | bc -l)

# $(add 1 2)
function add {
    echo $(( $1 + $2 ))
}

# $(add_all 1 2 3 4)
function add_all {
    sum=0
    for num in "$@"
    do
        sum=$(( sum + num ))
    done
    echo $sum
}

# $(subtract 4 1)
function subtract {
    echo $(( $1 - $2 ))
}

# $(multiply 5 2)
function multiply {
    echo $(( $1 * $2 ))
}

# $(multiply_all 1 2 3 4)
function multiply_all {
    total=1
    for num in "$@"
    do
        total=$(( total * num ))
    done
    echo $total
}

# $(divide 10 2)
function divide {
    echo $(( $1 / $2 ))
}

# $(factorial 4)
function factorial {
    if (( $1 < 2 ))
    then
        echo 1
    else
        echo $(( $1 * $(factorial $(( $1 - 1 )) )))
    fi
}

# $(squared 7)
function squared {
    echo $(( $1 * $1 ))
}

# $(square_root 9)
function square_root {
    echo "sqrt($1)" | bc
}

# $(power 2 3)
function power {
    echo $(( $1 ** $2 ))
}

# $(length 8732)
function length {
    echo "length($1)" | bc
}

