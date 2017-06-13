#!/usr/bin/awk -f
BEGIN{
    FS=";"
}
{
    greenindex = (1-$2)*0.5+(1-$3)*0.3+(1-$4)*0.2
    if (greenindex < 0.0) 
        greenindex = 0.0
    if (greenindex > 1.0) 
        greenindex = 1.0
    printf "%ld,%f\n", $1, greenindex
}
