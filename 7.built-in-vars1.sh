
#!/bin/bash

# Variables - 2 types.
# Local variables - inside a block or function OR Global variables - outside a block or function
# Environment Variables - Created whenever shell is started. Shell inherits these variables.
#                         When shell spawns other process, process will also inherit these variables.
#                         All ENV variables are set by the script must be exported using export command.
# We can configure ENV variables on the command-line.

# $BASH stores the path of BASH Binaries.
# $BASH_ENV stores location of surce when script is invoked.

# env command displays all the Environment Variables.

echo "$BASH - $BASH_ENV"

# $BASH_VERSION stores the version of BASH Shell
# $BASH_VERSINFO is an array of 6 elements that stores much more information about BASH
# $BASH_VERSINFO[0] = major version         $BASH_VERSINFO[1] = minor version
# $BASH_VERSINFO[2] = maximum patch level   $BASH_VERSINFO[3] = build version
# $BASH_VERSINFO[4] = release status        $BASH_VERSINFO[5] = architecture & Distribution

for n in {0..5}
do
    echo "BASH_VERSINFO[$n] = ${BASH_VERSINFO[$n]}"
done

echo $$   # $$ gives the process ID of Script

# $PATH stores the colon separated list of paths that holds the executable binaries.
# It does not holds the path of current working directory due to security concerns.
echo "The path to executable binaries are = $PATH"

# $CDPATH stores list of search paths (separated by colons) available to cd command
echo $CDPATH

# $EDITOR = default editor in which any file opens by default or script invokes.
echo "Default System Editor is $EDITOR"

# $UID = stores the User's ID (written in /etc/passwd ) for current User logged in as.
# It's a read-only variable and cannot be changed.
# Root User has ID = 0 by default in all linux systems.
# $EUID = stores the Effective User ID. Can be same as $UID but not necessary.

echo "Current User's ID = $UID and Effective User ID = $EUID"

