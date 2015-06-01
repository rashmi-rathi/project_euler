import Data.List

triangleNumber :: [Int]
triangleNumber = [truncate (r * (r+1)/2) | r <- [1..]]

factors' :: Int -> [Int]
factors' 1 = [1]
factors' 2 = [1,2]
factors' 3 = [1,3]
factors' n = (lfs n) ++ (rfs n) ++ (sq n)
    where
        lfs n = [ x | x<-[1..(isqrt n)-1], mod n x == 0]
        rfs n = map (div n) (lfs n)   
        sq n = if mod n (isqrt n) == 0 then [isqrt n] else []

-- Note this factorises number about twice as quickly as factors'

factors :: Int -> [Int]
factors n = 
        if (isqrt) == head lfs
        then rfs ++ (tail lfs) 
        else rfs ++ lfs
            where 
                isqrt= truncate . sqrt . fromIntegral $ n
                lfs = [x | x<-[isqrt,(isqrt-1)..1] , mod n x == 0]       
                rfs = map (div n) lfs
isqrt :: Int -> Int
isqrt n = truncate . sqrt . fromIntegral $ n

fs n = if even n then div' n else div'' n
    where 
        div' n = product [length . factors $ div n 2,length . factors $ (n+1)]
        div'' n = product [length . factors $ n,length . factors $ div (n+1) 2]

answer = let t = head [ n | n <- [1..] , fs n > 500] in div (t * (t+1)) 2

-----------------------------------------------------------------------------------------------

no_of_factors :: Int -> Int
no_of_factors 1 = 1
no_of_factors 2 = 2
no_of_factors 3 = 2
no_of_factors n = length (lfs n) + length (rfs n) + length (sq n)
    where
        lfs n = [ x | x<-[1..(isqrt n)-1], mod n x == 0]
        rfs n = map (div n) (lfs n)   
        sq n = if mod n (isqrt n) == 0 then [isqrt n] else []

fs' n = if even n then div' n else div'' n
    where 
        div' n = product [no_of_factors $ div n 2,no_of_factors (n+1)]
        div'' n = product [no_of_factors n,no_of_factors $ div (n+1) 2]

answer' = let t = head [ n | n <- [1..] , fs n > 500] in div (t * (t+1)) 2

