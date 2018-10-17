class Integer
  def ordinalize
    "#{self}#{self.ordinal()}"
  end

  def ordinal
    abs_number = self.abs

    if (11..13).include?(abs_number % 100)
      "th"
    else
      case abs_number % 10
      when 1; "st"
      when 2; "nd"
      when 3; "rd"
      else    "th"
      end
    end
  end
end
