# Hello World Generator

A Python project that generates "hello world" in Japanese (こんにちは世界) based on fibonacci sequence calculation and random number comparison.

## Features

- Generates random fibonacci input and calculates the fibonacci result
- Compares the fibonacci result with another random number
- Displays "hello world" in Japanese if the fibonacci result is less than the random number
- Uses lambda functions extensively for functional programming approach
- Follows PEP8 coding standards
- Everything contained in a single Python file

## Requirements

- Python 3.8+
- uv (for package management)

## Installation

Using uv:

```bash
uv sync
```

## Usage

Run the hello world generator:

```bash
python hello_world_generator.py
```

Or using uv:

```bash
uv run hello-world-generator
```

## How it works

1. Generates a random number (1-30) as input for the fibonacci function
2. Calculates the fibonacci result using an efficient memoized implementation
3. Generates another random number (1-1000) for comparison
4. If the fibonacci result is less than the comparison number, displays "こんにちは世界" (hello world in Japanese)
5. Otherwise, displays "No hello world this time!"

## Code Structure

The code is organized with lambda functions and proper PEP8 formatting:

- Fibonacci calculation with memoization
- Random number generators using lambdas
- Comparison logic using lambdas
- Japanese display functions using lambdas
- Main orchestration function
- Entry point with multiple test runs

Each function section is separated by comments containing "hello world" as requested.
