#!/bin/bash
clear
echo "Benutzererstellung"
echo "------------------"
echo

echo -n "Benutzername: ";read benutzer
# Existenz?
  if grep -q $benutzer: /etc/passwd
    then
      echo "Benutzer $benutzer existiert bereits."
      exit
    else
      echo -n "Gruppe: "; read gruppe; groupadd $gruppe
      echo -n "Loginshell (std. bash): "; read loginshell
      echo -n "Hardlimit (in kB): "; read limit
      useradd -m -s /bin/$loginshell -g $gruppe $benutzer && passwd $benutzer
      setquota -u $benutzer 0 $limit 0 0 /home
      setquota -u $benutzer 0 $limit 0 0 /tmp
      echo
      grep $benutzer: /etc/passwd
      grep $benutzer: /etc/shadow
      echo
      repquota -us /home |grep $benutzer
      echo
      tree -ugp /home/$benutzer
fi
echo



