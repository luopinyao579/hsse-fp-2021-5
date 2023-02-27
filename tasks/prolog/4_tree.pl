% используя предикат qsort(L,K) из предыдущего задания разработать предикат:
% balanced_tree(L,T) - который по заданном списку строит сбалансированное бинарное дерево поиска
% для построения дерева использовать следующие  нотации:
% empty - пустое дерево 
% instant(R, L, R) - бинарное дерево с корнем R и двумя поддеревьями L и R соотвественно (левое и правое)
:- consult(‘3_quicksort.pl’)

Balanced_tree(L,T):-
Qsort(L,K),
Build_tree(K,T).

Build_tree([],empty).
Build_tree(L,instant(X,Y,Z)):-
Div(L,A,[X|B]),
Build_tree(A,Y),
Build_tree(B,Z).

Div(L,A,B):-
Length(L,N),
H is N-N//2,
Length(B,H),
Append(A,B,L).
