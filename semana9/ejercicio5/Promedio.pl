suma_lista([], 0).
suma_lista([H|T], S) :-
    suma_lista(T, ST),
    S is H + ST.

longitud([], 0).
longitud([_|T], N) :-
    longitud(T, NT),
    N is NT + 1.

promedio([], 0).
promedio(L, P) :-
    longitud(L, N),
    N > 0,
    suma_lista(L, S),
    P is S / N.

main :-
    writeln('--- Prueba 1: Promedio de [10, 20, 30, 40] ---'),
    (promedio([10, 20, 30, 40], R1)
    -> format('El promedio es: ~w.~n', [R1])
    ; writeln('Error o lista vacía.')
    ),
    writeln('--- Prueba 2: Promedio de [5, 8, 12] ---'),
    (promedio([5, 8, 12], R2)
    -> format('El promedio es: ~w.~n', [R2])
    ; writeln('Error o lista vacía.')
    ),
    halt.

:- main.
