BEGIN {
    printf "Enter the student's id "
    getline mark < "-"
}

$1 == mark {
    print
}