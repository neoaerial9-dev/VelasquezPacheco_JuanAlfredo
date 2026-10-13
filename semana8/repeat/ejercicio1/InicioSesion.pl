iniciar_sesion :-
    repeat,
    write('Introduce la contraseña numérica: '),
    read(X),
    (X =:= 1234
    -> writeln('¡Acceso concedido! Contraseña correcta.'), !
    ; writeln('Contraseña incorrecta. Inténtalo de nuevo.'), fail
    ).

main :-
    writeln('--- Sistema de Control de Acceso ---'),
    iniciar_sesion,
    writeln('Sesión finalizada con éxito.'),
    halt.

:- main.
