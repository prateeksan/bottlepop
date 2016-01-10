require 'pry'
class Bottlepop

  attr_accessor :total_bottles

  def initialize(investment)
    @bottles_and_caps = investment/2
    bottles = @bottles_and_caps
    caps = @bottles_and_caps 
    @total_bottles = @bottles_and_caps
    calculations = bottlepopper(bottles, caps)
  end

  def bottlepopper(bottles, caps)
    return "Its Done" if bottles < 2 && caps < 4
    remainder_caps = caps % 4
    remainder_bottles = bottles % 2
    new_bottles_and_caps = (bottles/2) + (caps/4)
    new_bottles = new_bottles_and_caps + remainder_bottles
    new_caps = new_bottles_and_caps + remainder_caps
    @total_bottles += new_bottles_and_caps
    bottlepopper(new_bottles, new_caps)
  end

end

bottlepop = Bottlepop.new(6)

puts bottlepop.total_bottles