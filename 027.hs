import Data.List
import Data.Ord
import Data.Function


isqrt :: (Integral a, Integral b) => a -> b
isqrt n = ceiling . sqrt . fromIntegral $ n

isPrime :: Integer -> Bool
isPrime p
	| p == 2 = True
 	| otherwise =	if [x | x<-2:[3,5..isqrt p] , mod p x == 0] /= [] then False else True


primesProduced a b = takeWhile (\x -> (x > 0) && (isPrime x)) [ x^2 + a*x + b| x <- [0..]]
coefficients = [(length $ primesProduced a b, [a,b])  | a <- [-1000..1000] , b <- [0..1000]]
answer = maximumBy (compare `on` fst) coefficients

-------------------------------------------------------------------------------------------------------------------------------
-- From mathblog.dk This is made faster by noting for n = 1 , f = 1 + a + b , which must be odd. so it shrinks the possiblities by half.
coeffs = [(length $ primesProduced a b, [a,b])  | a <- [-1000,-998..1000] , b <- [0,2..1000]] ++ [(length $ primesProduced a b, [a,b])  | a <- [-999,-997..1000] , b <- [1,3..1000]]
answer' = maximumBy (compare `on` fst) coeffs -- can also use "comparing  fst"

--------------------------------------------------------------------------------
-- From haskell's website

problem_27 = -(2*a-1)*(a^2-a+41)
  where n = 1000
        m = head $ filter (\x->x^2-x+41>n) [1..]
        a = m-1
