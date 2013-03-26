-module(translate).
-export([number/1]).

number(one)   -> 1;
number(two)   -> 2;
number(three) -> 3;
number(_)     -> 0.