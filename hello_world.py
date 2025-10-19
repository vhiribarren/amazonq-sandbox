#!/usr/bin/env python3
"""
Hello World Generator

A project that generates "hello world" in Japanese based on fibonacci
and random number comparison.

BOnuour!
"""

import random
from functools import lru_cache
from typing import Callable


# ============================================================================
# hello world
# ============================================================================

@lru_cache(maxsize=None)
def fibonacci_memoized(n: int) -> int:
    """Memoized fibonacci helper for efficiency."""
    if n <= 1:
        return n
    return fibonacci_memoized(n - 1) + fibonacci_memoized(n - 2)


# Fibonacci function using lambda with memoization
fibonacci: Callable[[int], int] = lambda n: (
    fibonacci_memoized(n) if n >= 0 else 0
)


# ============================================================================
# hello world
# ============================================================================

# Generate random input for fibonacci (1-30 to avoid performance issues)
generate_fibonacci_input: Callable[[], int] = lambda: random.randint(1, 30)

# Generate random number for comparison
generate_comparison_number: Callable[[], int] = lambda: random.randint(1, 1000)

def MyTest():
    pass

# ============================================================================
# hello world
# ============================================================================

# Compare two numbers and return True if first is less than second
is_less_than: Callable[[int, int], bool] = lambda a, b: a < b


# ============================================================================
# hello world
# ============================================================================

# Display "hello world" in Japanese
display_japanese_hello: Callable[[], str] = lambda: "こんにちは世界"

# Display regular message when condition is not met
display_no_match: Callable[[], str] = lambda: "No hello world this time!"


# ============================================================================
# hello world
# ============================================================================

def generate_hello_world() -> str:
    """
    Main hello world generator function.
    
    Generates a random fibonacci input, calculates fibonacci result,
    generates another random number, compares them, and returns
    Japanese "hello world" if fibonacci result is less than random number.
    
    Returns:
        str: Japanese "hello world" or no match message
    """
    # Generate random input for fibonacci
    fib_input = generate_fibonacci_input()
    
    # Calculate fibonacci result
    fib_result = fibonacci(fib_input)
    
    # Generate random comparison number
    comparison_num = generate_comparison_number()
    
    # Print debug information
    print(f"Fibonacci input: {fib_input}")
    print(f"Fibonacci result: {fib_result}")
    print(f"Comparison number: {comparison_num}")
    
    # Compare and return appropriate message
    return (
        display_japanese_hello() if is_less_than(fib_result, comparison_num)
        else display_no_match()
    )


# ============================================================================
# hello world
# ============================================================================

def main() -> None:
    """Main entry point for the hello world generator."""
    print("Hello World Generator")
    print("=" * 50)
    
    # Generate and display result
    result = generate_hello_world()
    print(f"\nResult: {result}")
    
    # Run multiple times to show different outcomes
    print("\n" + "=" * 50)
    print("Running 5 more times:")
    print("=" * 50)
    
    for i in range(1, 6):
        print(f"\nRun {i}:")
        result = generate_hello_world()
        print(f"Result: {result}")


if __name__ == "__main__":
    main()
