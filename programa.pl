%progenitor(padre, madre)
progenitor(agustin, andrea).
progenitor(alejandro, sedani).
progenitor(joshua, nayeli).

%hijo_de(padre , madre, hijo).
hijo_de(agustin, andrea, alejandro).
hijo_de(alejandro, sedani, nayeli).
hijo_de(alejandro, sedani, naomi).
hijo_de(alejandro, sedani, nelitza).
hijo_de(alejandro, sedani, nitzy).
hijo_de(alejandro, sedani, nirvana).
hijo_de(joshua, nayeli, noel).

%padre_de(hijo, padre).
padre_de(alejandro, agustin).
padre_de(nayeli, alejandro).
padre_de(naomi, alejandro).
padre_de(nelitza, alejandro).
padre_de(nitzy, alejandro).
padre_de(nirvana, alejandro).
padre_de(noel, joshua).

%hijos_de(padre, madre, hijos).
hijos_de(alejandro, sedani, nayeli, naomi, nelitza, nitzy, nirvana).

es_padre_de(Padre, Hijo):- padre_de(Hijo, Padre).
es_hijo_de(Hijo, P, M):- hijo_de(P, M, Hijo).
es_abuelo_de(Nieto, Abuelo):- padre_de(Padre, Abuelo), hijo_de(Padre, _, Nieto).
es_suegro_de(Yerno, Hijo, Suegro):- hijo_de(Suegro, _, Hijo), padre_de(_, Yerno).
