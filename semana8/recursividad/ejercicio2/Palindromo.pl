inverso_acc([], Acc, Acc).
inverso_acc([H|T], Acc, Res) :-
    inverso_acc(T, [H|Acc], Res).

inverso(Lista, Inv) :-
    inverso_acc(Lista, [], Inv).

es_palindromo(Lista) :-
    inverso(Lista, Lista).

main :-
    writeln('--- Prueba 1: [a, b, c, b, a] ---'),
    (es_palindromo([a, b, c, b, a])
    -> writeln('Sí es un palíndromo.')
    ; writeln('No es un palíndromo.')
    ),
    writeln('--- Prueba 2: [1, 2, 3, 2, 1] ---'),
    (es_palindromo([1, 2, 3, 2, 1])
    -> writeln('Sí es un palíndromo.')
    ; writeln('No es un palíndromo.')
    ),
    writeln('--- Prueba 3: [1, 2, 3, 4] ---'),
    (es_palindromo([1, 2, 3, 4])
    -> writeln('Sí es un palíndromo.')
    ; writeln('No es un palíndromo.')
    ),
    halt.

:- main.
