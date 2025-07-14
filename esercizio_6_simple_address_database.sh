#!/bin/bash
# fetch_address.sh
# Definiamo un array che conterrà "oggetti" chiave-valore 
declare -A address
#       -A option declares associative array.

# Assegnamo alla chiave "Charles" il valore "414 W. 10th Ave., Baltimore, MD 21236" e lo inseriamo dentro l'array address, così via per gli "oggetti" successivi
address[Charles]="414 W. 10th Ave., Baltimore, MD 21236"
address[John]="202 E. 3rd St., New York, NY 10009"
address[Wilma]="1854 Vermont Ave, Los Angeles, CA 90023"
 
# Per stampare il valore della chiave "Charles" usiamo questa sintassi
echo "Charles's address is ${address[Charles]}."
# Charles's address is 414 W. 10th Ave., Baltimore, MD 21236.
echo "Wilma's address is ${address[Wilma]}."
# Wilma's address is 1854 Vermont Ave, Los Angeles, CA 90023.
echo "John's address is ${address[John]}."
# John's address is 202 E. 3rd St., New York, NY 10009.
 
echo

# Come sempre usiamo l'asterisco per stampare tutto il contenuto di un qualsiasi elemento, in questo caso stamperemo tutti gli indici dell'array address
echo "${!address[*]}"   # The array indices ...
# Charles John Wilma
