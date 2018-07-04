-module(p11_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
encode_modified_test()->[
?_assertEqual(p11:encode_modified([1,1,3]),[{2,1},3]),
?_assertEqual(p11:encode_modified([1,b,3]),[1,b,3]),
?_assertError(bad_argument,p11:encode_modified(1))].
-endif.
