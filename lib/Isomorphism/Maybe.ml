let base_to_constructed
  : type a. a Base.Maybe.t -> a Constructed.Maybe.t
  = function
  | Some value -> Left value
  | Nothing -> Right ()

let base_of_constructed
  : type a. a Constructed.Maybe.t -> a Base.Maybe.t
  = function
  | Left value -> Some value
  | Right () -> Nothing
