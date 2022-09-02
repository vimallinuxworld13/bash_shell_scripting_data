#Sometimes a variable can be unset or set to null

echo "enter your name"
read name
name=${name:-Unknown}

#If a user enters blank, your $name will be set to Unknown

x=5
unset x
y=$x
echo $y

x=5
unset x
y=${x:-DefaultValue}
echo $y


name=${1:?"Error: parameter missing Name"}
age=${2:?"Error: parameter missing Age"}
# ./main joe
Error: parameter missing Age



