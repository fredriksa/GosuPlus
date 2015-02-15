require 'gosu'

require_relative 'Gosuplus/body'
require_relative 'Gosuplus/collision'
require_relative 'Gosuplus/contentmanager'
require_relative 'Gosuplus/drawable'
require_relative 'Gosuplus/drawable_rot'
require_relative 'Gosuplus/entity'
require_relative 'Gosuplus/essentials'
require_relative 'Gosuplus/resourceloader'
require_relative 'Gosuplus/resourcemanager'
require_relative 'Gosuplus/state'
require_relative 'Gosuplus/stateinputhandler'
require_relative 'Gosuplus/statemanager'
require_relative 'Gosuplus/staterenderer'
require_relative 'Gosuplus/stateupdater'
require_relative 'Gosuplus/timer'
require_relative 'Gosuplus/vec2'
require_relative 'Gosuplus/vec3'
require_relative 'Gosuplus/version'
require_relative 'Gosuplus/window'

require_relative 'Gosuplus/gui/button'
require_relative 'Gosuplus/gui/buttonrenderer'
require_relative 'Gosuplus/gui/gui'
require_relative 'Gosuplus/gui/guirenderer'
require_relative 'Gosuplus/gui/icon'
require_relative 'Gosuplus/gui/text'
require_relative 'Gosuplus/gui/toggleable'

require_relative 'Gosuplus/gui/form/base'
require_relative 'Gosuplus/gui/form/renderer'
require_relative 'Gosuplus/gui/form/text'

require_relative 'Gosuplus/states/example_state'

module Gosuplus
  def self.test
    puts "TEST"
  end
end