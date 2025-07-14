#!/bin/bash

# Ogni comando eseguito ha un codice d'uscita, se 0 significa terminato correttamente, altrimenti significa che ha avuto errori durante l'esecuzione
echo hello
# Con $? chiediamo l'exit code dell'ultimo comando eseguito, in questo caso del comando "echo" eseguito prima
echo $?    # Exit status 0 returned because command executed successfully. Stamperà quindi 0

# Questo comando non viene riconosciuto quindi stamperà un exit code di errore(127) capiamo così che è andato in errore
lskdf      # Unrecognized command.
echo $?    # Non-zero exit status returned -- command failed to execute.
 
echo

# Possiamo customizzare l'exit code usando appunto il comando "exit" e indicare un codice personalizzato
exit 113   # Will return 113 to shell.
           # To verify this, type "echo $?" after script terminates.
 
#  By convention, an 'exit 0' indicates success,
#+ while a non-zero exit value means an error or anomalous condition.
#  See the "Exit Codes With Special Meanings" appendix.
