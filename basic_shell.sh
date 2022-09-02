# method 1
foo="I like"
foo+=" Bash Scripting."
echo "$foo"

# method 2
foo="I like"
bar="Bash Scripting."
foobar="$foo $bar"
echo "$foobar"

# method 3
foo="Writ"
foo="${foo}ing Bash Scripting is fun."
echo "$foo"


# How To Set a Debug Mode
set -x
foo="Bash"
if [ $foo == "Bash" ]; then
  echo "$foo"
else
  echo "Not Bash"
fi


# set -e exits immediately if a command exits with a non-zero status.

echo "abcdefg" | cut -c1-3
echo "abcdefg" | cut -c2-4

# A parameter expansion performs substring extraction, ${s:off-set-index:length}:
s="abcdefg"
echo ${s:0:3}
echo ${s:1:3}
echo ${s:4:1}
# output
# abc
# bcd
# e


# In Bash 4+, you can use case modification operators.
fox=theQuickBrownFOX
# theQuickBrownFOX
echo ${fox}
# TheQuickBrownFOX, First char uppercase.
echo ${fox^}
# THEQUICKBROWNFOX, All chars uppercase.
echo ${fox^^}
# theQuickBrownFOX, First char lowercase.
echo ${fox,}
# thequickbrownfox, All chars lowercase.
echo ${fox,,}


set -x
echo -n "Can you say Hello in Japanese?"
read -r answer
answer=$(echo "$answer" | cut -c 1-1 | tr "[:lower:]" "[:upper:]")
if [ "$answer" = Y ]
then
    echo "Wow you are awesome."
else
    echo "Neither can I."
fi



first_upper() {
    echo "${1^}"
}
first_upper vimal



if [ $foo -ge $bar ]; then
  baz="Smile!"
else
  baz="Sleep!"
fi
# Bash doesn’t have a ternary operator

foo=3
bar=5
[ $foo -ge $bar ] && baz="$foo is greater than $bar" || baz="$foo is smaller than $bar"
echo $baz

foo=5
bar=3
[ $foo -ge $bar ] && baz="$foo is greater than $bar" || baz="$foo is smaller than $bar"
echo $baz



string="this length is 18."
str_len=${#string}
echo "$str_len"
array=(one two three)
arr_len=${#array[@]}  
echo "$arr_len"


unset var1 var2 var3
var1=some_value



# If baz is not set, evaluate expression as $DEFAULT.
DEFAULT=1
# foo=${baz-$DEFAULT}
# same
foo1=${baz=$DEFAULT}
echo "$foo1"

# If baz is not set or is empty, evaluate expression as  $DEFAULT.
DEFAULT=2
baz=""
# bar=${baz:-$DEFAULT}
# same
foo2=${baz:=$DEFAULT}
echo "$foo2"


# ${foo+$OTHER} and ${foo:+OTHER} evaluate as $OTHER if the foo is set, otherwise as a null string.

#!/usr/bin/env bash

baz2=3
foo3=${baz2+$OTHER}
echo "$foo3" # returns null string
# same
foo4=${baz2:+$OTHER}
echo "$foo4" # returns null string
OTHER=3
foo5=${baz2+$OTHER}
echo "$foo5"
# same
foo6=${baz2:+$OTHER}
echo "$foo6"


readonly MAX=10
echo $MAX
MAX=12 # this returns an error.
echo "$MAX"



readonly




x=/one/two/three/four/five.txt
# ${parameter%word} removes smallest suffix pattern.
echo ${x%.*}   # remove .txt
echo ${x%/*}   # remove the last, /five.txt. Find the directory path.
echo ${x%/*/*} # remove /four/five.txt

# ${parameter#word} removes smallest prefix pattern.
echo ${x#*/}       # removes /
echo ${x#*/*/}     # removes /one/
echo ${x#*/*/*/}   # removes /one/two/
echo ${x#*/*/*/*/} # removes /one/two/three/

y=one/two/three/four/five.txt
# ${parameter%%word} removes largest suffix pattern.
echo ${y%%/*} # one

# ${parameter##word} removes largest prefix pattern.
# find the file name
echo ${y##*/} # output five.txt



