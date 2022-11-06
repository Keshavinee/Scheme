element :: ([Integer],Int)-> Integer
element (xs,n) = last y
    where y = take n xs

f :: Integer -> Integer
f x = 2 * x

foo :: [Integer] -> [[Integer]]
foo xs = [ map (\x -> if x == element (xs,i) then f x else x) xs |i <- [1..length xs]]



main :: IO ()
main =  do
print(foo [1,2,3,4])