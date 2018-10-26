# TP1

## BASH

#### Q2:

hostname : afiche le nom de l'hôte système

```bash
$hostname
alexis-PC
```

#### Q3:

users : afiche les noms d'utilisateurs connectés à l'hôte

```bash
$users
alexis
```

who : affiche qui est connecté

```bash
$who
alexis   tty1         2018-10-23 14:00 (:0)
```

#### Q5:

```sh
echo hello world
```

#### Q8:

```sh
echo Hello $1
```

#### Q9:

```sh
for i in "$@"; do 
	echo hello $i
done
```

#### Q10:

```sh
if [ -z $1 ]; then
	echo "hello Sargeras !"
else
	for i in "$@"; do 
		echo hello $i
	done
fi
```

#### Q11:

```sh
if [ -z $1 ]; then
		echo "Hello Sargeras !"
else
	while [ $# -ne 0 ]; do
    	echo hello $1
	shift
done
fi
```

#### Q12:

```sh
if [ -z $1 ]; then
		echo "Hello Sargeras !"
else
	while [ $# -ne 0 ]; do
		echo hello $1
		shift
		shift
	done
fi
```

## Système de fichier

#### Q1:

```bash
$cd
```

#### Q2:

```bash
$mkdir F110_est_une_ue_absolument_geniale
```

#### Q3:

```bash
$mv F110_est_une_ue_absolument_geniale/ F110/
```

#### Q4:

```bash
$cd F110/ ; mkdir TP1
```

#### Q5:

```bash
$cd TP1: ; mkdir Part1
```

#### Q6:

```bash
$cd Part1/ ; mv ../../../hello.sh .
```

#### Q7:

	$cd ../ ; mkdir Part2/

#### Q9:

	$cd Part1

#### Q10:

	$pwd

#### Q11:

	$ls ..

#### Q12:

```bash
$echo ~
/home/alexis
```

Affiche le chemin absolu du home directory

#### Q13:

	$ls ~/Documents/T1/SYSEXP/F110/TP1/Part1

#### Q14:

	$ls ../Part1

#### Q15:

	$mkdir test_tmp ; cd test_tmp

#### Q16:

	$cp /etc/passwd .

#### Q17:

	$cp passwd passwd2

#### Q18:

Il y a 2 fichiers différents, indépendants (dupliqués) qui pointent vers 2 adresses différentes donc 2 inodes différents

#### Q19:

	$mv passwd2 dup

#### Q20:

passwd2 et dup ont le même inode car le nom de fichier n'a pas de rapport avec son contenu

#### Q21:

	$rm passwd

#### Q22:

	$rm -r test_tmp/

#### Q23:

```bash
$chmod u+rwx tmp/
$chmod g+rx-w tmp/
$chmod o-rwx tmp/
```

#### Q24:

```bash
$cp /etc/hosts tmp/liste_hosts ; cd tmp/
$chmod u+rw-x liste_hosts
$chmod g+r-wx liste_hosts
$chmod o-rwx liste_hosts
$cat liste_hosts
```

#### Q25:

```bash
$chmod u-r liste_hosts
$cat liste_hosts
cat: liste_hosts: Permission non accordée
```

#### Q26:

```bash
$chmod u-w ../tmp/
$rm liste_hosts
rm: impossible de supprimer 'liste_hosts': Permission non accordée
```

#### Q27:

```bash
$chmod u-r ../tmp/
$ls
ls: impossible d'ouvrir le répertoire '.': Permission non accordée
```

#### Q28:

	$chmod u-x ../tmp/
	$cd .
	bash: cd: .: Permission non accordée

#### Q29:

	$chmod u+rwx tmp/

#### Q30:

	$rm -r tmp/

#### Q32:

	$cp /etc/passwd my_passwd

#### Q33:

	$cat my_passwd

#### Q34:

	$mkdir Liens

#### Q35:

	$cd Liens/

#### Q36:

	$ln ../my_passwd lien.txt

#### Q37:

	$ls -i
	1185324 lien.txt
	$ls ../ -i
	1187859 Liens  1185324 my_passwd

Les 2 inodes sont identiques.

#### Q38:

	$cat lien.txt

#### Q39:

	$ln -s ../my_passwd lien_symb.txt

#### Q40:

	$ls -i
	1186571 lien_symb.txt  1185324 lien.txt

Les inodes sont différents.

#### Q41:

	$cat lien_symb.txt

#### Q42:

	$mv lien_symb.txt ../

#### Q43:

	$ls ../lien_symb.txt
	cat: lien_symb.txt: Aucun fichier ou dossier de ce type

Le lien est brisé.

#### Q44:

	$ln -s /home/alexis/Documents/T1/SYSEXP/F110/TP1/Part2/my_passwd lien_symb.txt

#### Q45:

	$cat lien_symb.txt

#### Q46:

	$mv lien_symb.txt Liens/lien_symb.txt
	$cat Liens/lien_symb.txt

Cette fois-ci le lien n'est plus brisé.

#### Q47:

	$mv my_passwd Liens/my_passwd
	$cat Liens/lien_symb.txt
	cat: Liens/lien_symb.txt: Aucun fichier ou dossier de ce type

Le lien symbolique se refère à un fichier qui n'existe plus (celui du lien absolu de la Q44) : le lien est brisé.
