# Example Output

Here's an example of what the Hello World Generator produces when run:

```
Hello World Generator
==================================================
Fibonacci input: 15
Fibonacci result: 610
Comparison number: 234
Result: No hello world this time!

==================================================
Running 5 more times:
==================================================

Run 1:
Fibonacci input: 8
Fibonacci result: 21
Comparison number: 456
Result: こんにちは世界

Run 2:
Fibonacci input: 12
Fibonacci result: 144
Comparison number: 89
Result: No hello world this time!

Run 3:
Fibonacci input: 6
Fibonacci result: 8
Comparison number: 123
Result: こんにちは世界

Run 4:
Fibonacci input: 20
Fibonacci result: 6765
Comparison number: 567
Result: No hello world this time!

Run 5:
Fibonacci input: 4
Fibonacci result: 3
Comparison number: 789
Result: こんにちは世界
```

## Explanation

- The program generates a random number between 1-30 as input for the fibonacci function
- It calculates the fibonacci result using memoization for efficiency
- It generates another random number between 1-1000 for comparison
- If the fibonacci result is less than the comparison number, it displays "こんにちは世界" (hello world in Japanese)
- Otherwise, it displays "No hello world this time!"
- The program runs 6 times total (1 initial run + 5 additional runs) to demonstrate different outcomes