module Gosuplus
  module Essentials
    def center(area)
      @body.position = Vec2.new(area.body.position.x + area.body.width/2 - @body.width/2, area.body.position.y + area.body.height/2 - @body.height/2)
    end
  end
end