<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://www.ruby-lang.org/en">Ruby</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/ruby/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/ruby?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/ruby/issues"><img src="https://img.shields.io/github/issues/catppuccin/ruby?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/ruby/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/ruby?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

## Installation

```bash
gem install catppuccin
```

## Usage

```ruby
require 'catppuccin'

palette = Catppuccin::Palette.new

# Get hex color
puts palette.color_hex(:latte, :red) # Output: #d20f39

# Get RGB color as a string
puts palette.color_rgb_string(:frappe, :blue) # Output: rgb(140, 170, 238)

# Get RGB color as a hash
puts palette.color_rgb(:mocha, :text) # Output: { r: 205, g: 214, b: 244 }

# List all themes
puts palette.list_themes # Output: [:latte, :frappe, :macchiato, :mocha]

# List all colors for a theme
puts palette.list_colors(:macchiato) # Output: [:rosewater, :flamingo, :pink, :mauve, :red, :maroon, :peach, :yellow, :green, :teal, :sky, :sapphire, :blue, :lavender, :text, :subtext1, :subtext0, :overlay2, :overlay1, :overlay0, :surface2, :surface1, :surface0, :base, :mantle, :crust]
```

## 💝 Thanks to

- [acm-wq](https://github.com/acm-wq)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
