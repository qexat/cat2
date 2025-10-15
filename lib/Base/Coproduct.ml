type (_, _) t =
  | Left : 'a 'b. 'a -> ('a, 'b) t
  | Right : 'a 'b. 'b -> ('a, 'b) t
