(lang dune 3.20)

(name cat2)

(generate_opam_files true)

(source
 (github qexat/cat2))

(authors "lexa <hello@lexa.qexat.com>")

(maintainers "lexa <hello@lexa.qexat.com>")

(license MIT)

(documentation https://qexat.github.io/cat2/)

(package
 (name cat2)
 (synopsis "A sequel to cat")
 (description "A library defining the category theory concepts in OCaml.")
 (depends
  (ocaml
   (>= 5.3))))
