-module(day2).
-export([dict/2, calcPrice/1]).

dict([], _) -> null;
dict([{Key, Value}|_], Key) -> Value;
dict([_|T], Key) -> dict(T, Key).

calcPrice(ShoppingList) -> [ {Item, Quantity * Price} || {Item, Quantity, Price} <- ShoppingList ].
