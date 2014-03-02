alias his='history'

function hs
{
    history | grep $*
}

alias hsi='hs -i'
