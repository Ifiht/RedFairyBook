![xUnit Tests](https://github.com/Ifiht/RedFairyBook/actions/workflows/ruby.yml/badge.svg)
![Formatting Check](https://github.com/Ifiht/RedFairyBook/actions/workflows/syntax.yml/badge.svg)

<img src="https://raw.githubusercontent.com/Ifiht/RedFairyBook/main/resources/dhl2_rose_by_Rasgar.png" width="109" height="109">

# RedFairyBook
Where to store all these secrets? Ruby library to store & retrieve user preferences/secrets in the `$HOME/.config` directory.

## Usage
```ruby
holly = RedFairy.new("berry")
holly.set("oak", "on fire")
holly.get("oak")  #=> returns: "on fire"
holly.save  # writes changes to file
```
_Calling `RedFairy.new()` will restore any previous save, as long as you use the same string as before._
