# This module defines a color palette for the Catppuccin theme.
# The Palette class holds various themes, each with a set of colors
# defined using RGB, HEX, and HSL representations.

require 'json'

module Catppuccin
  class Palette
    attr_reader :theme

    def initialize
      @theme = {}
      load_palette
    end

    def load_palette
      json_data = File.read('palette.json')
      data = JSON.parse(json_data)
      @theme = data.each_with_object({}) do |(theme_name, theme_data), result|
        next if theme_name == 'version'

        result[theme_name.to_sym] = {
          name: theme_data['name'],
          emoji: theme_data['emoji'],
          order: theme_data['order'],
          dark: theme_data['dark'],
          colors: theme_data['colors'].each_with_object({}) do |(color_name, color_data), color_result|
            color_result[color_name.to_sym] = {
              name: color_data['name'],
              order: color_data['order'],
              hex: color_data['hex'],
              rgb: {
                r: color_data['rgb']['r'],
                g: color_data['rgb']['g'],
                b: color_data['rgb']['b']
              },
              hsl: {
                h: color_data['hsl']['h'],
                s: color_data['hsl']['s'],
                l: color_data['hsl']['l']
              },
              accent: color_data['accent']
            }
          end
        }
      end
    end

    # get color
    def self.get(theme_name = nil, color_name = nil, format = nil)
      palette = new

      theme_names = if theme_name.nil?
                      palette.theme.keys
                    else
                      [theme_name.to_sym]
                    end

      output = ''

      if color_name.nil? && !format.nil?
        theme_names.each do |theme_name|
          theme = palette.theme[theme_name]
          theme_output = "#{theme[:name]}:\n"
          theme[:colors].each_value do |color|
            theme_output += "#{format_color(color, format)}\n"
          end
          output += "#{theme_output.strip}\n\n"
        end
      elsif !color_name.nil? && theme_name.nil?
        theme_names.each do |theme_name|
          theme = palette.theme[theme_name]
          color = theme[:colors][color_name.to_sym]
          output += if color.nil?
                      "Color #{color_name} not found in theme #{theme_name}\n"
                    else
                      "#{theme[:name]}: #{format_color(color, format)}\n"
                    end
        end
      else
        theme_names.each do |theme_name|
          theme = palette.theme[theme_name]

          if color_name.nil?
            theme_output = "#{theme[:name]}:\n"
            theme[:colors].each do |color_name, color|
              theme_output += "#{color_name}: #{format_color(color, format)}\n"
            end
            output += "#{theme_output.strip}\n\n"
          else
            color_name = color_name.to_sym
            color = theme[:colors][color_name]

            output += if color.nil?
                        "Color #{color_name} not found in theme #{theme_name}\n"
                      else
                        "#{format_color(color, format)}\n"
                      end
          end
        end
      end

      output.strip
    end

    def self.format_color(color, format)
      case format
      when nil
        "##{color[:hex][1..]}, rgb(#{color[:rgb][:r]}, #{color[:rgb][:g]}, #{color[:rgb][:b]}), hsl(#{color[:hsl][:h]}deg, #{color[:hsl][:s]}%, #{color[:hsl][:l]}%)\n"
      when :rgb
        "rgb(#{color[:rgb][:r]}, #{color[:rgb][:g]}, #{color[:rgb][:b]})"
      when :hsl
        "hsl(#{color[:hsl][:h]}deg, #{color[:hsl][:s]}%, #{color[:hsl][:l]}%)"
      when :hex
        "##{color[:hex][1..]}"
      else
        (color[format.to_sym]).to_s
      end
    end

    # get random color
    def self.random_color(theme_name = nil, format = nil)
      palette = new

      theme_names = if theme_name.nil?
                      %i[latte frappe macchiato mocha]
                    else
                      [theme_name.to_sym]
                    end

      selected_theme_name = theme_names.sample
      colors = palette.theme[selected_theme_name][:colors].keys
      selected_color_name = colors.sample

      color = palette.theme[selected_theme_name][:colors][selected_color_name]

      output = ''
      output += if theme_name.nil?
                  "#{selected_theme_name}: #{selected_color_name}: "
                else
                  "#{selected_color_name}: "
                end

      case format
      when nil
        output += "##{color[:hex][1..]}, rgb(#{color[:rgb][:r]}, #{color[:rgb][:g]}, #{color[:rgb][:b]}), hsl(#{color[:hsl][:h]}deg, #{color[:hsl][:s]}%, #{color[:hsl][:l]}%)"
      when :rgb
        output += "rgb(#{color[:rgb][:r]}, #{color[:rgb][:g]}, #{color[:rgb][:b]})"
      when :hsl
        output += "hsl(#{color[:hsl][:h]}deg, #{color[:hsl][:s]}%, #{color[:hsl][:l]}%)"
      when :hex
        output += "##{color[:hex][1..]}"
      else
        output += (color[format.to_sym]).to_s
      end

      output.strip
    end
  end
end
