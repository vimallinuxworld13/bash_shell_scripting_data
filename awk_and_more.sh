getopt -l "name:,version::,verbose" -a -o "n:v::V" -- -name=vimal -version=5.5 -verbose


who | awk '{print $1}'

who | awk '{print $1,$4}'
 ps | awk '{print $NF}'


date | awk 'OFS="/" {print$2,$3,$6}'

ps | awk 'BEGIN {print "my process list"} {print $1}'

who | awk 'BEGIN {print "Active Sessions"} {print $1,$4}'

awk -F: '{print $1,$6}' /etc/passwd

awk -F: '$3 >= 1000 {print $1,$6}' /etc/passwd

awk -F: 'BEGIN {print "User Accounts\n-------------"} $3 >= 1000 {print $1,$6}' /etc/passwd


awk '/UUID/ {print $0}' /etc/fstab

awk 'BEGIN { print sqrt(625)}'

awk 'BEGIN { print sqrt((2+3)*5)}'

