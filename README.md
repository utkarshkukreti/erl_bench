erl_bench
=========

Library that provide common code for all erlang web frameworks tested at http://techempower.com/benchmarks.

### Add it to deps:

```
{deps, [
  {erl_bench, "0.0.1", {git, "git://github.com/b0oh/erl_bench.git", {tag, "v0.0.1"}}}
]}
```

### Add section to config file

```
{erl_bench, [{db_pool, 256},
             {db_user, "benchmarkdbuser"},
             {db_password, "benchmarkdbpass"},
             {db_host, "localhost"},
             {db_port, 3306},
             {db_name, "hello_world"}]}
```

### Run application

```
application:start(erl_bench).
```

### API

```
erl_bech:hello_json()
erl_bech:hello_plain()
erl_bech:random_json()
erl_bech:randoms_json(Count)
erl_bech:update_randoms_json(Count)
erl_bech:fortunes_html()
```
