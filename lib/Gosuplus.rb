require 'gosu'

Dir['./Gosuplus/.*rb'].each {|file| require file}
Dir['./Gosuplus/states/.*rb'].each {|file| require file}
Dir['./Gosuplus/gui/.*rb'].each {|file| require file}
Dir['./Gosuplus/gui/form/.*rb'].each {|file| require file}

module Gosuplus
  def self.test
    puts "TEST"
  end
end