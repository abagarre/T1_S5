<h5 style="text-align: center"> SYSTEMES D'EXPLOITATION </h5>

------

## **Système de fichiers**

------

### Vu par un processeur

- Répertoire : fichier spécial qui associe des noms à des fichiers
- **Chemin absolu** : part de la racine du système de fichier (commence par `/`)
- **Chemin relatif** : part du répertoire courant
  - Les 2 ne sont pas uniques

---

### Sur disque

- Un disque est identifié par le préfixe `sd` puis sont numérotés `a`, `b`, `c`...
- Les partitions sont numérotées `1`, `2`, `3`...
- **Bloc** : unité de transfert entre le disque et la mémoire (souvent 4096 octets)
- **Inode** : descripteur d’un fichier
- **Fichier** : inode + blocs du fichier
- Liens :
  - **Lien direct** : nom d’un inode dans un repertoire
    - Possibilité de créer plusieurs liens directs vers le même inode
    - Pour supprimer un fichier, il faut supprimer tous les liens directs vers son inode
    - Ne peut référencer qu’un inode de la même partition
  - **Lien symbolique**
    - Quand le système doit ouvrir le fichier, il ouvre la cible à la place de l’original
    - Dès que le fichier cible est détruit, son espace est libéré
    - Possibilité de référencer sur autre partition
    - Le lien devient invalide si le fichier cible est déplacé / supprimé

---

### Commandes utilisateur

- `rm` : supprime l’entrée associée au chemin
  - Décrémentation du compteur de liens directs de l’inode
  - Libère le fichier (inode + données) si le compteur tombe à 0
- `cp` : copie le fichier vers une destination précisée
  - Création d’un nouvel inode et duplication des blocs de donnée
- `mv` : déplace ou renomme
  - Si dans même partition : créé un lien direct à partir de `src` puis supprime `src`
  - Si vers une autre partition : copie `src` vers `dest` puis supprime `src`

---

### Droits d’accès

- `r` : read

  - Consultation d’un fichier (si fichier) ou du contennu d’un repertoire sinon (`ls` autorisé)

- `w` : write

  - Droit de modification du contennu d’un fichier (si fichier) ou des entrées d’un repertoire

- `x` : execute

  - Droit d’execution (si fichier) ou droit de traverser si repertoire (`cd` autorisé)

- `u` : propriétaire

- `g` : groupe propriétaire

- `o` : autres

- `ls -ld` : affiche les droits d’accès d’un fichier

  | fic / rep | prop  | groupe | autres | nb liens |   prop   | taille |    date     |    nom    |
  | :-------: | :---: | :----: | :----: | :------: | :------: | :----: | :---------: | :-------: |
  | `-` / `d` | `rwx` | `rwx`  | `rwx`  |   `1`    | `alexis` | `4096` | `Dec 16`... | `fic.txt` |

- `chmod` : droits à appliquer à l’entrée

  - Ex : 
    - `chmod u+x fic.c`
    - `chmod o-r fic.c`
  - 

------

<table width="90%">
<tr>
<td style="width: 30%; text-align: left; background:transparent; border:0;">Informatique</td>
<td style="width: 30%; text-align: center; background:transparent; border:0;">Alexis Bagarre</td>
<td style="width: 30%; text-align: right; background:transparent; border:0;">T1 - 2018 / 2019</td>
</tr>
</table>