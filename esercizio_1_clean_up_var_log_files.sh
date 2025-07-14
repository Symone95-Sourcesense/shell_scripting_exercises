cd /var/log                     # Mi sposto sotto la cartella /var/log
cat /dev/null > messages        # Svuoto il file messages, viene creato se manca
cat /dev/null > wtmp            # Svuoto il file wtmp, usato per log di sistema utenti
echo "Log files cleaned up."
