-- Лабораторна робота №5
-- Студента групи КН-31 Однодворця Іллі. Варіант 8
-- Завдання Реалiзувати та скомпiлювати одну з програм, розроблених у лабораторнiй роботi № 3 
-- для Вашого варiанта з введенням даних: а) з клавiатури, б) з файлу та виведенням результатiв: в) на екран, г) у файл.

repeatLine line n = do
    l <- line
    replicate n [l]

fromKeyboardToConsole = do
    putStrLn "Enter line:"
    line <- getLine
    putStrLn "Enter number of repeats:"
    inputN <- getLine
    let n = read inputN :: Int
    answerArray <- return (repeatLine line n)
    print answerArray

fromKeyboardToFile = do
    putStrLn "Enter line:"
    line <- getLine
    putStrLn "Enter number of repeats:"
    inputN <- getLine
    let n = read inputN :: Int
    answerArray <- return (repeatLine line n)
    writeFile "lab5\\fromKeyboardOutput.txt" (show answerArray)

fromFileToConsole = do
    line <- readFile "lab5\\input.txt"
    putStrLn "Enter number of repeats:"
    inputN <- getLine
    let n = read inputN :: Int
    answerArray <- return (repeatLine line n)
    print(answerArray)

fromFileToFile = do
    line <- readFile "lab5\\input.txt"
    putStrLn "Enter number of repeats:"
    inputN <- getLine
    let n = read inputN :: Int
    answerArray <- return (repeatLine line n)
    writeFile "lab5\\fromFileOutput.txt" (show answerArray)

-- Висновок: отже, я ознайомився з модульною органiзацiєю програм та засобами введення-виведення. 
-- Набув досвiду компiляцiї Haskell-програм.