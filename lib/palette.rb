# This module defines a color palette for the Catppuccin theme.
# The Palette class holds various themes, each with a set of colors
# defined using RGB, HEX, and HSL representations.

module Catppuccin
  class Palette
    attr_reader :theme

    def initialize
      @theme = {
        latte: {
          name: 'Latte',
          colors: {
            rosewater: {
              rgb: { r: 220, g: 138, b: 120 },
              hex: '#dc8a78',
              hsl: { h: 11, s: 59, l: 67 }
            },
            flamingo: {
              rgb: { r: 221, g: 120, b: 120 },
              hex: '#dd7878',
              hsl: { h: 0, s: 60, l: 67 }
            },
            pink: {
              rgb: { r: 234, g: 118, b: 203 },
              hex: '#ea76cb',
              hsl: { h: 316, s: 73, l: 69 }
            },
            mauve: {
              rgb: { r: 136, g: 57, b: 239 },
              hex: '#8839ef',
              hsl: { h: 266, s: 85, l: 58 }
            },
            red: {
              rgb: { r: 210, g: 15, b: 57 },
              hex: '#d20f39',
              hsl: { h: 347, s: 87, l: 44 }
            },
            maroon: {
              rgb: { r: 230, g: 69, b: 83 },
              hex: '#e64553',
              hsl: { h: 355, s: 76, l: 59 }
            },
            peach: {
              rgb: { r: 254, g: 100, b: 11 },
              hex: '#fe640b',
              hsl: { h: 22, s: 99, l: 52 }
            },
            yellow: {
              rgb: { r: 223, g: 142, b: 29 },
              hex: '#df8e1d',
              hsl: { h: 35, s: 77, l: 49 }
            },
            green: {
              rgb: { r: 64, g: 160, b: 43 },
              hex: '#40a02b',
              hsl: { h: 109, s: 58, l: 40 }
            },
            teal: {
              rgb: { r: 23, g: 146, b: 153 },
              hex: '#179299',
              hsl: { h: 183, s: 74, l: 35 }
            },
            sky: {
              rgb: { r: 4, g: 165, b: 229 },
              hex: '#04a5e5',
              hsl: { h: 197, s: 97, l: 46 }
            },
            sapphire: {
              rgb: { r: 32, g: 159, b: 181 },
              hex: '#209fb5',
              hsl: { h: 189, s: 70, l: 42 }
            },
            blue: {
              rgb: { r: 30, g: 102, b: 245 },
              hex: '#1e66f5',
              hsl: { h: 220, s: 91, l: 54 }
            },
            lavender: {
              rgb: { r: 114, g: 135, b: 253 },
              hex: '#7287fd',
              hsl: { h: 231, s: 97, l: 72 }
            },
            text: {
              rgb: { r: 76, g: 79, b: 105 },
              hex: '#4c4f69',
              hsl: { h: 234, s: 16, l: 35 }
            },
            subtext1: {
              rgb: { r: 92, g: 95, b: 119 },
              hex: '#5c5f77',
              hsl: { h: 233, s: 13, l: 41 }
            },
            subtext0: {
              rgb: { r: 108, g: 111, b: 133 },
              hex: '#6c6f85',
              hsl: { h: 233, s: 10, l: 47 }
            },
            overlay2: {
              rgb: { r: 124, g: 127, b: 147 },
              hex: '#7c7f93',
              hsl: { h: 232, s: 10, l: 53 }
            },
            overlay1: {
              rgb: { r: 140, g: 143, b: 161 },
              hex: '#8c8fa1',
              hsl: { h: 231, s: 10, l: 59 }
            },
            overlay0: {
              rgb: { r: 156, g: 160, b: 176 },
              hex: '#9ca0b0',
              hsl: { h: 228, s: 11, l: 65 }
            },
            surface2: {
              rgb: { r: 172, g: 176, b: 190 },
              hex: '#acb0be',
              hsl: { h: 227, s: 12, l: 71 }
            },
            surface1: {
              rgb: { r: 188, g: 192, b: 204 },
              hex: '#bcc0cc',
              hsl: { h: 225, s: 14, l: 77 }
            },
            surface0: {
              rgb: { r: 204, g: 208, b: 218 },
              hex: '#ccd0da',
              hsl: { h: 223, s: 16, l: 83 }
            },
            base: {
              rgb: { r: 239, g: 241, b: 245 },
              hex: '#eff1f5',
              hsl: { h: 220, s: 23, l: 95 }
            },
            mantle: {
              rgb: { r: 230, g: 233, b: 239 },
              hex: '#e6e9ef',
              hsl: { h: 220, s: 22, l: 92 }
            },
            crust: {
              rgb: { r: 220, g: 224, b: 232 },
              hex: '#dce0e8',
              hsl: { h: 220, s: 21, l: 89 }
            }
          }
        },
        frappe: {
          name: 'Frappé',
          colors: {
            rosewater: {
              rgb: { r: 242, g: 213, b: 207 },
              hex: '#f2d5cf',
              hsl: { h: 10, s: 57, l: 88 }
            },
            flamingo: {
              rgb: { r: 238, g: 190, b: 190 },
              hex: '#eebebe',
              hsl: { h: 0, s: 59, l: 84 }
            },
            pink: {
              rgb: { r: 244, g: 184, b: 228 },
              hex: '#f4b8e4',
              hsl: { h: 316, s: 73, l: 84 }
            },
            mauve: {
              rgb: { r: 202, g: 158, b: 230 },
              hex: '#ca9ee6',
              hsl: { h: 277, s: 59, l: 76 }
            },
            red: {
              rgb: { r: 231, g: 130, b: 132 },
              hex: '#e78284',
              hsl: { h: 359, s: 68, l: 71 }
            },
            maroon: {
              rgb: { r: 234, g: 153, b: 156 },
              hex: '#ea999c',
              hsl: { h: 358, s: 66, l: 76 }
            },
            peach: {
              rgb: { r: 239, g: 159, b: 118 },
              hex: '#ef9f76',
              hsl: { h: 20, s: 79, l: 70 }
            },
            yellow: {
              rgb: { r: 229, g: 200, b: 144 },
              hex: '#e5c890',
              hsl: { h: 40, s: 62, l: 73 }
            },
            green: {
              rgb: { r: 166, g: 209, b: 137 },
              hex: '#a6d189',
              hsl: { h: 96, s: 44, l: 68 }
            },
            teal: {
              rgb: { r: 129, g: 200, b: 190 },
              hex: '#81c8be',
              hsl: { h: 172, s: 39, l: 65 }
            },
            sky: {
              rgb: { r: 153, g: 209, b: 219 },
              hex: '#99d1db',
              hsl: { h: 189, s: 48, l: 73 }
            },
            sapphire: {
              rgb: { r: 133, g: 193, b: 220 },
              hex: '#85c1dc',
              hsl: { h: 199, s: 55, l: 69 }
            },
            blue: {
              rgb: { r: 140, g: 170, b: 238 },
              hex: '#8caaee',
              hsl: { h: 222, s: 74, l: 74 }
            },
            lavender: {
              rgb: { r: 186, g: 187, b: 241 },
              hex: '#babbf1',
              hsl: { h: 239, s: 66, l: 84 }
            },
            text: {
              rgb: { r: 198, g: 208, b: 245 },
              hex: '#c6d0f5',
              hsl: { h: 227, s: 70, l: 87 }
            },
            subtext1: {
              rgb: { r: 181, g: 191, b: 226 },
              hex: '#b5bfe2',
              hsl: { h: 227, s: 44, l: 80 }
            },
            subtext0: {
              rgb: { r: 165, g: 173, b: 206 },
              hex: '#a5adce',
              hsl: { h: 228, s: 29, l: 73 }
            },
            overlay2: {
              rgb: { r: 148, g: 156, b: 187 },
              hex: '#949cbb',
              hsl: { h: 228, s: 22, l: 66 }
            },
            overlay1: {
              rgb: { r: 131, g: 139, b: 167 },
              hex: '#838ba7',
              hsl: { h: 227, s: 17, l: 58 }
            },
            overlay0: {
              rgb: { r: 115, g: 121, b: 148 },
              hex: '#737994',
              hsl: { h: 229, s: 13, l: 52 }
            },
            surface2: {
              rgb: { r: 98, g: 104, b: 128 },
              hex: '#626880',
              hsl: { h: 228, s: 13, l: 44 }
            },
            surface1: {
              rgb: { r: 81, g: 87, b: 109 },
              hex: '#51576d',
              hsl: { h: 227, s: 15, l: 37 }
            },
            surface0: {
              rgb: { r: 65, g: 69, b: 89 },
              hex: '#414559',
              hsl: { h: 230, s: 16, l: 30 }
            },
            base: {
              rgb: { r: 48, g: 52, b: 70 },
              hex: '#303446',
              hsl: { h: 229, s: 19, l: 23 }
            },
            mantle: {
              rgb: { r: 41, g: 44, b: 60 },
              hex: '#292c3c',
              hsl: { h: 231, s: 19, l: 20 }
            },
            crust: {
              rgb: { r: 35, g: 38, b: 52 },
              hex: '#232634',
              hsl: { h: 229, s: 20, l: 17 }
            }
          }
        },
        macchiato: {
          name: 'Macchiato',
          colors: {
            rosewater: {
              rgb: { r: 244, g: 219, b: 214 },
              hex: '#f4dbd6',
              hsl: { h: 10, s: 58, l: 90 }
            },
            flamingo: {
              rgb: { r: 240, g: 198, b: 198 },
              hex: '#f0c6c6',
              hsl: { h: 0, s: 58, l: 86 }
            },
            pink: {
              rgb: { r: 245, g: 189, b: 230 },
              hex: '#f5bde6',
              hsl: { h: 316, s: 74, l: 85 }
            },
            mauve: {
              rgb: { r: 198, g: 160, b: 246 },
              hex: '#c6a0f6',
              hsl: { h: 267, s: 83, l: 80 }
            },
            red: {
              rgb: { r: 237, g: 135, b: 150 },
              hex: '#ed8796',
              hsl: { h: 351, s: 74, l: 73 }
            },
            maroon: {
              rgb: { r: 238, g: 153, b: 160 },
              hex: '#ee99a0',
              hsl: { h: 355, s: 71, l: 77 }
            },
            peach: {
              rgb: { r: 245, g: 169, b: 127 },
              hex: '#f5a97f',
              hsl: { h: 21, s: 86, l: 73 }
            },
            yellow: {
              rgb: { r: 238, g: 212, b: 159 },
              hex: '#eed49f',
              hsl: { h: 40, s: 70, l: 78 }
            },
            green: {
              rgb: { r: 166, g: 218, b: 149 },
              hex: '#a6da95',
              hsl: { h: 105, s: 48, l: 72 }
            },
            teal: {
              rgb: { r: 139, g: 213, b: 202 },
              hex: '#8bd5ca',
              hsl: { h: 171, s: 47, l: 69 }
            },
            sky: {
              rgb: { r: 145, g: 215, b: 227 },
              hex: '#91d7e3',
              hsl: { h: 189, s: 59, l: 73 }
            },
            sapphire: {
              rgb: { r: 125, g: 196, b: 228 },
              hex: '#7dc4e4',
              hsl: { h: 199, s: 66, l: 69 }
            },
            blue: {
              rgb: { r: 138, g: 173, b: 244 },
              hex: '#8aadf4',
              hsl: { h: 220, s: 83, l: 75 }
            },
            lavender: {
              rgb: { r: 183, g: 189, b: 248 },
              hex: '#b7bdf8',
              hsl: { h: 234, s: 82, l: 85 }
            },
            text: {
              rgb: { r: 202, g: 211, b: 245 },
              hex: '#cad3f5',
              hsl: { h: 227, s: 68, l: 88 }
            },
            subtext1: {
              rgb: { r: 184, g: 192, b: 224 },
              hex: '#b8c0e0',
              hsl: { h: 228, s: 39, l: 80 }
            },
            subtext0: {
              rgb: { r: 165, g: 173, b: 203 },
              hex: '#a5adcb',
              hsl: { h: 227, s: 27, l: 72 }
            },
            overlay2: {
              rgb: { r: 147, g: 154, b: 183 },
              hex: '#939ab7',
              hsl: { h: 228, s: 20, l: 65 }
            },
            overlay1: {
              rgb: { r: 128, g: 135, b: 162 },
              hex: '#8087a2',
              hsl: { h: 228, s: 15, l: 57 }
            },
            overlay0: {
              rgb: { r: 110, g: 115, b: 141 },
              hex: '#6e738d',
              hsl: { h: 230, s: 12, l: 49 }
            },
            surface2: {
              rgb: { r: 91, g: 96, b: 120 },
              hex: '#5b6078',
              hsl: { h: 230, s: 14, l: 41 }
            },
            surface1: {
              rgb: { r: 73, g: 77, b: 100 },
              hex: '#494d64',
              hsl: { h: 231, s: 16, l: 34 }
            },
            surface0: {
              rgb: { r: 54, g: 58, b: 79 },
              hex: '#363a4f',
              hsl: { h: 230, s: 19, l: 26 }
            },
            base: {
              rgb: { r: 36, g: 39, b: 58 },
              hex: '#24273a',
              hsl: { h: 232, s: 23, l: 18 }
            },
            mantle: {
              rgb: { r: 30, g: 32, b: 48 },
              hex: '#1e2030',
              hsl: { h: 233, s: 23, l: 15 }
            },
            crust: {
              rgb: { r: 24, g: 25, b: 38 },
              hex: '#181926',
              hsl: { h: 236, s: 23, l: 12 }
            }
          }
        },
        mocha: {
          name: 'Mocha',
          colors: {
            rosewater: {
              rgb: { r: 245, g: 224, b: 220 },
              hex: '#f5e0dc',
              hsl: { h: 10, s: 56, l: 91 }
            },
            flamingo: {
              rgb: { r: 242, g: 205, b: 205 },
              hex: '#f2cdcd',
              hsl: { h: 0, s: 59, l: 88 }
            },
            pink: {
              rgb: { r: 245, g: 194, b: 231 },
              hex: '#f5c2e7',
              hsl: { h: 316, s: 72, l: 86 }
            },
            mauve: {
              rgb: { r: 203, g: 166, b: 247 },
              hex: '#cba6f7',
              hsl: { h: 267, s: 84, l: 81 }
            },
            red: {
              rgb: { r: 243, g: 139, b: 168 },
              hex: '#f38ba8',
              hsl: { h: 343, s: 81, l: 75 }
            },
            maroon: {
              rgb: { r: 235, g: 160, b: 172 },
              hex: '#eba0ac',
              hsl: { h: 350, s: 65, l: 77 }
            },
            peach: {
              rgb: { r: 250, g: 179, b: 135 },
              hex: '#fab387',
              hsl: { h: 23, s: 92, l: 75 }
            },
            yellow: {
              rgb: { r: 249, g: 226, b: 175 },
              hex: '#f9e2af',
              hsl: { h: 41, s: 86, l: 83 }
            },
            green: {
              rgb: { r: 166, g: 227, b: 161 },
              hex: '#a6e3a1',
              hsl: { h: 115, s: 54, l: 76 }
            },
            teal: {
              rgb: { r: 148, g: 226, b: 213 },
              hex: '#94e2d5',
              hsl: { h: 170, s: 57, l: 73 }
            },
            sky: {
              rgb: { r: 137, g: 220, b: 235 },
              hex: '#89dceb',
              hsl: { h: 189, s: 71, l: 73 }
            },
            sapphire: {
              rgb: { r: 116, g: 199, b: 236 },
              hex: '#74c7ec',
              hsl: { h: 199, s: 76, l: 69 }
            },
            blue: {
              rgb: { r: 137, g: 180, b: 250 },
              hex: '#89b4fa',
              hsl: { h: 217, s: 92, l: 76 }
            },
            lavender: {
              rgb: { r: 180, g: 190, b: 254 },
              hex: '#b4befe',
              hsl: { h: 232, s: 97, l: 85 }
            },
            text: {
              rgb: { r: 205, g: 214, b: 244 },
              hex: '#cdd6f4',
              hsl: { h: 226, s: 64, l: 88 }
            },
            subtext1: {
              rgb: { r: 186, g: 194, b: 222 },
              hex: '#bac2de',
              hsl: { h: 227, s: 35, l: 80 }
            },
            subtext0: {
              rgb: { r: 166, g: 173, b: 200 },
              hex: '#a6adc8',
              hsl: { h: 228, s: 24, l: 72 }
            },
            overlay2: {
              rgb: { r: 147, g: 153, b: 178 },
              hex: '#9399b2',
              hsl: { h: 228, s: 17, l: 64 }
            },
            overlay1: {
              rgb: { r: 127, g: 132, b: 156 },
              hex: '#7f849c',
              hsl: { h: 230, s: 13, l: 55 }
            },
            overlay0: {
              rgb: { r: 108, g: 112, b: 134 },
              hex: '#6c7086',
              hsl: { h: 231, s: 11, l: 47 }
            },
            surface2: {
              rgb: { r: 88, g: 91, b: 112 },
              hex: '#585b70',
              hsl: { h: 233, s: 12, l: 39 }
            },
            surface1: {
              rgb: { r: 69, g: 71, b: 90 },
              hex: '#45475a',
              hsl: { h: 234, s: 13, l: 31 }
            },
            surface0: {
              rgb: { r: 49, g: 50, b: 68 },
              hex: '#313244',
              hsl: { h: 237, s: 16, l: 23 }
            },
            base: {
              rgb: { r: 30, g: 30, b: 46 },
              hex: '#1e1e2e',
              hsl: { h: 240, s: 21, l: 15 }
            },
            mantle: {
              rgb: { r: 24, g: 24, b: 37 },
              hex: '#181825',
              hsl: { h: 240, s: 21, l: 12 }
            },
            crust: {
              rgb: { r: 17, g: 17, b: 27 },
              hex: '#11111b',
              hsl: { h: 240, s: 23, l: 9 }
            }
          }
        }
      }
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
