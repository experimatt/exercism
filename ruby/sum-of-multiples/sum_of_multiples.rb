class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers.select(&:positive?)
  end

  def to(max)
    return 0 unless @numbers && max

    range = 0...max
    multiples = range.select do |x|
      @numbers.any? { |n| x % n == 0 }
    end

    multiples.sum
  end
end
