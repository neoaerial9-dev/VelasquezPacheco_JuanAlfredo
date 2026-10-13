producto([], 1).
producto([H|T], P) :-
    producto(T, PT),
    P is H * PT.

main :-
    writeln('--- Prueba 1: Producto de [2, 3, 4] ---'),
    (producto([2, 3, 4], R1)
    -> format('El producto es: ~w.~n', [R1])
    ; writeln('Error.')
    ),
    writeln('--- Prueba 2: Producto de [5, -2, 3] ---'),
    (producto([5, -2, 3], R2)
    -> format('El producto es: ~w.~n', [R2])
    ; writeln('Error.')
    ),
    halt.

:- main.
