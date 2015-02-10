require 'rspec'

def say_hello
  puts "Hello World"
end

describe "#main" do
  it "#say_hello" do
    expect(STDOUT).to receive(:puts).with('Hello World')
    say_hello
  end
end