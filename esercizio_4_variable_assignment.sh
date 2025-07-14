#!/bin/bash
# Naked variables
 
echo
 
# When is a variable "naked", i.e., lacking the '$' in front?
# When it is being assigned, rather than referenced.
 
# Assignment - Per assegnare un valore ad una variabile non dobbiamo mettere spazi prima e dopo l'uguale
a=879
echo "The value of \"a\" is $a."
 
# Assignment using 'let' - Se invece dovessimo eseguire dei calcoli prima di valorizzare "a" allora dobbiamo usare "let" che elaborerà prima eventuali comandi/operazioni e poi assegnerà tutto alla variabile
# Senza let stamperebbe: "16+5". Un modo equivalente per scrivere la stessa senza let cosa sarebbe stata: a=$((16+5))
let a=16+5
echo "The value of \"a\" is now $a."
 
echo
 
# In a 'for' loop (really, a type of disguised assignment): - Stampo il valore di "a" ad ogni ciclo
echo -n "Values of \"a\" in the loop are: "
for a in 7 8 9 11
do
  echo -n "$a "
done
 
echo
echo
 
# In a 'read' statement (also a type of assignment): - Possiamo assegnare il valore di "a" chiedendolo come input, lo script rimarrà in attesa fino a quando non verrà passato alcun valore
echo -n "Enter \"a\" "
read a
echo "The value of \"a\" is now $a."
 
echo

# Terminiamo lo script con un codice di uscita 0, significa che non ha avuto errori, avesse avuto altri valori significherebbe che è terminato in errore o forzatamente
# Approfondiremo nel prossimo esercizio
exit 0
