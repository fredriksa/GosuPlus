module Gosuplus
  class ResourceLoader
    def initialize(window, state_name)
      @state_name, @window = window, state_name
      @resources = {}
    end

    def load_resources
      filepath = "./lib/states/#{@state_name}_resources.txt".downcase
      File.new(filepath, 'w') unless File.file?(filepath)

      data = File.readlines(filepath)

      data.each do |content|
        content = content.strip.split(" ")
        content[2].insert(0, './assets/')
        content[1] = content[1].to_sym

        case content[0]
          when 'image'
            load_image(content[1], content[2])
          when 'font'
            load_font(content[1], content[2], content[3].to_i)
          when 'spritesheet'
            load_spritesheet(content[1], content[2], content[3].to_i, content[4].to_i)
        end
      end
      @resources
    end

    private
    def load_image(key, path)
      raise IOError, 'path must point to a existing file!' unless File.file?(path)
      @resources[key] = Gosu::Image.new(@window, path, false) if @resources[key].nil?
    end

    def load_font(key, path, height)
      raise IOError, 'path must point to a existing file!' unless File.file?(path)
      @resources[key] = Gosu::Font.new(@window, path, height) if @resources[key].nil?
    end

    def load_spritesheet(key, path, width, height)
      raise IOError, 'path must point to a existing file!' unless File.file?(path)
      @resources[key] = Gosu::Image.load_tiles(@window, path, width, height, true) if @resources[key].nil?
    end
  end
end
