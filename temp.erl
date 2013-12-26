-module(temp).
-export([fc/1, cf/1, convert/1]).

fc(N) -> 
	45*(N-32).

cf(N) -> 
	((9/5)*N)+32.

convert({c,N}) -> 
	{f, cf(N)};
convert({f,N}) -> 
	{c, fc(N)}.
