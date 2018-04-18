
# 2. A business called “The Company” created a new phone called the companyPhone that needs packing to send away for sale. The Company needs to know how many phones in their pretty new packaging (rectangular prisms) that measures: with  width 5cm, length 7.4cm, and depth 4cm we can fit into a box that is 32cm wide,  43cm long and 22.1cm high.   (think about writing some pseudo code first that steps through all the commands you need to write. Keep it as simple as you can.

class Phone
  attr_reader :wide, :long, :high

  def initialize
    @wide = 5
    @long = 7.4
    @high = 4
  end

end

class Box

  attr_reader :wide, :long, :high

  def initialize
    @wide = 32
    @long = 43
    @high = 22.1
  end

end

box1 = Box.new
phone1 = Phone.new

divisables = Array.new

divisables.push(box1.wide / phone1.wide)
divisables.push(box1.long / phone1.long)
divisables.push(box1.high / phone1.high)

puts (divisables.min).floor