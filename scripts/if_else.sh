# -e Shows zero if /path/to/file exists
#  -f exists and it's a file
#  -d exists and it's dir
#  -x exists and executable
#  -r exist and file is readable
#  -w exists and file is writable
#  -nt newer than 
a=hello
b=goodbye
[[ -e today.txt ]] ; echo $?
[[ -f today.txt ]] ; echo $?
[[ -d today.txt ]] ; echo $?
[[ -x today.txt ]] ; echo $?

# if value of $c is empty shows 0
[[ -z $c ]] ; echo $?

# -n is opposite to -z matches non empty string 
[[ -n $c ]] ; echo $?

# checks if smth is regular file like pdf, txt
[[ -f $c ]] ; echo $?
