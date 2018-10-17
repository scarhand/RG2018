class Array
  def join_fancy(first_separator, second_separator)
    if self.count == 1
      "#{self.first}"
    elsif self.count == 2
      "#{self.first} #{second_separator} #{self.last}"
    else
      "#{self[0..-2].join(first_separator)} #{second_separator} #{self.last}"
    end
  end
end