manip :: Int -> String -> String
manip i s
	|even i = s
	|otherwise = reverse s

bous :: [String] -> [String]
bous ss = map (\(i, s) -> manip i s) (zip [0..] ss)

test :: String -> [String]
test s = if (length s < 20) then [s] else (take 20 s : test (drop 20 s))
