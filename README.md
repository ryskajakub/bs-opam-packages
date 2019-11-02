# Bs opam packages

Packages from opam, built for usage with bucklescript

## ppx_let

in bsconfig.json

```
  "bs-dependencies": [
    "bs-opam-packages",
  ],
  "ppx-flags": ["bs-opam-packages/ppx/ppx_let"],
```

then you can write with [ppx_let](https://opam.ocaml.org/packages/ppx_let/)

Opening of `Bs_ppx_let.Promise` will introduce `Let_syntax` module in scope.

```
open Bs_ppx_let.Promise
```

We can then write our programs with `Promise` in monadic style similar to haskell's `do` or scala's `for` syntax sugar.

````
let promiseProgram =
  let%bind x = Js.Promise.resolve 3 in
  let%map y = Js.Promise.resolve 5 in
  let z = x + y in
  z
```
