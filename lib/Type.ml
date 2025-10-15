module type MONO = sig
  type t
end

module type POLY = sig
  type 'a t
end

module type POLY_2 = sig
  type ('a, 'b) t
end

module Id : POLY with type 'a t = 'a = struct
  type 'a t = 'a
end

module Const : POLY_2 with type ('a, _) t = 'a = struct
  type ('a, _) t = 'a
end
