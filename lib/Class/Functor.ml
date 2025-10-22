module Weak (P : Type.POLY) = struct
  module type TYPE = sig
    include Type.POLY

    val map : 'a 'b. ('a P.t -> 'b P.t) -> 'a P.t t -> 'b P.t t
  end
end

include Weak (Type.Id)

module Contravariant = struct
  module Weak (P : Type.POLY) = struct
    module type TYPE = sig
      include Type.POLY

      val map
        : 'a 'b.
        ('a P.t -> 'b P.t) -> 'b P.t t -> 'a P.t t
    end
  end

  include Weak (Type.Id)
end
