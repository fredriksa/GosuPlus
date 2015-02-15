module Gosuplus
  class ButtonRenderer
    def self.draw(*entities)
      entities.each {|entity| entity.draw unless entity.is_a? NilClass}
    end
  end
end