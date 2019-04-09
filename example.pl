% Prolog programs are sequences of rules (or clauses)
%
% Programs can be queried.

hi.

% Rules can have arguments.

hello(world).

% Everything not explicitly stated in the program is not true


% hello(coworld)
%
% Variables are upper case:
% hello(X)

% More facts

location(munich, germany).
location(augsburg, germany).
location(germany, europe).
location(london, unitedkingdom).
location(unitedkingdom, europe).

% Recursive definitions

is_in(X, Y) :- location(X, Y).
is_in(X, Y) :- location(X, Z), is_in(Z, Y).


% append([1, 2], [3, 4], X)
% append([1, 2], [3, 4], [1, 2, 3, 4])
% append([1, 2], X, [1, 2, 3, 4])
% append(X, Y, [1, 2, 3, 4])

