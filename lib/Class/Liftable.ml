module Weak (P : Type.POLY) = struct
  open Functor.Weak (P)

  module type TYPE = sig
    include TYPE

    val lift : 'a. 'a P.t -> 'a P.t t
  end
end

include Weak (Type.Id)

module As_functor (L : TYPE) :
  Functor.TYPE with type 'a t = 'a L.t =
  L
