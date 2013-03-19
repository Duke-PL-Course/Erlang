% Defines the basic module
-module(basic).
% Expose the mirror/1 function through the module
-export([mirror/1]).

% Defines the actual mirror function, which returns the first argument
mirror(Anything) -> Anything.