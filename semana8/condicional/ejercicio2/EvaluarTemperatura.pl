evaluar_temperatura(Celsius, Estado) :-
    (Celsius < 10
    -> Estado = congelado
    ;   
        (Celsius =< 35
        -> Estado = normal
        ; Estado = sobrecalentamiento
        )
    ).

main :-
    writeln('--- Prueba 1: Temperatura de 5 grados ---'),
    (evaluar_temperatura(5, E1)
    -> format('Estado: ~w.~n', [E1])
    ; writeln('Error.')
    ),
    writeln('--- Prueba 2: Temperatura de 22 grados ---'),
    (evaluar_temperatura(22, E2)
    -> format('Estado: ~w.~n', [E2])
    ; writeln('Error.')
    ),
    writeln('--- Prueba 3: Temperatura de 42 grados ---'),
    (evaluar_temperatura(42, E3)
    -> format('Estado: ~w.~n', [E3])
    ; writeln('Error.')
    ),
    halt.

:- main.
