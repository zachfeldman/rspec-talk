autoscale: true
footer: Zach Feldman | @zachfeldman | zfeldman.com
slidenumbers: true

#[fit] A **Very Short**<br>Intro to RSpec/Testing

---

#[fit] `$ whoami`

#[fit] @zachfeldman <br>[twitter](https://twitter.com/zachfeldman) | [github](https://github.com/zachfeldman)

#[fit] Chief Academic Officer + Co-Founder [@nycodedesign](https://twitter.com/nycodedesign) by day, <br>exploring the great outdoors whenever I get the chance

---

# imposter syndrome disclaimer

- I've written tests for a mid-size Rails application, some personal projects, and a few RubyGems

- Like everything in software development, people are opinionated

- These are my takeaways!

---

# What is TDD?

TDD, or Test Driven Development, is the practice of writing a test for each piece of code you plan on writing…


...before you write the actual code


Your tests will always begin failing and your goal is to make them pass by writing functional code

---

# TDD Example

````ruby
describe "#main" do
  it "#says_hello" do
    expect(STDOUT).to receive(:puts).with('Hello World')
    says_hello
  end
end

# code to make the test pass:
def says_hello
  puts "Hello World"
end
````

To run from command line: `rspec test.rb`

---

# What is BDD?

Behavior Driven Development is a subset of Test Driven Development


Rather than simply method names, you write expectations out as behaviors in the test description and test for those behaviors


Simple TDD

`it "#userCounter" do`


TDD + BDD
`it "should count the number of users successfully" do`

---

# BDD Example

````ruby
describe "#main" do
  it "should print say hello to STDOUT" do
    expect(STDOUT).to receive(:puts).with('Hello World')
    says_hello
  end
end

#to make the test pass:
def says_hello
  puts "Hello World"
end
````

---

# Testing Frameworks

- Many different testing frameworks exist, segmented of course by programming language and also by philosophy
<br>
- In Ruby, some popular frameworks are:

  - `RSpec`

  - `Cucumber` (much more behavior driven)

  - `MiniTest` (included by default with Ruby and Rails)

---

# Why use RSpec over other options?

- Some devs prefer to just use the built-in Ruby testing framework for straight Ruby programs, `Test::Unit`

- RSpec and MiniTest see heavy usage in the Rails community and hvae a lot of documentation

- Either way, learning how testing works is a transferrable skill - just like you could probably learn Python/Django after learning Ruby/Rails, you could learn a different testing framework after learning RSpec

---

# What is an edge case?

- The "normal" case is what you expect to happen when a method or bit of code runs

- The "edge" case or cases are unexpected diversions from the "normal" that should be accounted for in your program flow

---

# TDD - Basic Process

1) Write a test to validate a piece of code you are planning to write, run it - it should fail

2) Write the minimum amount of code needed for the test to pass

3) Run the test, ensure it passes

4) Go back and refactor your code to make it as efficient as possible for the situation and cover any extra edge cases

5) Make sure your test still passes, modify the test itself or add a new test if a new edge case has been added

---

# Testing best practices

- Don't just test for the expected response - try to think of edge cases that may come up

  - What if, for example, the classic `full_name` instance method that combines a user's first and last name doesn't receive a first or last name? Your test should account for this case and be sure that it is covered.

- If your test initially passes before any code is written...then it's a bad test

---

# Testing best practices: organization

- Tests should live in a separate folder and set of files

- In Rails apps and most Ruby programs, this is normally the `spec/` folder

- Tests should be descriptive so others can easily understand which classes/methods you are currently testing

---

# Our first test

Let's walk through a very VERY basic example of rspec usage.

[https://github.com/nycda/rspec-min](https://github.com/nycda/rspec-min)

---

# Our second test(s)

Let's walk through another simple example

[https://github.com/nycda/rspec-array](https://github.com/nycda/rspec-array)

---

# Interested in more?

[Rails 201](http://nycda.com/classes/ruby-on-rails-201/) at my school, the New York Code + Design Academy, covers this and more!

- Advanced PostgreSQL (HStore, JSON, mapping[lat-lon])

- In-depth debugging (Pry)

- Ruby idioms (metaprogramming, monkeypatching)

- Unit/Feature Testing

- Service Oriented Architecture basics with Sinatra

- Writing an API gem/integration into a Rails app

http://nycda.com/classes/ruby-on-rails-201/

---

# Where can I find this talk?

[github.com/zachfeldman/rspec-talk](github.com/zachfeldman/rspec-talk)

# Where can I contact you?

@zachfeldman <br>[twitter](https://twitter.com/zachfeldman) | [github](https://github.com/zachfeldman)

zach (at) nycda (dot) com

---

#[fit] Thanks for having me!