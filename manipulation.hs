manip :: Int -> String -> String
manip i s
	|even i = s
	|otherwise = reverse s

bous :: [String] -> [String]
bous ss = map (\(i, s) -> manip i s) (zip [0..] ss)