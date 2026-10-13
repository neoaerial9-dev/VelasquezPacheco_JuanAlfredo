sumador :-
    retractall(suma_acumulada(_)),
    assertz(suma_acumulada(0)),
    repeat,
    write('Ingresa un número (0 para terminar): '),
    read(Num),
    (Num =:= 0
    -> suma_acumulada(Total), format('¡Fin del proceso! La suma total es: ~w.~n', [Total]),
        retractall(suma_acumulada(_)), !
    ; suma_acumulada(Actual), NuevoTotal is Actual + Num, retractall(suma_acumulada(_)),
        assertz(suma_acumulada(NuevoTotal)), fail
    ).

main :-
    writeln('--- Programa Sumador Interactivo ---'),
    sumador,
    halt.

:- main.
