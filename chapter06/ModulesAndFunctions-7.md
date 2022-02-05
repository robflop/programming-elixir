# ModulesAndFunctions-7

Find the library functions to do the following, and then use each in IEx.
(If the word _Elixir_ or _Erlang_ appears at the end of the challenge, then you’ll find the answer in that set of libraries.)

## 1) Convert a float to a string with two decimal digits. (Erlang)
```bash
$ iex
Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> :erlang.float_to_binary(12.34, decimals: 2)
"12.34"
iex(2)> :erlang.float_to_binary(12.3456, decimals: 2)
"12.35"
```

## 2) Get the value of an operating-system environment variable. (Elixir)
```bash
$ iex
Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> System.get_env("OS")
"Windows_NT"
iex(2)> System.get_env("username")
"robflop"
```

## 3) Return the extension component of a file name (so return .exs if given "dave/test.exs"). (Elixir)
```bash
$ iex
Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Path.extname("ModulesAndFunctions-7.md")
".md"
```

## 4) Return the process’s current working directory. (Elixir)
```bash
$ iex
Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> File.cwd()
{:ok, "d:/Repositories/programming-elixir"}
```

## 5) Convert a string containing JSON into Elixir data structures. (Just find; don’t install.)
[Jason](https://hex.pm/packages/jason)

## 6) Execute a command in your operating system’s shell.
```bash
$ iex
Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> System.cmd("date", [])
{"So,  6. Feb 2022 00:12:56\n", 0}
```