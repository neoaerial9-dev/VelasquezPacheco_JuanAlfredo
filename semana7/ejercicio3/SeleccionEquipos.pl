empleado(ana).
empleado(luis).
empleado(carlos).
empleado(sofia).

experiencia(ana, 6).
experiencia(luis, 3).
experiencia(carlos, 7).
experiencia(sofia, 4).

tiene_habilidad(ana, gestion).
tiene_habilidad(ana, java).
tiene_habilidad(luis, java).
tiene_habilidad(luis, python).
tiene_habilidad(carlos, gestion).
tiene_habilidad(carlos, csharp).
tiene_habilidad(sofia, python).
tiene_habilidad(sofia, react).

senior(Persona) :-
    experiencia(Persona, Exp),
    Exp >= 5.

lider(Persona) :-
    senior(Persona),
    tiene_habilidad(Persona, gestion).

desarrollador(Persona) :-
    empleado(Persona),
    tiene_habilidad(Persona, H),
    H \= gestion.

compatibles(P1, P2) :-
    P1 \= P2,
    tiene_habilidad(P1, H1),
    tiene_habilidad(P2, H2),
    H1 \= H2.

equipo_minimo(Lider, Dev) :-
    lider(Lider),
    desarrollador(Dev),
    Lider \= Dev,
    compatibles(Lider, Dev).

main :-
    writeln('--- Pregunta 1: ¿Quiénes son empleados Senior? ---'),
    (setof(S, senior(S), ListaSeniors)
    -> format('Los empleados senior son: ~w.~n', [ListaSeniors])
    ; writeln('No hay empleados senior.')
    ),
    writeln('--- Pregunta 2: ¿Quiénes pueden ser Líderes de Proyecto? ---'),
    (setof(L, lider(L), ListaLideres)
    -> format('Los candidatos a líder son: ~w.~n', [ListaLideres])
    ; writeln('No hay candidatos a líder.')
    ),
    writeln('--- Pregunta 3: ¿Son compatibles Ana y Luis? ---'),
    (compatibles(ana, luis)
    -> writeln('Sí, Ana y Luis son compatibles.')
    ; writeln('No son compatibles.')
    ),
    halt.

:- main.
