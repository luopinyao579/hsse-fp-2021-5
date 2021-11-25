$ определить предикат mrg(L1, L2, R) который для двух отсортированных списков L1 и L2 
% определяет список R, составленный из этих элементов

mrg([], [], []).
mrg([], L, L).
mrg(L, [], L).

mrg([Head1|Tail1], [Head2|Tail2], L):-
	Head1 < Head2 -> L = [Head1|R], mrg(Tail1,[Head2|Tail2],R);
	Head1 > Head2 -> L = [Head2|R], mrg([Head1|Tail1],Tail2,R);
	L = [Head1,Head2|R], mrg(Tail1,Tail2,R).

/*
    ? - mrg([], [], R)
    R = []

    ? - mrg([3, 5, 7, 9, 10], [8,8,99,100, 222], R)
    R = [3, 5, 7, 8, 8, 9, 10, 99, 100, 222]

    ? - mrg([3, 5, 7, 9, 10], [], R)
    R = [3, 5, 7, 9, 10]

    mrg([], [8,8,99,100, 222], R)
    R = [8, 8, 99, 100, 222]
*/

    
