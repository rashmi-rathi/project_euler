import Data.Char

indices :: [Int]
indices = [ x-1 | x <- [1,10,100,1000,10000,100000,1000000]]

irrNumber :: String
irrNumber = concatMap show [1..] --Number 0.123456789.. is represented as 123456...

answer :: Int
answer = product [ digitToInt x| x <- map (irrNumber !!) indices ]

main :: IO()
main = print answer