adj(ookii, big).
adj(chiisai, small).
adj(takai,expensive).
adj(yasui,cheap).
adj(atarashii,new).
adj(atarashii,fresh).
adj(furui,old).
adj(ii,good).
adj(warui,bad).

jap_adjs(L) :- findall(X, (adj(X,_)),L).
play_adjs() :- ask(),play_adjs().
ask() :- jap_adjs(Lj),random_member(X,Lj),write(X),nl,read(Y),adj(X,Y).
