
#!/bin/bash
# This first line tells system It's a BASH Script.
# /bin/bash = Shell path to execute

# Change hostname permanently
# hostname set-hostname --static "something"

# Hash character - " # "
# -----------------------------------------
# It denotes comments in scripts that can describe the script
#                    or some warning or how to use parameters.
# It tells machine how to interpret the shell that we have written.

echo "Hello World!"
# echo literally prints whatever is passed to it.

# ON Running you will get a bash error : Permission denied.
# To see permissions for the file typein command > ls -la
# It gives a long listing of files in the directory showing files,directories & links.
# It shows permissions , owner , Group timestamp , filename.
# To execute our script file, we need to set permisions of execution to it.

# NOw 4 or r = Read, 2 or w = Write, 1 or x = Execute.
# So, File with permission number set to 4 or r = ReadOnly & set to 6 or rw = Read & Write
#                               & set to 7 or rwx = Read + Write + Execute.
# Now Permissions are given as a 3 digit number XYZ, where
# X = Permissions of Owner (who created the file)     - User   denoted by u
# Y = Permissions of Group (to which owner belongs)   - Group  denoted by g
# Z = Permissions of Other (Everyone else)            - Others denoted by o
#                                                     - All    denoted by a

# Changing Permissions Absolute (Numeric) way
# ------------------------------------------------------------------------------------------------------
# > chmod 777 script.sh       ----  Gives all permissions to everyone on file script.sh
# > chmod 555 script.sh       ----  Everyone can Read & Execute but can't write to file script.sh
# > chmod 700 script.sh       ----  Only Owner/User can do anything with file. Groups & Others have no PERMS.
# > chmod 444 script.sh       ----  Read-only permission to everyone
# > chmod 764 script.sh       ----  User = r+w+x ; Group = r+w ; Others = r ;
# > chmod 110 script.sh       ----  User & Gropu members can execute only. Others can't.

# Changing Permissions Symbolic way
# ------------------------------------------------------------------------------------------------------
# > chmod u=rwx script.sh        ----  Gives all permissions to Owner on file script.sh
# > chmod g-x   script.sh        ----  Remove execute permissions from group members on file script.sh
# > chmod o+r   script.sh        ----  Make script.sh file to be Readonly for Others.
# > chmod a+rx  script.sh        ----  Everyone can Read & Execute but can't write to file script.sh
# > chmod u+rwx,g+rw,o+r script.sh --  Similar to > chmod 764 script.sh

# When done with changing permissions to execute the file script.sh typein
#
# > ./script.sh

