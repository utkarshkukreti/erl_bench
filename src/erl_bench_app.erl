-module(erl_bench_app).
-behaviour(application).
-export([start/2, stop/1]).

start(_Type, _StartArgs) ->
    store:init(),
    erl_bench_sup:start_link().

stop(_State) ->
    ok.
