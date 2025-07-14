#! /bin/bash
# progress-bar2.sh
# Author: Graham Ewart (with reformatting by ABS Guide author).
# Used in ABS Guide with permission (thanks!).
 
# Invoke this script with bash. It doesn't work with sh.

# Definiamo gli intervalli, in secondi, utilizzati per mockare l'attesa di un processo
interval=1
long_interval=10

# Definiamo una funzione anonima lanciata in background(tramite &)
{
     trap "exit" SIGUSR1               # Questo farà uscire dal ciclo "exit" se riceve il segnare "SIGUSR1"
     sleep $interval; sleep $interval  # mettiamo uno sleep prima del ciclo
     while true                        # Facciamo partire un ciclo infinito che stamperà un puntino ogni $interval, in questo caso 1 secondo
     do
       echo -n '.'                     # Use dots. Ma possiamo usare anche altri caratteri come il cursore pieno
       sleep $interval
     done; } &                         # Start a progress bar as a background process.

# Essendo un processo in background questo pezzo verrà eseguito subito dopo averlo lanciato

# Qui salviamo il PID(Process ID) del processo lanciato in background così da non perderlo e poterlo usare dopo. $! prende l'ID del processo precedente a quello corrente.
pid=$!
trap "echo !; kill -USR1 $pid; wait $pid"  EXIT        # To handle ^C. Qui definiamo il comando da lanciare nel caso riceviamo il segnale "EXIT"

# Verrà quindi stampata questa stringa, poi andrà in sleep per 10 secondi, nel mentre il processo in background printerà i puntini ogni secondo, 
# alla fine dei 10 secondi andrà avanti fino alla riga 33 che killerà il processo in background, terminando così la progress bar
echo -n 'Long-running process '
sleep $long_interval
echo ' Finished!'
 
kill -USR1 $pid        # Manda il comando SIGUSR1 al processo in background per terminarlo dato che, come detto prima, se riceve quel segnale si sarebbe terminato da solo.
wait $pid              # Stop the progress bar. Attende che la progress bar sia stata killata correttamente
trap EXIT              # Termina il comando trap
 
exit $?
