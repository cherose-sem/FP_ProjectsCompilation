module Main where

-- println :: String -> ()
-- println a = a

-- factorial :: Integer -> Integer
-- factorial a =
--   if a == 0 then 1 else a * factorial(a-1)

fact :: Integer -> Integer
fact 0 = 1
fact a = a * fact (a-1)

revLength :: String -> Int
-- revLength input = length $ reverse input
revLength = length . reverse

--import Lib
main :: IO()
main = do
  -- putStrLn "factorial of 5: "
  -- putStrLn $ show $ factorial 5
  putStrLn $ show $ revLength "hello"
  -- putStrLn $ show $ fact 5
import Lib

main :: IO ()
main = putStrLn $ show $ solveRPN "10 20 +"
