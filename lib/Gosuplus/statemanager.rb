module Gosuplus
  class StateManager
    def initialize(window)
      @states = []
      @index = 0
    end

    def update
      @states[@index].update
    end

    def draw
      @states[@index].draw
    end

    def handle_input(key, type)
      @states[@index].handle_input(key, type)
    end

    def next
      @states[@index].on_exit
      @states[@index].on_load
      @index += 1
    end

    def previous
      @states[@index].on_exit
      @states[@index].on_load
      @index -= 1
    end

    def add(state)
      state.on_load unless @states.size > 0

      @states << state
    end
  end
end