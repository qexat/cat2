open Base

module Monad : Class.Monad.TYPE with type 'a t = 'a Box.t =
struct
  include Box

  let map f (Box x) = Box (f x)
  let lift x = Box x
  let join (Box (Box x)) = Box x
end

module Functor = Class.Monad.As_functor (Monad)
module Liftable = Class.Monad.As_liftable (Monad)
module Applicative = Class.Monad.As_applicative (Monad)
