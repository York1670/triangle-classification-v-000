class Triangle
  attr_accessor :hyp, :opp, :adj

  def initialize(hyp, opp, adj)
    @hyp = hyp
    @opp = opp
    @adj = adj
  end

  def kind()
    if @hyp == @opp && @opp == @adj
      :equilateral
    elsif @hyp == @opp || @opp == @adj || @hyp == @adj
      :isosceles
    elsif @hyp != @opp && @opp != @adj && @hyp != @adj
      :scalene
    elsif @hyp == 0 && @opp == 0 && @adj == 0
      return TriangleError
    end
  end
end

class TriangleError < StandardError

end
