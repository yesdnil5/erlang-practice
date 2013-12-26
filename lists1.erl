-module(lists1).
-export([min/1, less/1, max/1, greater/1, min_max/1]).

less({M, N}) ->
	if M < N -> M;
	   M > N -> N
	end.

min({[H], N}) ->
	less({H, N});
min({[H|T], N}) ->
	min({T, less({H, N})});
min([H]) ->
	H;
min([H|T]) ->
	min({T, H});
min([]) ->
	{invalid_object, []}.

greater({M, N}) ->
	if M < N -> N;
	   M > N -> M
	end.

max({[H], N}) ->
	greater({H, N});
max({[H|T], N}) ->
	max({T, greater({H, N})});
max([H]) ->
	H;
max([H|T]) ->
	max({T, H});
max([]) ->
	{invalid_object, []}.

min_max(N) ->
	{min(N), max(N)}.
