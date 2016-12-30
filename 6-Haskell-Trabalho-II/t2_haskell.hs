module Sums (oddNumSeries, oddNumSum,
             evenNumSeries, evenNumSum,
             squareSeries, squareSum,
             oddNumSquareSeries, oddNumSquareSum,
             almostE
            ) where


oddNumSeries :: (Fractional a, Enum a, Num a) => a -> [a]
oddNumSeries n = [((2*x - 1) + 1)/2 | x <- [1..n]]

oddNumSum :: (Fractional a, Enum a, Num a) => a -> a
oddNumSum = last . oddNumSeries

evenNumSeries :: (Fractional a, Enum a, Num a) => a -> [a]
evenNumSeries n = [((2*x + 2) + 2)/2 | x <- [1..n]]

evenNumSum :: (Fractional a, Enum a, Num a) => a -> a
evenNumSum = last . evenNumSeries

squareSeries :: (Fractional a, Enum a, Num a) => a -> [a]
squareSeries n = [(2 * x + 1) * (x + 1) * x/6 | x <- [1..n]]

squareSum :: (Fractional a, Enum a, Num a) => a -> a
squareSum = last . squareSeries

oddNumSquareSeries :: (Fractional a, Enum a, Num a) => a -> [a]
oddNumSquareSeries n = [(2 * x - 1) * (2 * x + 1) * x / 3 | x <- [1..n]]

oddNumSquareSum :: (Fractional a, Enum a, Num a) => a -> a
oddNumSquareSum = last . oddNumSquareSeries

almostE :: Int -> Float
almostE n = 1 + sum([1 / product[1..x] | x <- take n [1..]])

