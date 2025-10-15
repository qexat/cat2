module type MONO = sig
  type t

  val ( = ) : t -> t -> bool
end

module type POLY = sig
  type 'a t

  val ( = ) : 'a t -> 'a t -> equal:('a -> 'a -> bool) -> bool
end

module type POLY_2 = sig
  type ('a, 'b) t

  val ( = )
    :  ('a, 'b) t
    -> ('a, 'b) t
    -> equal_left:('a -> 'a -> bool)
    -> equal_right:('b -> 'b -> bool)
    -> bool
end
