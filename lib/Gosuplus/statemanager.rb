module Gosuplus
  class StateManager
    def initialize(window)
      @states = []
      @index = 0
    end

    def update
      @states[@index].update if @states.size > 0
      self.next if @states[@index].finished
    end

    def draw
      @states[@index].draw if @states.size > 0
    end

    def handle_input(key, type)
      @states[@index].handle_input(key, type) if @states.size > 0
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