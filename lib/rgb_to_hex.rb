# frozen_string_literal: true

class Convertor
  def rgb(r, g, b)
    args = [r, g, b]
    bring_within_bounds(args)
    hex = create_hex(args)
    letters_map(hex)
    "#{hex.join}"
  end

  private

  def bring_within_bounds(args)
    args.map! do |value|
      value = 0 if value < 0
      value = 255 if value > 255
      value
    end
  end

  def create_hex(args)
    hex = []
    args.each do |element|
      hex.push(element / 16)
      hex.push(element % 16)
    end
    hex
  end

  def letters_map(hex)
    hex.map! do |element|
      element = 'A' if element == 10
      element = 'B' if element == 11
      element = 'C' if element == 12
      element = 'D' if element == 13
      element = 'E' if element == 14
      element = 'F' if element == 15
      element
    end
  end
end
