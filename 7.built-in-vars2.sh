
#!/bin/bash
echo
# $GROUPS holds the Group Number for the current User
echo $GROUPS

echo
echo "\$GROUPS Array - "
# Actually $GROUPS is an Array that stores all the Groups numbers of which current User is a member.
echo ${GROUPS[0]}
echo ${GROUPS[1]}   # will be blank If current User is member with only 1 group.
echo ${GROUPS[2]}   # will be blank If courrent User is member with only 2 groups.

echo
# $HOME holds the current directory of User
# for non-root User, $HOME = /home/<username>
# for     root User, $HOME = /root
# /root is normally unaccessible by GUI and thus can be accessed by CLI or TUI
echo $HOME
echo ~      # ~ means $HOME

echo
# $HOSTNAME stores the system name or network node name assigned using hostname command.
echo $HOSTNAME
cat /etc/hostname  # hostname is stored in this file.

# To check If Environment variable is set or not, imply pass it to If condition.
if [ $HOSTNAME ]
then
    echo "\$HOSTNAME is set to $HOSTNAME"   # \ is escape character to denote echo $
fi

echo
# $HOSTTYPE is same as $MACHTYPE. Both prints information about hardware architecture.
echo $HOSTTYPE
echo $MACHTYPE

echo
# Shell use Internal Field Seprator (IFS) to recognize where Word boundary is.
# Default value is basically whitespace charcaters - space , tab or a newline
# IFS values can be changed. We can tell the shell where the word begins & where it ends.
# When the script exits, the IFS has again its default value (space, tab, newline). However,
# it is a good idea to store the default IFS in some variable (OLD_IFS for example) so that you can set IFS back to it.

firstname="james+jones+bond-kumar"
lastname="lebron-smith-james+amit"

# NOtE - It's IFS not $IFS .  

IFS=+           # IFS is set to + . Now Shell will take + as an Internal Field Separator
echo $firstname # So, + will not be printed rather wil be taken as a space.
echo $lastname
echo
IFS=-           # Now IFS is set to - .
echo $firstname # So, - will not be printed rather wil be taken as a space.
echo $lastname

echo
days1="MON::::::TUE::::WED::THUS"
days2="FRI:SAT:::SUN"

IFS=:
echo "$days1 $days2"

IFS=::
echo "$days1 $days2"

IFS=:::
echo "$days1 $days2"

echo
# $LINENO stores the line number of current line. Useful in Debugging
echo $LINENO

# $PWD stores current working directory path for the User
# $OLDPWD stores the last working deirectory in which user traversed before the current directory.
# If $OLDPWD is blank, It means it's first directory you are in. You haven't traversed any directories yet.
echo $PWD
echo $OLDPWD

echo
# $OSTYPE stores simply type of OS
echo $OSTYPE

echo
# $PIPESTATUS is an Array variable that stores the exit status of each pipe command.
# We need to get it as soon as pipe is used somewhere in the commands earlier.
# If you run some commands with pipe and then ran a long series of say 10-12 commands, It's completely useless.
echo ${PIPESTATUS[*]}
