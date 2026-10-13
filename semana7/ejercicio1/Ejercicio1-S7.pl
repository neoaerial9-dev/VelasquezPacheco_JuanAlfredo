progenitor(clara, jose).
progenitor(tomas, jose).
progenitor(jose, ana).
progenitor(jose, patricia).
progenitor(patricia, jaime).

hombre(jose).
hombre(tomas).
hombre(jaime).

mujer(clara).
mujer(ana).
mujer(patricia).

dif(X, Y) :- X \= Y.

es_madre(X) :-
    progenitor(X, _),
    mujer(X).

es_padre(X) :-
    progenitor(X, _),
    hombre(X).

es_hijo(X) :-
    progenitor(_, X),
    hombre(X).
    
hermana_de(X, Y) :-
    progenitor(P, X),
    progenitor(P, Y),
    mujer(X),
    dif(X, Y).

abuelo_de(X, Y) :-
    progenitor(X, P),
    progenitor(P, Y),
    hombre(X).
    
abuela_de(X, Y) :-
    progenitor(X, P),
    progenitor(P, Y),
    mujer(X).

hermanos(X, Y) :-
    progenitor(P, X),
    progenitor(P, Y),
    dif(X, Y).
    
tia(X, Y) :-
    progenitor(P, Y),
    hermana_de(X, P).
    
main :-
    writeln('--- Consultas y Enunciados ---'),
    findall(X, es_madre(X), Madres),
    format('Respuesta: ~w. -> Enunciado: ~w son madres.~n', [Madres, Madres]),
    findall(X, es_padre(X), Padres),
    format('Respuesta: ~w. -> Enunciado: ~w son padres.~n', [Padres, Padres]),
    findall(X, es_hijo(X), Hijos),
    format('Respuesta: ~w. -> Enunciado: ~w son hijos (varones).~n', [Hijos, Hijos]),
    halt.

:- main.
