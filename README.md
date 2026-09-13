# Polyml-fill
## A polyfill PolyML module for other Standard ML implementations


# How to use this

If you'd like your smlpkg+MLB project to compile cleanly both under PolyML and MLton, you have to somehow tell the Poly compiler to use its internal `$(SML_LIB)/basis/poly.mlb` file, but tell MLton to use this one.

[My opinionated project scaffold generator](https://github.com/pzel/smlpkg-post-init) uses the following trick:

If the compiler being used is `polymlb`, set the `mlb-path-var` `POLY` to equal `$(SML_LIB)/basis/`. If the compiler not poly, set the var `POLY` to equal `$(SMLPKG)/github.com/pzel/polyml-fill` (this project). 

Then, when you need the `PolyML` module, reference it as:

```
$(POLY)/poly.mlb
```

In your `.mlb` files. This way, Poly will load up the real `PolyML` structure
when required, but other compilers will load this stub.

