module Gosuplus
  module GUI
    module Form
      class Renderer
        def self.draw(*entities)
          entities.each {|entity| entity.draw unless entity.is_a? NilClass}
        end
      end
    end
  end
end