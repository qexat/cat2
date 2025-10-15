module Weak (P : Type.POLY) = struct
  open Liftable.Weak (P)

  module type TYPE = sig
    include TYPE

    val apply
      : 'a 'b.
      ('a P.t -> 'b P.t) t -> 'a P.t t -> 'b P.t t
  end
end

include Weak (Type.Id)

module As_functor (A : TYPE) :
  Functor.TYPE with type 'a t = 'a A.t =
  A

module As_liftable (A : TYPE) :
  Liftable.TYPE with type 'a t = 'a A.t =
  A
