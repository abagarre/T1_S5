<h5 style="text-align: center"> SYSTEME D'EXPLOITATION </h5>

------

## **Signaux**

------

### Définition

| **<u>Signal</u>**                          |
| :----------------------------------------- |
| Mécanisme de communication inter-processus |

- Message : entier entre 1 et 31
  - `SIGHUP` (1) : fermeture terminal ⇒ à tous les processus attachés
  - `SIGINT` (2)	: `control-c` dans un terminal ⇒ au processus premier plan	
  - `SIGQUIT` (3) : souvent `control-d`, généré par un processus à lui-même
  - `SIGILL` (4) : instruction illégale (envoyé par le noyau)
  - `SIGFPE` (8) : division par 0 (envoyé par le noyau)
  - `SIGKILL` (9) : pour terminer un processus	
  - `SIGSEGV` (11) : accès mémoire invalide (envoyé par le noyau)
  - `SIGTERM` (15) : argument par défaut de la commande kill
  - `SIGCHLD` (17) : envoyé par le noyau lors de la mort d’un fils
  - `SIGSTP` (18) : `control-z` : suspend un processus
  - `SIGCONT` (19) : redémarre un processus suspendu
  - `SIGUSR1` (30) : libre, sémantique définie pour chaque processus
  - `SIGUSR2` (31) : libre, sémantique définie pour chaque processus

- Réception des messages dans un ordre aléatoire

- Perte possible en cas d’envoi multiple du même numéro de signal

- `trap` : effectue une commande à la réception d’un signal

  ```sh
  trap expression sig
  ```

- `kill` : envoie un signal à un certain PID

  ```sh
  kill -sig pid
  ```


------

<table width="90%">
<tr>
<td style="width: 30%; text-align: left; background:transparent; border:0;">Informatique</td>
<td style="width: 30%; text-align: center; background:transparent; border:0;">Alexis Bagarre</td>
<td style="width: 30%; text-align: right; background:transparent; border:0;">T1 - 2018 / 2019</td>
</tr>
</table>