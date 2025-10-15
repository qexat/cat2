module Weak (P : Type.POLY) = struct
  open Liftable.Weak (P)

  module type TYPE = sig
    include TYPE

    val join : 'a. 'a P.t t t -> 'a P.t t
  end
end

include Weak (Type.Id)

module As_functor (M : TYPE) :
  Functor.TYPE with type 'a t = 'a M.t =
  M

module As_liftable (M : TYPE) :
  Liftable.TYPE with type 'a t = 'a M.t =
  M

module As_applicative (M : TYPE) :
  Applicative.TYPE with type 'a t = 'a M.t = struct
  include M

  let apply f x = join (map (Fun.flip map x) f)
end
