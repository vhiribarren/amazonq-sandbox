# Makefile for Hello World Generator (Haskell)

.PHONY: build run clean install test repl help

# Default target
help:
	@echo "Available targets:"
	@echo "  build    - Build the project using cabal"
	@echo "  run      - Run the hello world generator"
	@echo "  clean    - Clean build artifacts"
	@echo "  install  - Install dependencies"
	@echo "  repl     - Start GHCi REPL"
	@echo "  stack-*  - Stack equivalents (stack-build, stack-run, etc.)"
	@echo "  help     - Show this help message"

# Cabal targets
build:
	cabal build

run:
	cabal run hello-world-generator

clean:
	cabal clean
	stack clean

install:
	cabal update
	cabal build --dependencies-only

repl:
	cabal repl

# Stack targets
stack-build:
	stack build

stack-run:
	stack run

stack-install:
	stack setup
	stack build --dependencies-only

stack-repl:
	stack ghci

# Combined targets
all: install build

stack-all: stack-install stack-build