import Data.List
ds = [2..1000] \\ map (^2) [2..31]
pell d = [ (x,y) | x <- filter (\xs -> xs^2 `mod` d == 1)  [1..] , y <- filter (\ys -> (d*(ys^2) `mod` (x^2 - 1)) == 0  ) [1..(div x (floor . sqrt . fromIntegral $ d))]]

main = print . head $ (pell 97)