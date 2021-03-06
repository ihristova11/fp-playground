-- import Prelude hiding (replicate)

-- -- allEqual
-- allEqual :: (Eq a) => [a] -> Bool 
-- allEqual [] = True 
-- allEqual [x] = True 
-- allEqual (x:y:xs) = x == y && allEqual (y:xs)


-- -- split
-- split :: (Eq a) => [a] -> a -> [[a]]
-- split [] _ = []
-- split a b
--     | head a == b = split (tail a) b
--     | otherwise = h:split (drop (length h + 1) a) b
--         where h = splitHelper a b

-- -- join - функция, която приема списък от Strings и Char и прави един низ, като между всеки елемент
-- -- от списъка добавя разделителния знак
-- -- например: join ["abc", "def", "ghi"] ',' == "abc,def,ghi"
-- --           join ["abc", "def", "ghi"] '' == "abcdefghi"


-- -- join :: [String] -> Char -> String
-- -- join [] _ = []
-- -- join [a] _ = [a]
-- -- join xs c = 

-- -- splitByN - функция, която разделя списък на равни части с дадена големина
-- -- например: splitByN [1..6] 2 == [[1,2],[3,4],[5,6]]
-- --           splitByN [1..6] 4 == [[1,2,3,4],[5,6]]
-- --           splitByN [1..6] 7 == [[1,2,3,4,5,6]]
-- --           splitByN [1..6] 1 == [[1],[2],[3],[4],[5],[6]

-- splitByN :: [a] -> Int -> [[a]]
-- splitByN [] _ = []
-- splitByN xs 0 = [xs]
-- splitByN xs n = take n xs : splitByN (drop n xs) n

-- -- replicate - функция, която приема списък и число и ни връща списък, но всеки елемент от
-- -- оригиналния е повторен колкото даденото число
-- -- например: replicate [1..5] 2 == [1,1,2,2,3,3,4,4,5,5]
-- --           replicate [1..3] 4 == [1,1,1,1,2,2,2,2,3,3,3,3]
-- replicate :: [a] -> Int -> [a]
-- replicate [] _  = []
-- replicate xs 0 = []
-- replicate xs 1 = xs
-- -- replicate xs n = 

-- -- transpose - функция, която транспонира дадена матрица
-- transpose :: (Eq a) => [[a]] -> [[a]]
-- transpose [] = []
-- transpose matrix
--     | all (== []) matrix = [] --all null matrix = []
--     | otherwise = map head matrix : transpose (map tail matrix)

-- -- permutations - функция, която ни дава всички пермутации на даден списък

-- Да се генерира поток sumsOfCubes от тези числа, които са сума от кубовете на две положителни цели числа
sumOfCubes = [x^3 + y^3 | x <- [1..], y <- [1..]]