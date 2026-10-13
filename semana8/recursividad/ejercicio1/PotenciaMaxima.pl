potencia_maxima(N, Base, 0) :-
    (N < Base; N mod Base =\= 0), !.
potencia_maxima(N, Base, Exponente) :-
    N mod Base =:= 0,
    N1 is N // Base,
    potencia_maxima(N1, Base, ExpResto),
    Exponente is ExpResto + 1.

main :-
    writeln('--- Prueba 1: Potencia máxima de 2 en 32 (2^5 = 32) ---'),
    (potencia_maxima(32, 2, E1)
    -> format('El exponente máximo es: ~w.~n', [E1])
    ; writeln('Error en el cálculo.')
    ),
    writeln('--- Prueba 2: Potencia máxima de 3 en 81 (3^4 = 81) ---'),
    (potencia_maxima(81, 3, E2)
    -> format('El exponente máximo es: ~w.~n', [E2])
    ; writeln('Error en el cálculo.')
    ),
    writeln('--- Prueba 3: Potencia máxima de 5 en 50 (5^2 * 2, exp = 2) ---'),
    (potencia_maxima(50, 5, E3)
    -> format('El exponente máximo es: ~w.~n', [E3])
    ; writeln('Error en el cálculo.')
    ),
    halt.

:- main.
