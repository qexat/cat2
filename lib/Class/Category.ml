module Weak (P : Type.POLY) = struct
  module type TYPE = sig
    include Type.POLY_2

    val id : 'a. ('a P.t, 'a P.t) t

    val ( <.> )
      : 'a 'b 'c.
      ('b P.t, 'c P.t) t
      -> ('a P.t, 'b P.t) t
      -> ('a P.t, 'c P.t) t
  end
end

include Weak (Type.Id)
