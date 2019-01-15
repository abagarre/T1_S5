<h5 style="text-align: center"> ALGORITHMIQUE ET STRUCTURE DE DONNÉES </h5>

------

###PGCD et Tris

- #####PGCD

  ```pseudocode
  pgcd(a,b):
  	if b=0 then
  		return a
  	end if
  	x ⇽ a
  	y ⇽ b
  	while y ≠ 0 do
  		r ⇽ x%y
  		x ⇽ y
  		y ⇽ r
  	end while
  	return x
  ```

- ##### Tri insertion

  ```pseudocode
  triInsertion(A):
  	for j in range(2,n) do /* n : taille de A */
  		cle ⇽ A[j]
  		i ⇽ j-1
  		while i > 0 and A[i] > cle do
  			A[i+1] ⇽ A[i]
  			i ⇽ i-1
  		end while
  		A[i+1] ⇽ cle
  	end for
  	return A
  ```

  *Complexité* : $\text O(\text n ^2)$

- ##### Tri sélection

  ```pseudocode
  triSelection(T,n):
  	for i in range(1,n-1) do
  		min ⇽ i
  		for j in range(i+1,n) do
  			if T[j] < T[min] then
  				min ⇽ j
  			end if
  		end for
  		tmp ⇽ T[min] /* échanger T[i] et T[min] */
  		T[min] ⇽ T[i]
  		T[i] ⇽ tmp 
  	end for
  	return T
  ```

  *Complexité* : $\text O(\text n^2)$

- ##### Tri fusion

  ```pseudocode
  fusion(T,p,q,r):
  	n1 ⇽ q-p+1
  	n2 ⇽ r-q
  	L ⇽ CreerTableauEntier(n1+1)
  	R ⇽ CreerTableauEntier(n2+1)
  	for i in range(1,n1) do
  		L[i] ⇽ T[p+i-1]
  	end for
  	for j in range(1,n2) do
  		R[j] ⇽ T[q+j]
  	end for
  	L[n1+1] ⇽ infini
  	R[n2+1] ⇽ infini
  	i ⇽ 1
  	j ⇽ 1
  	for k in range(p,r) do
  		if L[i] <= R[j] then
  			T[k] ⇽ L[i]
  			i ⇽ i+1
  		else
  			T[k] ⇽ R[j]
  			j ⇽ j+1
  		end if
  	end for
  	
  
  triFusion(T,p,r):
  	if p <= r then
  		q ⇽ int((p+r)/2)
  		triFusion(T,p,q)
  		triFusion(T,q+1,r)
  		fusion(T,p,q,r)
  	end if
  ```

  *Complexité* : $\text O(\text n \log \text n)$

---

###Recherche

- ##### Recherche récursive dans un tableau trié

  ```pseudocode
  chercher(T,x,i,j):
  	if i=j then
  		if T[i]=x then
  			return i
  		else
  			return -1
  		end if
  	end if
  	m ⇽ int((i+j)/2)
  	if x <= T[m] then
  		return chercher(T,x,i,m)
  	else
  		return chercher(T,x,m+1,j)
  	end if
  ```

  *Complexité* : $\text O(\log \text n)$

---

### Graphes

- ##### Parcours en largeur

  ```pseudocode
  parcoursEnLargeur(G=(V,E),s):	/* Sommets V et Arrêtes E ; sommet s */
  	dist ⇽ CréerTableau(longueur(V))
  	Q ⇽ CréerFileVide()
  	for u in V do
  		dist[u] ⇽ +infini
  	end for
  	dist[s] ⇽ 0
  	Enfiler(Q,s)
  	while EstNonVide(Q) do
  		u ⇽ Défiler(Q)
  		for (u,v) in E do	/* pour chaque arrête */
  			if dist[v] = +infini then
  				dist[v] ⇽ dist[u] + 1
  				Enfiler(Q,v)
  			end if
  		end for
  	end while
  	return dist
  ```

  *Complexité* : $\text O(|\text V|+|\text E|)$

- ##### Algorithme de Dijkstra

  ```pseudocode
  dijkstra(G=(V,E),l,s):	/* G : graphe ; l : pondération des arrêtes ; s : sommet */ 
  	H ⇽ CréerFilePriorité()
  	for u in V do	/* Pour chaque sommet du graphe */
  		dist[u] ⇽ +infini
  		prev[u] ⇽ null
  		Insérer(H,u,dist[u])	/* H stock tous les sommets avec leurs poids */
  	end for
  	AugmenterPriorité(H,s,0)	/* Poids  sur le sommet de départ */
  	while EstNonVide(H) do	/* Tant qu'on a pas visité tous les sommets */
  		u ⇽ SupprimerMin(H)	/* u = min(H) = premier plus court chemin depuis s */
  		for (u,v) in E in  do	/* pour chaque arrête (u,v) */
  			if dist[v] > dist[u] + l(u,v) then	/* Si dist(s->...->v) > dist(s->u->v) */
  				dist[v] ⇽ dist[u] + l(u,v)
  				prev[v] ⇽ u
  				AugmenterPriorité(H,v,dist[v])
  			end if
  		end for
  	end while
  	return dist
  ```

  *Complexité* : $\text O\left((|\text V|+|\text E|)\log |\text V|\right)$

- ##### Insertio

  ```pseudocode
  insertion(T,z):
  	y ⇽ nil(T)
  	x ⇽ racine(T)
  	while x != nit(T) do
  		y ⇽ x
  		if clé(z) < clé(x) then
  			x ⇽ gauche(x)
  		else
  			x ⇽ droite(x)
  		end if
  	end while
  	p(z) ⇽ y
  	if y = nil(t) then
  		racine(T) ⇽ z
  	else if clé(z) < clé(y) then
  		gauche(y) ⇽ z
  	else
  		droite(y) ⇽ z
  	end if
  	gauche(z) ⇽ nit(T)
  	couleur(z) ⇽ rouge
  	InsérerCorrection(T,z)
  	
  	
  InsérerCorrection(T,z):
  	while couleur(p(z)) = rouge do
  		if p(z) = gauche(p(p(z))) then
  			y ⇽ droite(p(p(z)))
  			if couleur(y) = rouge then
  				couleur(p(z)) ⇽ noir
  				couleur(y) ⇽ noir
  				couleur(p(p(z))) ⇽ rouge
  				z ⇽ p(p(z))
  			else
  				if z = droite(p(z)) then
  					z ⇽ p(z)
  				end if
  				couleur(p(z)) ⇽ noir
  				couleir(p(p(z))) ⇽ rouge
  				RotationDroite(T,p(p(z)))
  			end if
  		else
  			/* Idem avec permutation de droite et gauche */
  		end if
  	end while
  	couleur(racine(T)) ⇽ noir
  ```

------

<table width="90%">
<tr>
<td style="width: 30%; text-align: left; background:transparent; border:0;">Informatique</td>
<td style="width: 30%; text-align: center; background:transparent; border:0;">Alexis Bagarre</td>
<td style="width: 30%; text-align: right; background:transparent; border:0;">T1 - 2018 / 2019</td>
</tr>
</table>