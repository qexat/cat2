open Base

module Weak (P : Type.POLY) = struct
  open Arrow.Weak (P)

  module type TYPE = sig
    include TYPE

    val ( +++ )
      : 'a 'b 'c 'd.
      ('a P.t, 'b P.t) t
      -> ('c P.t, 'd P.t) t
      -> ( ('a P.t, 'c P.t) Coproduct.t
           , ('b P.t, 'd P.t) Coproduct.t )
           t
  end
end

include Weak (Type.Id)
