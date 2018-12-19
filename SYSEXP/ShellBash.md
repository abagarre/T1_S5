<h5 style="text-align: center"> SYSTEME D'EXPLOITATION </h5>

------

## **Shell Bash**

------

### Terminal et Shell

| **<u>Terminal</u>**           |
| :---------------------------- |
| Port d’entrée d’un ordinateur |

- Un processus communique avec l’utilisateur via un terminal
- Lorsqu’un terminal est fermé, tous les processus qui lui sont attachés sont détruits

| **<u>Shell</u>**                                             |
| :----------------------------------------------------------- |
| Programme permettant d’interagir avec les services fournis par un système d’exploitation |

---

### Bash

- **Interpréteur de commande**

  - Lit des commandes
  - Exécute les commandes
  - Écrit les résultat sur son terminal d’attache
- Bash définit un langage appelé bash
- Un **mot bash** est formé de caractères séparés par des <u>blancs</u> (sauf : `; & && | || ( )` et `ˋ` )
  - Sensible à la casse
  - Le caractère `\` désactive l’interprétation spéciale du caractère suivant
  - Des caractères entre `“ ”` ou `‘ ’` sont considérés comme 1 seul mot
    - `‘ ’` : désactive l’interprétation dans toute la chaîne
    - `“ ”` : seuls sont interprétés les caractère `$`, `\ ` et `ˋ`

---

### Script

- Première ligne : 

  ```sh
  #! /bin/bash
  ```

  `#!` : indique au système que ce fichier est un ensemble de commandes à exécuter par l’interpréteur dont le chemin suit

---

### Variables

- Déclaration / affectation :

  ```sh
  ma_var=valeur
  ```

- Consultation :

  ```sh
  $ma_var
  ```

---

### Algorithmes

- `if elif else` :

  ```sh
  if cond; then
  	cmd
  elif cond; then
  	cmd
  else
  	cmd
  fi
  ```

  - Tests sur des valeurs numériques :

    |    Commande     |               Vraie si                |
    | :-------------: | :-----------------------------------: |
    | `[ n1 -eq n2 ]` |         `n1` est égale à `n2`         |
    | `[ n1 -ne n2 ]` |      `n1` est différent de `n2`       |
    | `[ n1 -gt n2 ]` | `n1` est strictement supérieur à `n2` |
    | `[ n1 -ge n2 ]` |   `n1` est supérieur ou égal à `n2`   |
    | `[ n1 -lt n2 ]` | `n1` est strictement inférieur à `n2` |
    | `[ n1 -le n2 ]` |   `n1` est inférieur ou égal à `n2`   |

  - Test sur des chaînes de caractères :

    |      Commande      |            Vraie si            |
    | :----------------: | :----------------------------: |
    | `[ mot1 = mot2 ]`  |    `mot1` est égal à `mot2`    |
    | `[ mot1 != mot2 ]` | `mot1` est différent de `mot2` |
    |    `[ -z mot ]`    |         `mot` est vide         |
    |    `[ -n mot ]`    |      `mot` n’est pas vide      |

  - `[ cond ]` est un raccourcis pour `test cond`

  - Renvoie `0` si c’est vrai, renvoie une valeur différente de `0` si c’est faux

- `case`

  ```sh
  case mot in
  	motif1)
  		cond;;
  	motif2)
  		cond;;
  	*)
  		cond;;
  esac
  ```

  - Si `mot` vaut `motif1` alors `cond` ...
  - `*` : cas par défaut

- `while`

  ```sh
  while cond; do
  	cmd
  done
  ```

  - `break` pour sortir de la boucle

- `for`

  ```sh
  for var in liste; do
  	cmd
  done
  ```

---

### Arguments d’une commande

| Nom du fichier ou de la commande | argument 1 | argument 2 | ...  |
| :------------------------------: | :--------: | :--------: | :--: |
|         `mon_script.sh`          |   `arg1`   |   `arg2`   | ...  |
|               `$0`               |    `$1`    |    `$2`    | ...  |


- `$#` : nombre de paramètres de la commande
- `$@` : liste des paramètres `arg1`, `arg2` ...
- `shift` : décale d’un cran les paramètres

---

### Commandes imbriquées

- Pour récupérer le texte écrit sur le terminal par une commande dans une chaîne de caractères 

  ```sh
  $(cmd)
  ```

- A ne pas confondre avec `$cmd` qui permet de récupérer la valeur de la variable `cmd`



------

<table width="90%">
<tr>
<td style="width: 30%; text-align: left; background:transparent; border:0;">Informatique</td>
<td style="width: 30%; text-align: center; background:transparent; border:0;">Alexis Bagarre</td>
<td style="width: 30%; text-align: right; background:transparent; border:0;">T1 - 2018 / 2019</td>
</tr>
</table>