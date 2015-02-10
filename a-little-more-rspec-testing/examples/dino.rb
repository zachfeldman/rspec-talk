class Dinosaur
  attr_accessor :makes_noise
  
  def initialize(options = {})
    @makes_noise = options[:makes_noise]
  end

  def poke
    "ROAAAAR" if makes_noise
  end
end

describe Dinosaur do
  context "makes noise" do
    it "#poke" do
      @dino = Dinosaur.new(makes_noise: true)
      expect(@dino.poke).to eq("ROAAAAR")
    end
  end
  context "doesn't make noise" do
    it "#poke" do
      @dino = Dinosaur.new(makes_noise: false)
      expect(@dino.poke).to eq(nil)
    end
  end  
end