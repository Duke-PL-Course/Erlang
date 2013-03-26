-module(day1).
-export([numwords/1, countwords/1, count/0, printStatus/1, dup/1]).

numwords([]) -> 0;
numwords([32]) -> 0;
numwords([_]) -> 1;
numwords([32|Rest]) -> 1 + numwords(Rest);
numwords([_|Rest]) -> numwords(Rest).

% Using higher order functions and added dedup
dedup(_, []) -> [];
dedup(C, [C,C|T]) -> dedup(C, [C|T]);
dedup(C, [H|T]) -> [H | dedup(C, T)].
countwords(S) -> length(lists:filter(fun(C) -> C == 32 end, dedup(32, S))) + 1.

count(11) -> ok;
count(A) -> io:fwrite("~w\n", [A]), count(A + 1).
count() -> count(0).

printStatus(success) -> io:fwrite("success\n");
printStatus({error, Message}) -> io:fwrite("error: ~s\n", [Message]);
printStatus(S) -> io:fwrite("unknown: ~p\n", [S]).

dup([]) -> [];
dup([H|T]) -> [H, H|dup(T)].