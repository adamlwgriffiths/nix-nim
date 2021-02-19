Example Nix project showing how to:
* Use a nix shell.
* Use nim unstable without the "undefined symbols" errors by using "nim-unwrapped".
* Include a custom Nix package (raylib)

Uses direnv to automatically activate the nix-shell.

Test that Nim works with the basic example
```
$ nim c test.nim
$ ./test
```

Install Raylib using Nim
 ```
$ nimble refresh
$ nimble install nimraylib_now
$ nim c crown.nim
$ ./crown
```
