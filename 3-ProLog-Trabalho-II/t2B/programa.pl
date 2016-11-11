/*
   Programacao Logica - Prof. Alexandre G. Silva - UFSC
     Versao inicial     : 30set2015
     Adicao de gramatica: 15out2015
     Ultima atualizacao : 12out2016

   RECOMENDACOES:

   - O nome deste arquivo deve ser 'programa.pl'
   - O nome do banco de dados deve ser 'desenhos.pl'
   - O nome do arquivo de gramatica deve ser 'gramatica.pl'

   - Dicas de uso podem ser obtidas na execucação:
     ?- menu.

   - Exemplo de uso:
     ?- load.
     ?- searchAll(id1).

   - Exemplos de uso da gramatica:
     ?- comando([pf, '10'], []).
     Ou simplesmente:
     ?- cmd("pf 10").

     ?- comando([repita, '5', '[', pf, '50', gd, '45', ']'], []).
     Ou simplesmente:
     ?- cmd("repita 5[pf 50 gd 45]").

   - Colocar o nome e matricula de cada integrante do grupo
     nestes comentarios iniciais do programa

     Nome: Gustavo Figueira Olegário
     Matrícula: 15100742
*/


:- set_prolog_flag(double_quotes, codes).
:- initialization(new0).

% Coloca tartaruga no centro da tela (de 1000x1000)
% Implementacao incompleta:
%   - Considera apenas id1 e efetua new sem verificar sua existencia
%   - Supoe que ha' o xylast em 'desenhos.pl'
testes :-
        consult('programa.pl'),
        load,
        tartaruga,
        cmd("pf 54 ge 37 pt 28 gd 95 pf 54 ge 37 pt 28 gd 95 pf 54 ge 37 pt 28 gd 95 pf 54 ge 37 pt 28 gd 95 pf 54 ge 37 pt 28 gd 95 pf 54 ge 37 pt 28 gd 95"),
        cmd("un pf 100 ul"),
        %cmd("repita 36 [ gd 150 repita 8 [ pf 50 ge 45]]"),
        cmd("pf 54 ge 37 pt 28 gd 95 pf 54 ge 37 pt 28 gd 95 pf 54 ge 37 pt 28 gd 95 pf 54 ge 37 pt 28 gd 95 pf 54 ge 37 pt 28 gd 95 pf 54 ge 37 pt 28 gd 95"),
        commit.

new0 :-
    consult('gramatica.pl'),
    load,
    retractall(angle(_)),
    asserta(angle(90)),
    retractall(xylast(_,_)),
    asserta(xylast(500,500)),
    xy(ID,_,_),!,
    NewID is ID + 1,
    nb_setval(idglobal, NewID),
    uselapis,
    asserta(xy(NewID, 500, 500)),
    commit.

% Limpa os desenhos e reinicia no centro da tela (de 1000x1000)
tartaruga :-

    nb_setval(idglobal, 1),
    nb_getval(idglobal, NewID),
    uselapis,
    retractall(xylast(_,_)),
    retractall(angle(_)),
    retractall(xy(_,_,_)),
    asserta(angle(90)),
    new(NewID, 500, 500),
    asserta(xylast(500, 500)).

% Para frente N passos
parafrente(N) :-
    nb_getval(lapis, Lapis),
    xylast(X1,Y1),
    angle(Ang),
    X2 is sin((Ang * pi) / 180) * N,
    Y2 is cos((Ang * pi) / 180) * N,
    XFinal is X2 + X1,
    YFinal is Y2 + Y1,
    (Lapis =:= 1 -> xy(ID,_,_), retractall(xylast(_,_)), new(ID,X2, Y2), asserta(xylast(XFinal, YFinal));
                   retractall(xylast(_,_)), asserta((xylast(XFinal, YFinal)))).


% Para tras N passos
paratras(N) :-
    nb_getval(lapis, Lapis),
    xylast(X1,Y1),
    angle(Ang),
    X2 is (-1) * sin((Ang * pi) / 180) * N,
    Y2 is (-1) * cos((Ang * pi) / 180) * N,
    XFinal is X2 + X1,
    YFinal is Y2 + Y1,
    (Lapis =:= 1 -> xy(ID,_,_), retractall(xylast(_,_)), new(ID,X2, Y2), asserta(xylast(XFinal, YFinal));
                   retractall(xylast(_,_)), asserta((xylast(XFinal, YFinal)))).


% Gira a direita G graus
giradireita(G) :-
    angle(Ang),
    NewAng is Ang - G,
    retractall(angle(_)),
    asserta(angle(NewAng)).

% Gira a esquerda G graus
giraesquerda(G) :-
    angle(Ang),
    NewAng is Ang + G,
    retractall(angle(_)),
    asserta(angle(NewAng)).

% Use nada (levanta lapis)
usenada :-
    nb_setval(lapis, 0).

% Use lapis
uselapis :-
    nb_setval(lapis, 1),
    xylast(X,Y),
    nb_getval(idglobal, ID),
    NewID is ID + 1,
    nb_setval(idglobal, NewID),
    new(NewID, X, Y).

quadrado :-
    parafrente(100),
    giraesquerda(90),
    parafrente(100),
    giraesquerda(90),
    parafrente(100).



