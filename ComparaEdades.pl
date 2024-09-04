%Operaciones artimeticas

tieneedad(juan, 10).
tieneedad(karen, 20).
tieneedad(adan, nino).
tieneedad(mauro, 99).

es_mayor_de_edad(A):- tieneedad(A, Edad), Edad > 18.

%Quiero saber quienes son menores de edad
es_menor_de_edad(A):- tieneedad(A, Edad), Edad < 18.
%Quiero saber quien tiene 99 anos
tiene_99(A):- tieneedad(A, Edad), Edad == 99.
%Quiero saber quien esta entre las edades de 5 a 25
entre_edad(A):- tieneedad(A, Edad), Edad >= 5, Edad =< 25.

es_carnivoro(el_leon, bistec).
es_carnivoro(elgato, raton).
es_carnivoro(hiena, cebras).
es_herbivoro(jirafa, hojas).
es_herbivoro(gallina, hojas).
es_herbivoro(paloma, semillas).

%Sintaxis de findall
%findall(Elemento, Condición, Lista).

%Quienes son los carnivoros
carnivoro(A) :- es_carnivoro(A, _).
todos_los_carnivoros(Lista):- findall(A, carnivoro(A), Lista).

%Quienes son los herbivoros
herbivoro(A) :- es_herbivoro(A, _).
todos_los_herbivoros(Lista):- findall(A, herbivoro(A), Lista).

%Quienes son los que comen semillas
comen_semillas(A):- es_herbivoro(A, semillas).
todos_los_que_comen_semillas(Lista) :- findall(A, comen_semillas(A), Lista).



