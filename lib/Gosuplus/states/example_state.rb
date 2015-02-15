class ExampleState < State
  def load
    button = GUI::Button.new(Vec2.new(50, 50), @rm[:background], @input_handler,
                             256,'Calculate', @rm[:font_default])

    button_2 = GUI::Button.new(Vec2.new(250, 50), @rm[:background], @input_handler,
                             256,'Calculate', @rm[:font_default])

    checkbox = GUI::Toggleable.new(Vec2.new(50, 100), @rm[:background], @rm[:checkbox],
                                   @rm[:checkmark], @input_handler, 256)

    checkbox_2 = GUI::Toggleable.new(Vec2.new(50, 150), @rm[:background], @rm[:checkbox],
                                   @rm[:checkmark], @input_handler, 256)

    button.timer = Timer.new(120)
    button_2.timer = Timer.new(120)
    checkbox.timer = Timer.new(30)
    checkbox_2.timer = Timer.new(30, 0)

    @GUI.add_button(:default, button)
    @GUI.add_button(:button_2, button_2)
    @GUI.add_button(:checkbox, checkbox)
    @GUI.add_button(:checkbox_2, checkbox_2)
  end

  def update
    super
    puts "CLICKED 2" if @GUI.get_button(:button_2).active?
    puts "clicked" if @GUI.get_button(:default).active?
    puts "CHECKED" if @GUI.get_button(:checkbox).active?
  end
end