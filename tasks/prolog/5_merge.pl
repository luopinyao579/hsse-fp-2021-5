$ определить предикат mrg(L1, L2, R) который для двух отсортированных списков L1 и L2 
% определяет список R, составленный из этих элементов

mrg([],[],_).
mrg([],R,R).
mrg(L,[],L).
mrg([LL|LR],[RL|RR],[LL|T]) :- LL =< RL,
mrg(LR,[RL|RR],T).
mrg([LL|LR],[RL|RR],[RL|T]) :- RL < LL,
mrg([LL|LR],RR,T).
