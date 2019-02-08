class Triangle
  attr_accessor :hyp, :opp, :adj

  def initialize(hyp:, opp:, adj:)
    @hyp = hyp
    @opp = opp
    @adj = adj
  end

  def kind
    if @hyp <= 0 || @opp <= 0 || @adj <= 0
      return TriangleError
    elsif @hyp + @opp < @adj || @hyp + @adj < @opp || @adj + @opp < @hyp
      return TriangleError
    end

    if @hyp == @opp && @opp == @adj
      return equilateral
    elsif @opp == @adj && @opp != @hyp || @opp == @adj && @adj != @hyp
      return isosceles
    elsif @hyp != @opp && @hyp != @adj && @opp != @adj
      return scalene
  end

  class TriangleError < StandardError
    def message
      return "Not a valid triangle"
    end
  end
end
