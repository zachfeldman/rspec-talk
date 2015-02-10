autoscale: true
footer: Zach Feldman | @zachfeldman | zfeldman.com
slidenumbers: true

#[fit] A **Little More**<br>RSpec/Testing

---

# `describe{}`

The describe block lets you provide a context for exactly which class you're testing

````ruby
describe ClassName do
end
````

You can get even a little more descriptive if you want:

````ruby
describe ClassName, "this class does x" do
end
````

---

# `it{}`

- The `it` block is where your tests themselves actually live

- `it` blocks are found inside of describe blocks

- They're used to describe which class or instance method you are testing and sometimes a bit about what the method should or should not do

---

# Simple "it" example

````ruby
describe Array do
  it "#new should return a blank instance" do
    expect(Array.new).to eq([])
  end
end
````

---

# How to run that last example


Create a Ruby file (test.rb, for instance)


Make sure the RSpec gem is installed on your system `gem install rspec`

````bash
$ rspec test.rb
````
---

# Adding more examples

More examples can be added through multiple it blocks:

````ruby
describe Array do

  it "#new should return a blank instance" do
    expect(Array.new).to eq([])
  end

  it "should allow you to #count the items in it" do
    expect(Array.new.count).to eq(0)
  end

end
````

---

# Setting State

- You may have to set up some data before your tests are run

- For instance, perhaps you need to create an instance of an object or retrieve something from the database

- This is where the before and after directives are used (in addition to other methods)

---

````ruby
describe Array do
  before do
    @array = Array.new
  end

  it "#new should return a blank instance" do
    expect(@array).to eq([])
  end

  it "should allow you to #count the items in it" do
    expect(@array.count).to eq(0)
  end

  after do
    puts "Test complete."
  end
end
````

---

# `:all, each`

- The before and after blocks can take an :all or :each argument

- :each is the default - the block will run for each individual test

- :all can be set to reduce overhead - if @hash only needs to be set once, then that directive only needs to be run once and :all makes sense

- :all means "only run this once before all of the tests run"

---

before + after w/ :all, :each


````ruby
describe Array do
  before(:all) do
    @array = Array.new
  end

  it "#new should return a blank instance" do
    expect(@array).to eq([])
  end

  it "should allow you to #count the items in it" do
    expect(@array.count).to eq(0)
  end

  after(:each) do
    puts "Test complete."
  end
end
````

---

# RSpec Conventions

- Depending on which kind of test you're writing, the text inside of our `it` blocks can be very succinct or really descriptive

- Usually, at bare minimum, an `it` block says which method it is testing and whether that method is an instance or class method

---

Instance vs Class Method Notation

````ruby
describe Array do
  before(:all) do
    @array = Array.new
  end


  #testing a class method, i.e. Array.new
  it ".new" do
    expect(@array).to eq([])
  end


  #testing an instance method, i.e. Array.new.count
  it "#count" do
    expect(@array.count).to eq(0)
  end
end
````

---

# `context`

- Another important RSpec concept is `context`

- For instance, perhaps an object behaves differently depending on an attribute flag

- The `context` block is a good way to organize these different cases!

---

# Example: The Dinosaur Class

````ruby
class Dinosaur
  attr_accessor :makes_noise
  
  def initialize(options = {})
    @makes_noise = options[:makes_noise]
  end

  def poke
    "ROAAAAR" if makes_noise
  end
end
````
---

Using context to test two cases

````ruby
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
````
---

# Where can I find this talk?

[github.com/zachfeldman/rspec-talk](github.com/zachfeldman/rspec-talk)

# Where can I contact you?

@zachfeldman <br>[twitter](https://twitter.com/zachfeldman) | [github](https://github.com/zachfeldman)

zach (at) nycda (dot) com

---

#[fit] Thanks for having me!
