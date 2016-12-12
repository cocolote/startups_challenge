# Startups Coding Challenge

Implement integer division without using the division operator. That is, given
a numerator (dividend) and denominator (divisor), return the quotient and
remainder, or return an error when the denominator is zero. Either or both of
the inputs may be negative. The remainder should have the same sign as the
denominator. Of course, the absolute value of the remainder should be less than
that of the denominator.

### Example

- 6 /  5 ==  1 r  1
- 6 / -5 == -2 r -4
- -6 /  5 == -2 r  4
- -6 / -5 ==  1 r -1

### The Solution (in broad strokes)

Basically, use binary search to find the quotient.

That is, use the numerator and denominator to bracket the possible range for
the quotient, then use binary search within that range to determine the
quotient that, when multiplied by the given denominator, brings you closest to
the numerator without going over (or under, for negative denominators).

Your solution should be written in one of the following languages (presented in
alphabetical order – all are equally acceptable!): C++, Java, Javascript, PHP,
Ruby, or Python. It should be possible to run automated tests as well as
manually invoke your code for user-supplied <numerator, denominator> pairs.

### Evaluation

Your solution will be evaluated for its correctness, of course, but also along
the following dimensions:

- style (which should be internally consistent at least, and ideally idiomatic
  given your language of choice)
- commenting and readability
- test coverage and design

Ultimately, we’re looking for code quality that’s suitable for submission to a
shared source control system; nothing more and nothing less. In all, the
solution is intended to take an hour or two: no need to go overboard.

As with real code, longer solutions are not necessarily better.

If you have any questions about our expectations, just ask!

Finally, it should go without saying, but strong evidence of code copying from
internet forums (etc) will result in immediate disqualification from the entire
interview process (and lots of bad karma!).

### Execution

To run the script you could use IRB or PRY and required the lib file:

`$ pry -r './lib/calculator'`

Then in your terminal you can run the div function:

`pry> div 6, 5`

### Tests

To run the test file you will need rspec gem then run the following command

`$ rspec test/calculator_test.rb`
