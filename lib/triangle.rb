class Triangle
  attr_accessor :hyp, :opp, :adj

  def initialize(hyp:, opp:, adj:)
    @hyp = hyp
    @opp = opp
    @adj = adj
  end

  def kind
    if @hyp == @opp && @opp == @adj
      :equilateral
    end
  end
end

class TriangleError < StandardError

end
