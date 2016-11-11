/*
   Programacao Logica - Prof. Alexandre G. Silva - 30set2015
   
   RECOMENDACOES:
   
   - O nome deste arquivo deve ser 'programa.pl'
   
   - O nome do banco de dados deve ser 'desenhos.pl'
   
   - Dicas de uso podem ser obtidas na execucação: 
     ?- menu.
     
   - Exemplo de uso:
     ?- load.
     ?- searchAll(id1).
     
   - Colocar o nome e matricula de cada integrante do grupo
     nestes comentarios iniciais do programa

     Nome: Gustavo Olegário - 15100742
*/

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
