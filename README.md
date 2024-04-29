# String Calculator TDD Kata

Calculator which converts a string of numbers into numbers and perform various operations on it. also accept the various types of inputs
## Installation & Setup

```bash
git clone https://github.com/Gyan1985/StringCalculatorTDD.git
git checkout calculator-add
bundle install
```

## To run test cases
```
rspec
```

## Run the application

#### Input : Empty string
```ruby 
ruby main.rb ""
Calculating for: 
Result: 0
```

#### Input : Single number
```ruby 
ruby main.rb "1"
Calculating for: 1
Result: 6
```

#### Input : Multiple numbers
```ruby 
ruby main.rb "1,2,3"
Calculating for: 1,2,3
Result: 6
```

#### Input : Newline separated numbers
```ruby 
ruby main.rb "1\n2\n3"
Calculating for: 1,2,3
Result: 6
```

#### Input : Custom delimiter with string
```ruby 
ruby main.rb "//;\n1;2;3"
Calculating for: 1,2,3
Result: 6
```

#### Input : Negative Numbers String
```ruby
ruby main.rb "1,-2,-3,4"
Output:
Calculating for: 1,-2,3,-4
Error: Negative numbers not allowed: -2, -4
```
