productoescalar([], [], 0).
productoescalar([H1|T1], [H2|T2], P) :-
    productoescalar(T1, T2, PT),
    P is (H1 * H2) + PT.

main :-
    writeln('--- Prueba 1: Producto escalar de [1, 2, 3] y [4, 5, 6] ---'),
    (productoescalar([1, 2, 3], [4, 5, 6], R1)
    -> format('El producto escalar es: ~w.~n', [R1])
    ; writeln('Error o listas de diferente longitud.')
    ),
    halt.

:- main.
