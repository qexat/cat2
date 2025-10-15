open Base

module Equalizable :
  Class.Equalizable.POLY_2
  with type ('a, 'b) t = ('a, 'b) Product.t = struct
  include Product

  let ( = )
        (Pair (a1, b1))
        (Pair (a2, b2))
        ~equal_left
        ~equal_right
    =
    equal_left a1 a2 && equal_right b1 b2
end

module Bifunctor :
  Class.Bifunctor.TYPE with type ('a, 'b) t = ('a, 'b) Product.t =
struct
  include Product

  let map f g (Pair (a, b)) = Pair (f a, g b)
end
