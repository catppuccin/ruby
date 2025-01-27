# frozen_string_literal: true

require 'json'

PALETTE_JSON_PATH = File.join(__dir__, 'palette.json')

def load_palette
  JSON.parse(File.read(PALETTE_JSON_PATH))
end

def generate_theme_code(theme_name, theme_data)
  theme_code = "        #{theme_name}: {\n"
  theme_code += "          name: '#{theme_data['name']}',\n"
  theme_code += "          colors: {\n"

  if theme_data['colors'].is_a?(Hash)
    theme_data['colors'].each do |color_name, color_data|
      theme_code += "            #{color_name}: {\n"
      theme_code += "              rgb: { r: #{color_data['rgb']['r']}, g: #{color_data['rgb']['g']}, b: #{color_data['rgb']['b']} },\n"
      theme_code += "              hex: '#{color_data['hex']}',\n"
      theme_code += "              hsl: { h: #{color_data['hsl']['h']}, s: #{color_data['hsl']['s']}, l: #{color_data['hsl']['l']} }\n"
      theme_code += "            },\n"
    end
  else
    puts "Warning: '#{theme_name}' does not have a valid 'colors' hash."
  end

  theme_code += "          }\n"
  theme_code += "        },\n"
  theme_code
end

def generate_palette_code(palette)
  ruby_code = <<~RUBY

    module Catppuccin
      class Palette
        attr_reader :theme

        def initialize
          @theme = {
  RUBY

  palette.each do |theme_name, theme_data|
    next if theme_name == 'version'

    ruby_code += generate_theme_code(theme_name.to_sym, theme_data)
  end

  ruby_code += <<~RUBY
          }
        end

        def color_hex(theme_name, color_name)
          theme = @theme[theme_name]
          return nil unless theme

          color = theme[:colors][color_name]
          color ? color[:hex] : nil
        end

        def list_themes
          @theme.keys
        end

        def list_colors(theme_name)
          theme = @theme[theme_name]
          theme ? theme[:colors].keys : []
        end

        def color_rgb_string(theme_name, color_name)
          theme = @theme[theme_name]
          return nil unless theme

          color = theme[:colors][color_name]
          return nil unless color

          rgb = color[:rgb]
          "rgb(\#{rgb[:r]}, \#{rgb[:g]}, \#{rgb[:b]})"
        end

        def color_rgb(theme_name, color_name)
          theme = @theme[theme_name]
          return nil unless theme

          color = theme[:colors][color_name]
          color ? color[:rgb] : nil
        end
      end
    end
  RUBY

  ruby_code
end

def write_generated_code(code)
  output_file_path = File.join(__dir__, 'catppuccin.rb')
  File.write(output_file_path, code)
  puts 'Generated catppuccin.rb'
end

def main
  palette = load_palette
  generated_code = generate_palette_code(palette)
  write_generated_code(generated_code)
end

# Run the script
main
