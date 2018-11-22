<h5 style="text-align: center"> SYSTEME D'EXPLOITATION </h5>

------

## **Communication entre processus**

------

### Communication par fichiers partagés

- 2 processus écrivent et lisent dans un fichier partagé
- Les fichiers peuvent être mis à jour de manière concurrente
  - Les accès concurrents aux fichiers partagés peuvent mener à des incohérences
- Éviter que deux sections de code accédant au même fichier partagé s’exécutent en mème temps :
  - Exclusion mutuelle
  - Mutex : verrou en exclusion mutuelle
    - Verrouille avant d’entrer en section critique
    - Déverrouille en sortant
  - Opérations atomiques
    - `P.sh` :  attend que le verrou soit déverrouillé pour le verrouiller
    - `V.sh` : déverrouille le verrou





------

<table width="90%">
<tr>
<td style="width: 30%; text-align: left; background:transparent; border:0;">Matière</td>
<td style="width: 30%; text-align: center; background:transparent; border:0;">Alexis Bagarre</td>
<td style="width: 30%; text-align: right; background:transparent; border:0;">T1 - 2018 / 2019</td>
</tr>
</table>