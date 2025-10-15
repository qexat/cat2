open Base

module Equalizable :
  Class.Equalizable.POLY_2
  with type ('a, 'b) t = ('a, 'b) Coproduct.t = struct
  include Coproduct

  let ( = ) coprod1 coprod2 ~equal_left ~equal_right =
    match (coprod1, coprod2) with
    | (Left a1, Left a2) -> equal_left a1 a2
    | (Right b1, Right b2) -> equal_right b1 b2
    | (_, _) -> false
end

module Bifunctor :
  Class.Bifunctor.TYPE
  with type ('a, 'b) t = ('a, 'b) Coproduct.t = struct
  include Coproduct

  let map f g = function
    | Left a -> Left (f a)
    | Right b -> Right (g b)
end
