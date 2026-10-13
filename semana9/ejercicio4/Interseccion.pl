interseccion([], _, []).
interseccion([H|T], L2, [H|Resto]) :-
    member(H, L2), !,
    interseccion(T, L2, Resto).
interseccion([_|T], L2, Resto) :-
    interseccion(T, L2, Resto).

main :-
    writeln('--- Prueba 1: Intersección de [a, b, c, d] y [b, d, e, f] ---'),
    (interseccion([a, b, c, d], [b, d, e, f], R1)
    -> format('La intersección es: ~w.~n', [R1])
    ; writeln('Error.')
    ),
    halt.

:- main.
