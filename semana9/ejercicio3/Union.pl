union([], L2, L2).
union([H|T], L2, L) :-
    member(H, L2), !,
    union(T, L2, L).
union([H|T], L2, [H|Resto]) :-
    union(T, L2, Resto).

main :-
    writeln('--- Prueba 1: Unión de [a, b, c] y [b, c, d, e] ---'),
    (union([a, b, c], [b, c, d, e], R1)
    -> format('La unión es: ~w.~n', [R1])
    ; writeln('Error.')
    ),
    halt.

:- main.
