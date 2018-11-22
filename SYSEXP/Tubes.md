<h5 style="text-align: center"> SYSTEME D'EXPLOITATION </h5>

------

## **Tubes**

------

### Définition

| **<u>Tube</u>**                                  |
| :----------------------------------------------- |
| Mécanisme de communication par envoi de messages |

- Via canal de communication
- Réception dans l’ordre d’émission
- Un tube est un fichier spécial dans le système de fichier
  - L’émetteur écrit dans le tube
  - Le récepteur lit dans le tube
- Message supprimé après la lecture

---

### Principe

- `mkfifo chemin` : créer un tube, visible avec `ls`

- ```sh
  echo message >chemin # écrit dans le tube
  read message <chemin # lit dans le tube
  rm chemin # supprime le tube
  ```

- Toujours ouvrir un tube avec une redirection avancée en lecture/ecriture

------

<table width="90%">
<tr>
<td style="width: 30%; text-align: left; background:transparent; border:0;">Matière</td>
<td style="width: 30%; text-align: center; background:transparent; border:0;">Alexis Bagarre</td>
<td style="width: 30%; text-align: right; background:transparent; border:0;">T1 - 2018 / 2019</td>
</tr>
</table>