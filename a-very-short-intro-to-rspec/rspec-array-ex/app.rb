require 'rspec'

describe Array do
  
  it ".new" do
    @array = Array.new
    expect(@array).to eq([])
  end

  it "#count" do
    @array = Array.new
    expect(@array.count).to eq(0)
  end

end