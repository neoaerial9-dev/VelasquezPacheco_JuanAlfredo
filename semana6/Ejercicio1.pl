progenitor(clara, jose).
progenitor(tomas, jose).
progenitor(tomas, isabel).
progenitor(jose, ana).
progenitor(jose, patricia).
progenitor(patricia, jaime).

abuelo(A, N) :-
    progenitor(A, P),
    progenitor(P, N).

tio(T, S) :-
    abuelo(A, S),
    progenitor(A, T).

main :-
    writeln('--- Pregunta 1: ¿Quién es el progenitor de Patricia ---'),
    (progenitor(P, patricia)
    -> format('El progenitor de Patricia es ~w.~n', [P])
    ; writeln('Faltan datos.')
    ),
    writeln('--- Pregunta 2: ¿Tiene Isabel un hijo o una hija? ---'),
    (progenitor(isabel, H)
    -> format('El hijo/hija de Isabel es ~w.~n', [H])
    ; writeln('Isabel no tiene hijos.')
    ),
    writeln('--- Pregunta 3: ¿Quién es el abuelo de Isabel? ---'),
    (abuelo(Abuelo, isabel)
    -> format('El abuelo de Isabel es ~w.~n', [Abuelo])
    ; writeln('Faltan datos.')
    ),
    writeln('--- Pregunta 4: ¿Cuáles son los tíos de Patricia? ---'),
    setof(Tios, tio(Tios, patricia), ListaTios),
    format('Los tíos de Patricia son: ~w.~n', [ListaTios]),
    halt.
    
:- main.
