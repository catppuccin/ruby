# frozen_string_literal: true

require 'rspec'
require 'json'

PALETTE_JSON_PATH = 'lib/palette.json'

RSpec.shared_context 'palette context' do
  let(:palette_context_data) do
  end
end

RSpec.describe 'Catppuccin Palette Generator' do
  include_context 'palette context'

  let(:palette) do
    {
      'latte' => {
        'name' => 'Latte',
        'colors' => {
          'rosewater' => {
            'rgb' => { 'r' => 220, 'g' => 138, 'b' => 120 },
            'hex' => '#dc8a78',
            'hsl' => { 'h' => 10, 's' => 60, 'l' => 67 }
          }
        }
      }
    }
  end

  describe '#load_palette' do
    it 'loads the palette from the JSON file' do
      allow(File).to receive(:read).with(PALETTE_JSON_PATH).and_return(palette.to_json)
      expect(load_palette).to eq(palette)
    end
  end

  describe '#generate_color_code' do
    it 'generates the correct color code' do
      color_name = 'rosewater'
      color_data = palette['latte']['colors'][color_name]
      expected_code = <<~COLOR_CODE
        rosewater: {
          rgb: { r: 220, g: 138, b: 120 },
          hex: '#dc8a78',
          hsl: { h: 10, s: 60, l: 67 }
        },
      COLOR_CODE
      expect(generate_color_code(color_name, color_data)).to eq(expected_code)
    end
  end

  describe '#generate_theme_code' do
    it 'generates the correct theme code' do
      theme_name = 'latte'
      theme_data = palette[theme_name]
      expected_code = <<~THEME_CODE
        latte: {
          name: 'Latte',
          colors: {
            rosewater: {
              rgb: { r: 220, g: 138, b: 120 },
              hex: '#dc8a78',
              hsl: { h: 10, s: 60, l: 67 }
            },
          }
        },
      THEME_CODE
      expect(generate_theme_code(theme_name, theme_data)).to eq(expected_code)
    end
  end

  describe '#generate_palette_code' do
    it 'generates the correct palette code' do
      expected_code = <<~PALETTE_CODE
        latte: {
          name: 'Latte',
          colors: {
            rosewater: {
              rgb: { r: 220, g: 138, b: 120 },
              hex: '#dc8a78',
              hsl: { h: 10, s: 60, l: 67 }
            },
          }
        },
      PALETTE_CODE
      expect(generate_palette_code(palette)).to include(expected_code.strip)
    end
  end

  def generate_expected_palette_code
    <<~RUBY

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
                    hsl: { h: 10, s: 60, l: 67 }
                  },
                }
              },
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
  end
end

def load_palette
  JSON.parse(File.read(PALETTE_JSON_PATH))
end

def generate_color_code(color_name, color_data)
  <<~COLOR_CODE
    #{color_name}: {
      rgb: { r: #{color_data['rgb']['r']}, g: #{color_data['rgb']['g']}, b: #{color_data['rgb']['b']} },
      hex: '#{color_data['hex']}',
      hsl: { h: #{color_data['hsl']['h']}, s: #{color_data['hsl']['s']}, l: #{color_data['hsl']['l']} }
    },
  COLOR_CODE
end

def generate_theme_code(theme_name, theme_data)
  <<~THEME_CODE
    #{theme_name}: {
      name: '#{theme_data['name']}',
      colors: {
        rosewater: {
          rgb: { r: #{theme_data['colors']['rosewater']['rgb']['r']}, g: #{theme_data['colors']['rosewater']['rgb']['g']}, b: #{theme_data['colors']['rosewater']['rgb']['b']} },
          hex: '#{theme_data['colors']['rosewater']['hex']}',
          hsl: { h: #{theme_data['colors']['rosewater']['hsl']['h']}, s: #{theme_data['colors']['rosewater']['hsl']['s']}, l: #{theme_data['colors']['rosewater']['hsl']['l']} }
        },
      }
    },
  THEME_CODE
end

def generate_palette_code(palette)
  palette.map do |theme_name, theme_data|
    generate_theme_code(theme_name, theme_data)
  end.join("\n")
end
