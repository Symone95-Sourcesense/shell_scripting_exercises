#!/bin/bash
 
# Call this script with at least 10 parameters, for example
# ./scriptname 1 2 3 4 5 6 7 8 9 10
MINPARAMS=10
 
echo

# Per stampare il nome dello script corrente si utilizza $0
echo "The name of this script is \"$0\"."
# Adds ./ for current directory
echo "The name of this script is \"`basename $0`\"."
# Strips out path name info (see 'basename')
 
echo

# Per far riferimento ai parametri passati come parametro utilizzeremo la seguente sintassi: $<posizione_parametro>, dal decimo in poi dovremo wrapparlo con {}: ${10}
if [ -n "$1" ]              # Tested variable is quoted.
then
 echo "Parameter #1 is $1"  # Need quotes to escape #
fi
 
if [ -n "$2" ]
then
 echo "Parameter #2 is $2"
fi
 
if [ -n "$3" ]
then
 echo "Parameter #3 is $3"
fi
 
# ...
 
 
if [ -n "${10}" ]  # Parameters > $9 must be enclosed in {brackets}.
then
 echo "Parameter #10 is ${10}"
fi
 
echo "-----------------------------------"
echo "All the command-line parameters are: "$*""  # Per stampare tutti i parametri in una volta sola useremo l'asterisco usato come sempre per prendere "tutti" gli elementi

# Qui controlliamo se il numero dei parametri passati è minore(-lt = less than) del numero indicato nella variabile iniziale $MINPARAMS che corrisponde a 10, nel caso stampa quel log
if [ $# -lt "$MINPARAMS" ]
then
  echo
  echo "This script needs at least $MINPARAMS command-line arguments!"
fi 
 
echo
 
exit 0
