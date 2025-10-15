open Base

module Mono_mono (L : Type.MONO) (R : Type.MONO) :
  Type.MONO with type t = (L.t, R.t) Product.t = struct
  type t = (L.t, R.t) Product.t
end

module Mono_poly (L : Type.MONO) (R : Type.POLY) :
  Type.POLY with type 'a t = (L.t, 'a R.t) Product.t = struct
  type 'a t = (L.t, 'a R.t) Product.t
end

module Poly_mono (L : Type.POLY) (R : Type.MONO) :
  Type.POLY with type 'a t = ('a L.t, R.t) Product.t = struct
  type 'a t = ('a L.t, R.t) Product.t
end

module Poly_poly (L : Type.POLY) (R : Type.POLY) :
  Type.POLY_2 with type ('a, 'b) t = ('a L.t, 'b R.t) Product.t =
struct
  type ('a, 'b) t = ('a L.t, 'b R.t) Product.t
end

module Poly_homogeneous (L : Type.POLY) (R : Type.POLY) :
  Type.POLY with type 'a t = ('a L.t, 'a R.t) Product.t = struct
  type 'a t = ('a L.t, 'a R.t) Product.t
end
