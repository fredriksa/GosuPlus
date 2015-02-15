class GUIRenderer
  attr_reader :visible

  def initialize(visible = true)
    @visible = visible
  end

  def draw(items)
    items.each {|key, value| value.draw} if @visible && items.size > 0
  end

  def hide
    @visible = false
  end

  def display
    @visible = true
  end
end