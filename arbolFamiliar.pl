%Arbol familiar

es_progenitor(david, karen).
es_progenitor(tania, karen).
es_progenitor(karen, arturo).
es_progenitor(manuel, arturo).
es_progenitor(joshua, pilar).
es_progenitor(nayeli, pilar).
es_progenitor(pilar, jorge).
es_progenitor(pilar, omar).
es_progenitor(pilar, belen).
es_progenitor(arturo, jorge).
es_progenitor(arturo, omar).
es_progenitor(arturo, belen).
es_progenitor(sofia, julian).
es_progenitor(sofia, clara).
es_progenitor(jorge, julian).
es_progenitor(jorge, clara).
es_progenitor(belen, julieta).
es_progenitor(adrian, julieta).

es_pareja(david, tania).
es_pareja(karen, manuel).
es_pareja(pilar, arturo).
es_pareja(sofia, jorge).
es_pareja(belen, adrian).
es_pareja(nayeli, joshua).

es_padre_de(X, Y):- es_progenitor(Y, X).

es_nieto(X, Z):- es_progenitor(X, Y), es_progenitor(Y, Z).

es_abuelo_de(X, Z):- es_progenitor(X, Y), es_progenitor(Y, Z).

%(A, E):- es_progenitor(A, B), es_progenitor(B, C), es_progenitor(C, D), es_progenitor(D, E).

es_antepasado(X, Y):- es_progenitor(X, Y).
es_antepasado(X, Y):- es_progenitor(X, Z), es_antepasado(Z, Y).