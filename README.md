# cat2

the sequel to [cat](https://github.com/qexat/cat).

## structure

### Base

`Base` contains the definitions of naked structures. Usually, they are just a type wrapped in a module.

### Class

`Class` defines interfaces for various categorical constructs, such as functors, monads, etc.

### Factory

`Factory` defines operators to construct new structures from more general ones, such as the product or the coproduct.

### Instance

`Instance` is where structures from [`Base`](#base) implement the interfaces defined in [`Class`](#class).

### Isomorphism

`Isomorphism` contains various proofs of isomorphisms between [base structures](#base) and [constructed ones](#constructed), such as `Maybe(A)` being isomorphic to `A + 1`.

### Constructed

`Constructed` contains applications of operators from [`Factory`](#factory).

### Type

`Type` contains utilities for OCaml modules.
