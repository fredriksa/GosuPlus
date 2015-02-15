module Gosuplus
  module GUI
    class Toggleable < Button
      attr_reader :state
      def initialize(position, image, checkbox, checkmark, input_handler, key_id)
        super(position, image, input_handler, key_id)

        @checkbox = Icon.new(checkbox, position)
        @checkmark = Icon.new(checkmark, position)
        @checkbox.center(@icon)
        @checkmark.center(@icon)
        @state = :checked
      end

      def draw
        super
        ButtonRenderer.draw(@checkbox)
        ButtonRenderer.draw(@checkmark) if @state == :checked
      end

      def update(x, y)
        super(x, y)
        next_state if @active
      end

      def next_state; @state = @state == :checked ? :unchecked : :checked; end
      def set_checkbox(image); @checkbox = image; end
      def set_checker(image); @checker = image; end
    end
  end
end