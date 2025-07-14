#!/bin/bash
# am-i-root.sh:   Am I root or not?

# Root has $UID 0.
ROOT_UID=0         # Di Default l'utente root ha come ID 0

# Confronto il valore della env $UID che corrisponde all'id dell'utente corrente con l'UID di root(0), se vero allora capirà che è root altrimenti no
if [ "$UID" -eq "$ROOT_UID" ]  # Will the real "root" please stand up?
then
  echo "You are root."
else
  echo "You are just an ordinary user (but mom loves you just the same)."
fi
 
exit 0
 
# ============================================================= #
# Code below will not execute, because the script already exited.
 
# An alternate method of getting to the root of matters:

# Qui facciamo lo stesso controllo di prima, ma in base allo username e non all'uid
ROOTUSER_NAME=root
 
username=`id -nu`              # Or...   username=`whoami`
if [ "$username" = "$ROOTUSER_NAME" ]
then
  echo "Rooty, toot, toot. You are root."
else
  echo "You are just a regular fella."
fi
