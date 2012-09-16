# Sleep
function off() {
    gnome-screensaver-command --lock && pmi action suspend
}

# Go up in directory tree, ex. up 3
function up() {
    local d=''
    limit=$1
    for ((i=1 ; i <= limit ; i++))
        do
        d=$d/..
    done
    d=$(echo $d | sed 's/^\///')
    if [ -z "$d" ]; then
        d=..
    fi
    cd $d
}

# Backup files
function bck() {
    cp $1 ${1}-`date +%Y%m%d%H%M`.backup ;
}

# Create a new directory and enter it
function mkcdr {
    mkdir -p -v $1
    cd $1
}

function f() {
    find . -name "$1"
}