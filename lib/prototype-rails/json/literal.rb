module PrototypeRails
  module JSON
    class Literal < String
      def as_json(options = nil) self end
      def encode_json(encoder) self end
    end
  end
end
