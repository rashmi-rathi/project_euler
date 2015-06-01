{-
1 Jan 1900 = Monday
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
-}

leapYears n = sum [isLeap a | a <- [1900..n]]	

isLeap a 
        | (a `mod` 4 == 0) && (a `mod` 100 /= 0) = 1
		| (a `mod` 400 == 0)= 1
		| otherwise = 0


answer = sum [ 1 | y <- [1901..2000] , m <- [1..12] , day 1 m y == 6 ] 

-- d = day, m = month, y = year
day d m y = (d + m_temp + y_temp) `mod` 7
    where
        m_temp = if (isLeap y == 1) then sum $ take (m-1) leap else sum $ take (m-1) noLeap
        y_temp = 366 * (leapYears y') + 365 * (y' -  (leapYears y') -1900)
        y' = y-1

--0 = Monday, 1 = Tuesday ,............, 6 = Sunday

days = ["monday","tuesday","wednesday", "thursday" , "friday","saturday","sunday"]
noLeap = [31,28,31,30,31,30,31,31,30,31,30,31]        
leap =  31 : 29 : drop 2 noLeap

------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------

problem_19 = length . filter (==6) . drop 12 . take 1212 $ since1900
since1900 = scanl nextMonth 0 t
	where 
		t = concat $ replicate 4 noLeap ++ cycle (leap : replicate 3 noLeap)
nextMonth x y = (x + y) `mod` 7

