<h5 style="text-align: center"> SYSTEME D'EXPLOITATION </h5>

------

## **Commandes Bash**

------

### Commandes de base

```bash
ls -a [chem]	# affichie les fichiers cachés
ls -l [chem]	# affichage long (avec droits d'accès)
ls -ld [chem]	# affiche les droits d'accès du repertoire spécifié (ou repertoire courrant si par d'argument)	
```

```bash
echo args 	# affiche les arguments
```

```bash
man arg 	# affiche l'aide de l'argument
```

```bash
read args	# lit les arguments sur l'entrée standard et les renvoie sur la 			sortie standard
```

```bash
head -n	fic	# lit les n premières lignes
tail -n	fic	# lit les n dernières lignes
```

```bash
wc [-l] [-w] [-c] fic	# compte le nombre de lignes / mot / caractères
```

```bash
ln chemin/cible chemin/lien		# créé un lien direct
ln -s chemin/cible chemin/lien	# créé un lien symbolique
```

```bash
touch fic	# créé un fichier vide nommé fic
mkdir rep	# créé un répertoire vide nommé rep
```

```bash
rm chem		# supprime le fichier associé au chemin
rmdir chem	# supprime le repertoire s'il est vide
rm -r chem	# supprime le repertoire et les fichiers de ce repertoire
```

```bash
cp [-r] chem/source chem/dest	# copie [recursivement] le[s] fichier[s]
```

```bash
mv chem/source chem/dest	# déplace ou renomme un fichier
```

```bash
chmod [u][g][o][+][-][=][r][w][x] chem	# droits à appliquer à l'entrée
```

```bash
which cmd	# indique le chemin complet de cmd en utilisant PATH
```

```bash
alias cmd="cmd2"	# redéfinit le nom de la commande cmd par cmd2
unalias cmd			# supprime l'alias sur cmd
alias				# consultation des alias
```

```bash
file fic	# affiche la nature de l'entrée
```

```bash
cut -c plage fic		# extrait des caractères de chaque ligne de fic
cut -d car -f plage fic	# extrait des champs : car = séparateur de champ
```

```bash
tr s1 s2	# transforme chaque caractère de s1 en ceux de s2
tr -d s		# supprime les caractères de la chaine s
```

```bash
kill -SIG PID	# envoie un signal au PID
trap cmd SIG	# effectue une commande à la récéption d'un signal
```

```bash
mkfifo chem	# créé un tube nommé
```



---

### Tests

- Tests sur des valeurs numériques :

|    Commande     |               Vraie si                |
| :-------------: | :-----------------------------------: |
| `[ n1 -eq n2 ]` |         `n1` est égale à `n2`         |
| `[ n1 -ne n2 ]` |      `n1` est différent de `n2`       |
| `[ n1 -gt n2 ]` | `n1` est strictement supérieur à `n2` |
| `[ n1 -ge n2 ]` |   `n1` est supérieur ou égal à `n2`   |
| `[ n1 -lt n2 ]` | `n1` est strictement inférieur à `n2` |
| `[ n1 -le n2 ]` |   `n1` est inférieur ou égal à `n2`   |

- Tests sur des chaînes de caractères :

|      Commande      |            Vraie si            |
| :----------------: | :----------------------------: |
| `[ mot1 = mot2 ]`  |    `mot1` est égal à `mot2`    |
| `[ mot1 != mot2 ]` | `mot1` est différent de `mot2` |
|    `[ -z mot ]`    |         `mot` est vide         |
|    `[ -n mot ]`    |      `mot` n’est pas vide      |

- Tests sur les fichiers

|   Commande   |                Vraie si                |
| :----------: | :------------------------------------: |
| `[ -e fic ]` |              `fic` existe              |
| `[ -f fic ]` |       `fic` existe et est normal       |
| `[ -d fic ]` |   `fic` existe et est un répertoire    |
| `[ -L fic ]` | `fic` existe et est un lien symbolique |

---

### Variables notables

- `HOME` : chemin absolu du repertoire de connexion
  - `cd`, `cd ~` et `cd $HOME` sont des commandes équivalentes
- `PS1` : prompt par défaut (défaut : `$`)
- `PS2` : prompt si plusieurs lignes (défaut : `>`)
- `PATH` : ensemble des chemins des variables d’environnement séparés par `:`
- `?` : contient le code de retour de la dernière commande utilisée (`0` si ok, autre si problème)

---

### Filtrage par motif

- `*` : chaine de caractères quelconques
- `?` : caratère quelconque
- `[...]` : un caractère dans l’ensemble donné
- `[!...]` : un caractère hors de l’ensemble donné
  - Un ensemble peut être :
    - Liste de caractères : `[aeiouy]`
    - Intervalle : `[0-9]`, `[a-zA-Z]`, `[!A-F]`
    - Ensembles prédéfinis :
      - `[[:alpha:]]` : caractères alphabétiques
      - `[[:lower:]]` / `[[:upper:]]` : minuscules / majuscules
      - `[[:digit:]]` : chiffres décimaux `[0-9]`

------

<table width="90%">
<tr>
<td style="width: 30%; text-align: left; background:transparent; border:0;">Informatique</td>
<td style="width: 30%; text-align: center; background:transparent; border:0;">Alexis Bagarre</td>
<td style="width: 30%; text-align: right; background:transparent; border:0;">T1 - 2018 / 2019</td>
</tr>
</table>