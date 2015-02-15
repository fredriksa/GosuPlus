module Gosuplus
  module GUI
    module Form
      class Base
        def initialize(position, image, input_handler, key_id, font, text = nil)
          @icon = Icon.new(image, position)
          @input_handler, @key_id, @font = input_handler, key_id, font

          @visible_text = text ? text : String
          @actual_text = String
        end

        def draw

        end

        def update(x, y)

        end

        def activated?(x, y)

        end
      end
    end
  end
end