open Base

module Equalizable :
  Class.Equalizable.POLY with type 'a t = 'a Maybe.t = struct
  include Maybe

  let ( = ) left right ~equal =
    match (left, right) with
    | (Nothing, Nothing) -> true
    | (Some x1, Some x2) -> equal x1 x2
    | (_, _) -> false
end

module Monad : Class.Monad.TYPE with type 'a t = 'a Maybe.t =
struct
  include Maybe

  let map f = function
    | Some x -> Some (f x)
    | Nothing -> Nothing

  let lift x = Some x

  let join = function
    | Some (Some x) -> Some x
    | Some Nothing | Nothing -> Nothing
end

module Functor = Class.Monad.As_functor (Monad)
module Liftable = Class.Monad.As_liftable (Monad)
module Applicative = Class.Monad.As_applicative (Monad)
