suma(0, Y, Y).
suma(s(X), Y, s(Z)) :-
    suma(X, Y, Z).

resta(X, 0, X).
resta(s(X), s(Y), Z) :-
    resta(X, Y, Z).

multiplicacion(0, _, 0).
multiplicacion(s(X), Y, Z) :-
    multiplicacion(X, Y, R),
    suma(R, Y, Z).

a_entero(0, 0).
a_entero(s(X), N) :-
    a_entero(X, N1),
    N is N1 + 1.

main :-
    writeln('--- Suma ---'),
    (suma(s(s(s(s(s(0))))), s(s(s(0))), R1)
    -> a_entero(R1, N1), format('La suma de 5 + 3 = ~w.~n', [N1])
    ; writeln('Error en la suma')
    ),
    writeln('--- Resta ---'),
    (resta(s(s(s(s(s(s(s(s(s(s(0)))))))))), s(s(s(s(0)))), R2)
    -> a_entero(R2, N2), format('La resta de 10 - 4 = ~w.~n', [N2])
    ; writeln('Error en la resta')
    ),
    writeln('--- Multiplicacion ---'),
    (multiplicacion(s(s(s(s(s(s(0)))))), s(s(s(s(s(s(s(0))))))), R3)
    -> a_entero(R3, N3), format('La multiplicacion de 6 * 7 = ~w.~n', [N3])
    ; writeln('Error en la multiplicacion')
    ),
    halt.
    
:- main.
