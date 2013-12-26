-module(mathStuff).
-export([factorial/1, area/1, perimeter/1]).

factorial(0) -> 1;
factorial(N) when N < 2 -> 1;
factorial(N) -> N * factorial(N-1).

area({square, Side}) ->
	Side * Side;
area({circle, Radius}) ->
	3 * Radius * Radius;
area({triangle, A, B, C}) ->
	S = (A+B+C)/2,
	math:sqrt(S*(S-A)*(S-B)*(S-C));
area(Other) ->
	{invalid_object, Other}.

perimeter({square, Side}) ->
	Side + Side;
perimeter({circle, Radius}) ->
	2 * Radius * math:pi();
perimeter({triangle, A, B, C}) ->
	A + B + C;
perimeter(Other) ->
	{invalid_object, Other}.
