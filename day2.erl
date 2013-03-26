-module(day2).
-export([dict/2, calcPrice/1, tictactoe/1]).

dict([], _) -> null;
dict([{Key, Value}|_], Key) -> Value;
dict([_|T], Key) -> dict(T, Key).

calcPrice(ShoppingList) -> [ {Item, Quantity * Price} || {Item, Quantity, Price} <- ShoppingList ].

% Applies function to a list and returns the first result that's not false
first([], _) -> false;
first([H|T], F) -> case F(H) of
  false -> first(T, F);
  Anything -> Anything
end.

tictactoe(Board) ->
  [C11, C12, C13, C21, C22, C23, C31, C32, C33] = Board,

  Combs = [
    % Rows
    [C11, C12, C13],
    [C21, C22, C23],
    [C31, C32, C33],
    % Columns
    [C11, C21, C31],
    [C12, C22, C32],
    [C13, C23, C33],
    % Diagonals
    [C11, C22, C33],
    [C13, C22, C31]
  ],

  CountSpaces = fun(Cell, Spaces) ->
    case Cell of
      "x" -> Spaces;
      "o" -> Spaces;
      _ -> Spaces + 1
    end
  end,

  Winner = fun([A, B, C]) ->
    case [A, B, C] of
      ["x", "x", "x"] -> "x";
      ["o", "o", "o"] -> "o";
      _ -> false
    end
  end,

  case first(Combs, Winner) of
    false ->
      case lists:foldl(CountSpaces, 0, Board) of
        0 -> "cat";
        _ -> "no_winner"
      end;
    Anything -> Anything
  end.
