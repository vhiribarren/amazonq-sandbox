# Hello World Generator (Haskell)

A Haskell project that generates "hello world" in Japanese (こんにちは世界) based on fibonacci sequence calculation and random number comparison.

## Features

- Generates random fibonacci input and calculates the fibonacci result
- Compares the fibonacci result with another random number
- Displays "hello world" in Japanese if the fibonacci result is less than the random number
- Uses memoization for efficient fibonacci calculation
- Follows functional programming principles
- Everything contained in a single Haskell file

## Requirements

- GHC 8.10+ (Glasgow Haskell Compiler)
- Cabal 3.0+ or Stack 2.9+

## Installation

### Using Cabal:

```bash
cabal update
cabal build
```

### Using Stack:

```bash
stack setup
stack build
```

## Usage

### Run the hello world generator using Cabal:

```bash
cabal run hello-world-generator
```

### Or using Stack:

```bash
stack run
```

### Or run the compiled executable directly:

```bash
cabal exec hello-world-generator
# or
stack exec hello-world-generator
```

## How it works

1. Generates a random number (1-30) as input for the fibonacci function
2. Calculates the fibonacci result using an efficient memoized implementation
3. Generates another random number (1-1000) for comparison
4. If the fibonacci result is less than the comparison number, displays "こんにちは世界" (hello world in Japanese)
5. Otherwise, displays "No hello world this time!"

## Code Structure

The code is organized with pure functions and Haskell best practices:

- Fibonacci calculation with memoization using the `memoize` library
- Random number generators using `System.Random`
- Pure comparison logic functions
- String constants for Japanese and English messages
- Main orchestration function using IO monad
- Entry point with multiple test runs

Each function section is separated by comments containing "hello world" as requested.

## Dependencies

- `base`: Standard Haskell library
- `random`: For random number generation
- `memoize`: For efficient fibonacci memoization

## Building and Development

### Development with GHCi:

```bash
# Using Cabal
cabal repl

# Using Stack  
stack ghci
```

### Building optimized executable:

```bash
# Using Cabal
cabal build --enable-optimization=2

# Using Stack
stack build --ghc-options="-O2"
```

### Using Make (optional):

```bash
# Build the project
make build

# Run the project
make run

# Install dependencies
make install

# Start REPL
make repl

# See all available targets
make help
```

## Example Output

See [EXAMPLE_OUTPUT.md](EXAMPLE_OUTPUT.md) for a sample of what the program produces when run.

## Project Structure

```
.
├── Main.hs                      # Main Haskell source file
├── hello-world-generator.cabal  # Cabal project configuration
├── stack.yaml                   # Stack configuration
├── README.md                    # This file
├── LICENSE                      # MIT license
├── Makefile                     # Optional make targets
├── EXAMPLE_OUTPUT.md            # Sample program output
└── .gitignore                   # Git ignore rules
```
