test 1 -eq 2 && echo “true” || echo “false”

[ 1 -eq 2 ] && echo “true” || echo “false”

The test command supports the following string expressions.

-n <string>: String length is non-zero.
-z <string>: String length is zero.
<string>: String value is non-zero (quivalent to “-n <string>”).
<string_a>= <string_b>: Both string_a and string_b are equal.
<string_a> != <string_b>: The strings string_a and string_b aren’t equal.

[ -n “hello world” ] && echo “true” || echo “false”

[ “hello world” != “Hello World” ] && echo “true” || echo “false”

[ “hello world” = “Hello World” ] && echo “true” || echo “false”



There are more ways to compare integers.

<integer_a> -eq <integer_b>: Integer_a is equal to integer_b.
<integer_a> -ne <integer_b>: Integer_a is not equal to integer_b
<integer_a> -ge <integer_b>: Integer_a is greater than or equal to integer_b.
<integer_a> -gt <integer_b>: Integer_a is greater than integer_b.
<integer_a> -le <integer_b>: Integer_a is less than or equal to integer_b.
<integer_a> -lt <integer_b>: Integer_a is less than integer_b.

[ 5 -eq 10 ] && echo “true” || echo “false”



-e <file_a>: File_a exists.
-f <file_a>: File_a exists and a regular file.
-d <file_a>: File_a exists and is a directory.
-r <file_a>: File_a exists with read permissions.
-w <file_a>: File_a exists with write permissions.
-x <file_a>: File_a exists with execute permissions.
-s <file_a>: File_a exists and file size is greater than zero.
-O <file_a>: File_a exists and the owner is effective user ID.
-G <file_a>: File_a exists and the owner is effective group ID.
-h <file_a>: File_a exists and it’s a symbolic link.
-L <file_a>: File_a exists and it’s a symbolic link.
-b <file_a>: File_a exists. It’s a block-special file.
-c <file_a>: File_a exists. It’s a character-special file.
-S <file_a>: File_a exists. It’s a socket.

[ -x /usr/bin/bash ] && echo $?

#!/bin/bash
if [ $(whoami) = root ]; then
    echo “root”
else
    echo “not root”
fi


num=4; if (test $num -gt 5); then echo "yes"; else echo "no"; fi



Code in '{}' is executed in the current thread/process/environment and changes are preserved, to put it more succinctly, the code is run in the current scope.
Code in '()' is run inside a separate, child process of bash that is discarded after execution. This child process is often referred to as a sub-shell and can be thought of as a new, child-like scope.

As an example consider the following...

 ~ # { test_var=test ; }
 ~ # echo $test_var
 test
 ~ # ( test_var2=test2 )
 ~ # echo $test_var2

 ~ # 
 
 
echo {0..10}
prints out the numbers from 0 to 10. Using:


echo {10..0}
prints out the same numbers, but in reverse order. And,

echo {10..0..2}

https://www.linux.com/topic/desktop/all-about-curly-braces-bash/

i=image.jpg

convert $i ${i%jpg}png

https://devhints.io/bash




https://www.computerhope.com/unix/bash/test.htm

