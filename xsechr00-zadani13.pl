
min_max_l([H | T], (Min, Max)):-
    min_l(T, H, Min),
    max_l(T, H, Max).

min_l([], Min, Min).

min_l([H | T], X, Min):-
    (H < X ->  
     min_l(T, H, Min);
     min_l(T, X, Min)
    ).

max_l([], Max, Max).

max_l([H | T], X, Max):-
   ( H > X ->  
    max_l(T, H, Max);
    max_l(T, X, Max)
   ).

my_abs(A,B) :- 
  A < 0 -> B is -A ; 
  B = A.

 uloha13([H|T]):- min_max_l(([H|T]),(Min,Max)),
 ( my_abs(Min,Mini),
   my_abs(Max,Maxi),   
   Maxi > Mini).
 
 uloha13([H|T]):- min_max_l(([H|T]),(Min,Max)),
 ( my_abs(Min,Mini),
   my_abs(Max,Maxi), 
   Maxi =< Mini,
   write(false)  
   ).
 uloha13([]):- write(false).