calcular_tarifa(Horas, TipoVehiculo, Total) :-
    (TipoVehiculo == moto
    -> Total is Horas * 2
    ;
        (Horas =< 3
        -> Total is Horas * 4
        ; Total is (3 * 4) + ((Horas - 3) * 7)
        )
    ).

main :-
    writeln('--- Prueba 1: Moto por 4 horas ---'),
    (calcular_tarifa(4, moto, T1)
    -> format('Total a pagar: $~w.~n', [T1])
    ; writeln('Error en el cálculo.')
    ),
    writeln('--- Prueba 2: Auto por 2 horas (menos de 3h) ---'),
    (calcular_tarifa(2, auto, T2)
    -> format('Total a pagar: $~w.~n', [T2])
    ; writeln('Error en el cálculo.')
    ),
    writeln('--- Prueba 3: Auto por 5 horas (con horas adicionales) ---'),
    (calcular_tarifa(5, auto, T3)
    -> format('Total a pagar: $~w.~n', [T3])
    ; writeln('Error en el cálculo.')
    ),
    halt.

:- main.
