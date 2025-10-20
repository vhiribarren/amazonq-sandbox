{-# LANGUAGE BangPatterns #-}

{-|
Module      : Main
Description : Hello World Generator
Copyright   : (c) Developer, 2024
License     : MIT
Maintainer  : dev@example.com

A Haskell project that generates "hello world" in Japanese based on fibonacci
and random number comparison.
-}

module Main where

import System.Random (randomRIO)
import Control.Monad (replicateM_)
import Data.Function.Memoize (memoize)

-- ============================================================================
-- hello world
-- ============================================================================

-- | Memoized fibonacci function for efficiency
fibonacciMemoized :: Int -> Int
fibonacciMemoized = memoize fibImpl
  where
    fibImpl n
      | n <= 1    = n
      | otherwise = fibonacciMemoized (n - 1) + fibonacciMemoized (n - 2)

-- | Fibonacci function with bounds checking
fibonacci :: Int -> Int
fibonacci n
  | n >= 0    = fibonacciMemoized n
  | otherwise = 0

-- ============================================================================
-- hello world
-- ============================================================================

-- | Generate random input for fibonacci (1-30 to avoid performance issues)
generateFibonacciInput :: IO Int
generateFibonacciInput = randomRIO (1, 30)

-- | Generate random number for comparison
generateComparisonNumber :: IO Int
generateComparisonNumber = randomRIO (1, 1000)

-- ============================================================================
-- hello world
-- ============================================================================

-- | Compare two numbers and return True if first is less than second
isLessThan :: Int -> Int -> Bool
isLessThan a b = a < b

-- ============================================================================
-- hello world
-- ============================================================================

-- | Display "hello world" in Japanese
displayJapaneseHello :: String
displayJapaneseHello = "こんにちは世界"

-- | Display regular message when condition is not met
displayNoMatch :: String
displayNoMatch = "No hello world this time!"

-- ============================================================================
-- hello world
-- ============================================================================

-- | Main hello world generator function
--
-- Generates a random fibonacci input, calculates fibonacci result,
-- generates another random number, compares them, and returns
-- Japanese "hello world" if fibonacci result is less than random number.
generateHelloWorld :: IO String
generateHelloWorld = do
  -- Generate random input for fibonacci
  fibInput <- generateFibonacciInput
  
  -- Calculate fibonacci result
  let fibResult = fibonacci fibInput
  
  -- Generate random comparison number
  comparisonNum <- generateComparisonNumber
  
  -- Print debug information
  putStrLn $ "Fibonacci input: " ++ show fibInput
  putStrLn $ "Fibonacci result: " ++ show fibResult
  putStrLn $ "Comparison number: " ++ show comparisonNum
  
  -- Compare and return appropriate message
  return $ if isLessThan fibResult comparisonNum
    then displayJapaneseHello
    else displayNoMatch

-- ============================================================================
-- hello world
-- ============================================================================

-- | Main entry point for the hello world generator
main :: IO ()
main = do
  putStrLn "Hello World Generator"
  putStrLn $ replicate 50 '='
  
  -- Generate and display result
  result <- generateHelloWorld
  putStrLn $ "\nResult: " ++ result
  
  -- Run multiple times to show different outcomes
  putStrLn $ "\n" ++ replicate 50 '='
  putStrLn "Running 5 more times:"
  putStrLn $ replicate 50 '='
  
  -- Run 5 more times
  mapM_ runOnce [1..5]
  where
    runOnce :: Int -> IO ()
    runOnce i = do
      putStrLn $ "\nRun " ++ show i ++ ":"
      result <- generateHelloWorld
      putStrLn $ "Result: " ++ result