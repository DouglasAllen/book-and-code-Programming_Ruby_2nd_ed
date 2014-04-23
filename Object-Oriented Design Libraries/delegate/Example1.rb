require 'delegate'

sizeInInches = [ 10, 15, 22, 120 ]

class Feet < DelegateClass(Array)
  def initialize(arr)
    super(arr)
  end

  def [](*n)
    val = super(*n)
    case val.class
      when Numeric; val/12.0
      else;         val.collect {|i| i/12.0}
    end
  end

end

sizeInFeet = Feet.new(sizeInInches)
p sizeInInches[0..3]	# =»	[10, 15, 22, 120]
p sizeInFeet[0..3]	# =»	[0.8333333333, 1.25, 1.833333333, 10.0]