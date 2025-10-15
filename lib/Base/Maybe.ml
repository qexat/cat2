type _ t =
  | Nothing : 'a. 'a t
  | Some : 'a. 'a -> 'a t
