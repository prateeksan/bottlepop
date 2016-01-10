require 'pry'
class Bottlepop

  attr_accessor :total_bottles
  attr_accessor :bottles_and_caps
  attr_accessor :recycled
  attr_accessor :remainder_bottles
  attr_accessor :remainder_caps

  def initialize(investment)
    @bottles_and_caps = investment.to_i/2
    bottles = @bottles_and_caps
    caps = @bottles_and_caps 
    @total_bottles = @bottles_and_caps
    calculations = bottlepopper(bottles, caps)
    @recycled = @total_bottles - @bottles_and_caps
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
    @remainder_bottles = remainder_bottles
    @remainder_caps = remainder_caps
  end
end

puts "Welcome to Lighthouse Markets. How much would you like to spend on bottles today?"
tender = gets.chomp

bottlepop = Bottlepop.new(tender)

puts "Thanks for your order! With $#{tender}, you will get a total of #{bottlepop.total_bottles} bottles!"
puts "#{bottlepop.bottles_and_caps} bottles were purchased. You then received an additional #{bottlepop.recycled} bottles through recycling!"
puts "You have #{bottlepop.remainder_bottles} bottle(s) and #{bottlepop.remainder_caps} cap(s) leftover."