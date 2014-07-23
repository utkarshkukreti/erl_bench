-module(erl_bench_sup).
-behaviour(supervisor).
-export([start_link/0]).
-export([init/1]).

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

init([]) ->
    Strategy = {one_for_all, 0, 1},
    {ok, {Strategy, []}}.