%---------------------------------------------------


% Apaga os predicados 'xy' da memoria e carrega os desenhos a partir de um arquivo de banco de dados
load :-
    retractall(xy(_,_,_)),
    open('desenhos.pl', read, Stream),
    repeat,
        read(Stream, Data),
        (Data == end_of_file -> true ; assert(Data), fail),
        !,
        close(Stream).

% Ponto de deslocamento, se <Id> existente
new(Id,X,Y) :-
    xy(Id,_,_),
    assertz(xy(Id,X,Y)),
    !.

% Ponto inicial, caso contrario
new(Id,X,Y) :-
    asserta(xy(Id,X,Y)),
    !.

% Pega uma figura e faz uma lista com todos os seus vértices
listVertex(Id, ListVertex) :-
    findall(Vertex, (xy(Id,X,Y), Vertex=[Id,X,Y]), ListVertex).

% Exibe opcoes de busca
search :-
    write('searchAll(Id).     -> Ponto inicial e todos os deslocamentos de <Id>'), nl,
    write('searchFirst(Id,N). -> Ponto inicial e os <N-1> primeiros deslocamentos de <Id>'), nl,
    write('searchLast(Id,N).  -> Lista os <N> ultimos deslocamentos de <Id>').

searchAll(Id) :-
    listing(xy(Id,_,_)).

searchFirst(Id,N) :-
    listVertex(Id,ListVertex),
    between(1, N, I),
    nth1(I, ListVertex, Elem), write(Elem), nl, false.


searchLast(Id,N) :-
    listVertex(Id, ListVertex),
    length(ListVertex, Len),
    AUX is Len - N,
    between(AUX, Len, I),
    nth0(I, ListVertex, Elem), write(Elem), nl, false.



%undo

% Exibe opcoes de alteracao
change :-
    write('change(Id,X,Y,Xnew,Ynew).  -> Altera um ponto de <Id>'), nl,
    write('changeFirst(Id,Xnew,Ynew). -> Altera o ponto inicial de <Id>'), nl,
    write('changeLast(Id,Xnew,Ynew).  -> Altera o deslocamento final de <Id>').

change(Id,X,Y,Xnew,Ynew) :-
    retract(xy(Id,X,Y)),
    assert(xy(Id,Xnew,Ynew)).

changeFirst(Id,Xnew,Ynew) :-
    removeFirst(Id,_,_), asserta(xy(Id,Xnew,Ynew)).

changeLast(Id,Xnew,Ynew) :-
    listVertex(Id, ListVertex),
    length(ListVertex, T),
    nth1(T, ListVertex, Vertex),
    nth0(1, Vertex, X),
    nth0(2, Vertex, Y),
    change(Id,X,Y,Xnew,Ynew).

remove:-
    write('removeFirst(Id,X,Y).  -> Remove o primeiro ponto de <Id>'), nl,
    write('removeAll(Id).        -> Remove todos os pontos de <Id>').

removeFirst(Id,X,Y) :-
    retract((xy(Id,X,Y))), !.

removeAll(Id) :-
    retractall((xy(Id,_,_))).

undo(Id) :-
    listVertex(Id,ListVertex),
    length(ListVertex,T),
    nth1(T, ListVertex, Elem),
    nth0(1, Elem, X),
    nth0(2, Elem, Y),
    retract(xy(Id,X,Y)).


% Grava os desenhos da memoria em arquivo
commit :-
    open('desenhos.pl', write, Stream),
    telling(Screen),
    tell(Stream),
    listing(xy),
    listing(xylast),
    listing(angle),
    tell(Screen),
    close(Stream).

quadrado(Id,X,Y,Lado) :-
    new(Id,X,Y),
    new(Id,Lado,0),
    new(Id,0,Lado),
    new(Id,-Lado,0).

figura(Id,X,Y) :-
    new(Id,X,Y),
    new(Id,0,Y/X),
    new(Id,Y,Y),
    new(Id,X,30),
    new(Id,100,500),
    new(Id,-300,-100).

replica(Id,N,Dx,Dy) :- listVertex(Id,ListVertex),
    length(ListVertex,T),
    nth1(T, ListVertex, Elem),
    between(1,N,_),
    between(1,T,_),
    nth1(2, Elem, X),
    nth1(3, Elem, Y),
    Xnew is X + Dx,
    Ynew is Y + Dy,
    new(_,Xnew,Ynew),
    false.


% Exibe menu principal
menu :-
    write('load.        -> Carrega todos os desenhos do banco de dados para a memoria'), nl,
    write('new(Id,X,Y). -> Insere um deslocamento no desenho com identificador <Id>'), nl,
    write('                (se primeira insercao, trata-se de um ponto inicial)'), nl,
    write('search.      -> Consulta pontos dos desenhos'), nl,
    write('change.      -> Modifica um deslocamento existente do desenho'), nl,
    write('remove.      -> Remove um determinado deslocamento existente do desenho'), nl,
    write('undo.        -> Remove o deslocamento inserido mais recentemente'), nl,
    write('commit.      -> Grava alteracoes de todos dos desenhos no banco de dados').