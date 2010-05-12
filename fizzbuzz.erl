-module(fizzbuzz).
-compile(export_all).

fizzpri(N) ->
	if
	     N rem 15 == 0 -> "FizzBuzz";
	     N rem 3 == 0 -> "Fizz";
	     N rem 5 == 0 -> "Buzz";
	     true -> integer_to_list(N)
	end.

fizz(N, MAX) ->
	io:format("~s~n", [fizzpri(N)]),
	if N =< MAX -> fizz(N+1, MAX);
	   true -> true
	end.

fizz(MAX) -> fizz(1, MAX).
