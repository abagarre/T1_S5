<h5 style="text-align: center"> ALGORITHMIQUE ET STRUCTURE DE DONNÉES </h5>

------

## **Langage de description algorithmique**

------

###Algorithmes élémentaires

- #####PGCD :

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

------

<table width="90%">
<tr>
<td style="width: 30%; text-align: left; background:transparent; border:0;">Informatique</td>
<td style="width: 30%; text-align: center; background:transparent; border:0;">Alexis Bagarre</td>
<td style="width: 30%; text-align: right; background:transparent; border:0;">T1 - 2018 / 2019</td>
</tr>
</table>