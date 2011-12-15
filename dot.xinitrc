DEFAULT_SESSION='awesome'

case $1 in
awesome)
    exec awesome;;
*)
    exec $DEFAULT_SESSION;;
esac
