<h5 style="text-align: center"> SYSTEME D'EXPLOITATION </h5>

------

## **Processus**

------

### Définitions

| Définition                                                   |
| :----------------------------------------------------------- |
| Un <u>**processus**</u> est un programme en cours d’exécution |

- Espace mémoire + contexte d’exécution
- Un processus est créé à partir d’un autre processus
- Caractéristiques **statiques** :
  - PID : Process identifier
  - PPID Parent process identifier
  - Utilisateur propriétaire
  - Droit d’accès aux ressources
- Caractéristiques **dynamiques** (évoluent pendant la durée de vie du processus) :
  - Priorité, environnement d’exécution
  - Quantité de ressources consommées (temps CPU, ...)

---

###Observer les processus

- `systemd` ou `init` (PID = 1) : premier processus (seul qui n’a pas de parent)
- 2 types de processus :
  - Utilisateurs (attachés à un terminal)
  - Daemons (assurent un service, détaché de tout terminal)
- `ps` : affiche les processus s’exécutant à un moment donné
- `pstree` : affiche l’arborescence des processus
- `top` : affiche dynamiquement les processus
- `$$` : valeur du PID du bash courant
- `$PPID` : valeur du PID du parent du bash courant

---

### Processus en avant et arrière plan

- Par défaut : avant-plan
- Pour exécuter en arrière-plan : terminer la commande par `&`
- `$?` : variable contenant la valeur du retour de la dernière commande qui s’est arrêtée
- `$!` : valeur du PID du dernier processus lancé

---

### Cycle de vie

- `source` : exécute un script dans le processus courant
- Suspendre un processus en avant-plan : `ctrl+z`
  - Reprendre le processus en avant-plan : `fg`
  - Reprendre le processus en arrière-plan : `bg`
- `kill` : envoie un signal au processus
  - `kill -9` pour tuer le processus (`ctrl+c` pour tuer le processus en avant-plan)
- `wait` : attend la fin de tous les fils
  - Avec argument : attend la fin des processus passés en argument

---

### Variables et processus

- **Variable d’environnement** : variable exportée
  - Ex : `HOME`, `PATH`, `PS1`...



------

<table width="90%">
<tr>
<td style="width: 30%; text-align: left; background:transparent; border:0;">Informatique</td>
<td style="width: 30%; text-align: center; background:transparent; border:0;">Alexis Bagarre</td>
<td style="width: 30%; text-align: right; background:transparent; border:0;">T1 - 2018 / 2019</td>
</tr>
</table>