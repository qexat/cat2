open Base

module Weak (P : Type.POLY) = struct
  open Category.Weak (P)

  module type TYPE = sig
    include TYPE

    val arrow : 'a 'b. ('a P.t -> 'b P.t) -> ('a P.t, 'b P.t) t

    val ( *** )
      : 'a1 'a2 'b1 'b2.
      ('a1 P.t, 'b1 P.t) t
      -> ('a2 P.t, 'b2 P.t) t
      -> ( ('a1 P.t, 'a2 P.t) Product.t
           , ('b1 P.t, 'b2 P.t) Product.t )
           t
  end
end

include Weak (Type.Id)

module As_category (A : TYPE) :
  Category.TYPE with type ('a, 'b) t = ('a, 'b) A.t =
  A
