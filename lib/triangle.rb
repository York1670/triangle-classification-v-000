class Triangle
  attr_accessor :hyp, :opp, :adj

  def initialize(hyp:, opp:, adj:)
    @hyp = hyp
    @opp = opp
    @adj = adj
  end

  def kind
  end

class TriangleError < StandardError
  def message
    return "Not a valid triangle"
  end
end
