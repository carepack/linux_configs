#!/bin/bash
#echo "please enter the password: ";
#read -s md5;
#hash="$(echo -n "$md5" | sha512sum | base64 -w 0 )";
#echo "$hash";

#!/bin/bash
echo -n "Enter your salt (won't be displayed): "
read -s SALT
echo -en "\n"
echo -n "Confirm: "
read -s SALT_CONFIRM
echo -en "\n"
if [ $SALT != $SALT_CONFIRM ]; then
        echo "Confirm did not match. Program ending."
        exit 1;
fi
echo -n "Your password is: "
PASSWORD=$(echo -n "$SALT$STRING" | sha512sum | base64 -w 0)
echo ${PASSWORD}
exit 0;
