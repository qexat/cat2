module Weak (P : Type.POLY) = struct
  module type TYPE = sig
    include Type.POLY_2

    val map
      : 'a1 'a2 'b1 'b2.
      ('a1 P.t -> 'b1 P.t)
      -> ('a2 P.t -> 'b2 P.t)
      -> ('a1 P.t, 'a2 P.t) t
      -> ('b1 P.t, 'b2 P.t) t
  end
end

include Weak (Type.Id)
