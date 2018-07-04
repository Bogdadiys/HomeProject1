-module(p06_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
is_palindrome_test()->[
?_assertEqual(p06:is_palindrome([1,2,3,2,1]),true),
?_assertEqual(p06:is_palindrome([1,2,3,2,5]),false),
?_assertError(bad_argument,p06:is_palindrome(1))].
-endif.
