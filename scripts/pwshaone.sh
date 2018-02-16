#!/bin/bash
#echo "please enter the password: ";
#read -s md5;
#hash="$(echo -n "$md5" | sha512sum | base64 -w 0 )";
#echo "$hash";

#!/bin/bash
echo -n "Enter your salt (won't be displayed): "
read -s SALT
echo -en "\n"
echo -n "Your password is: "
PASSWORD=$(echo -n "$SALT$STRING" | sha512sum | base64 -w 0)
echo ${PASSWORD}
exit 0;
