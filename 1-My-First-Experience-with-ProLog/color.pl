% color.pl - color a map using a maximum of four colors

color(blue).
color(green).
color(yellow) .
color(red) .

% restrictions:

coloring(A,B,C,D,E) :-
color(A), color(B), color(C), color(D), color(E),
A\=B, A\=C, A\=D, B\=C, B\=E, C\=D, C\=E, D\=E.