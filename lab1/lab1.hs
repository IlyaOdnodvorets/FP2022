-- Лабораторна робота №1
-- Студента групи КН-31 Однодворця Іллі. Варіант 8

-- Завдання 1. Наведiть приклади виразiв вказаного типу: (((Integer,Char),[Char]),[String])

-- (((22, 'q'),['a','b','c']),["hello, ", "world!"])
-- (((4838, '2'), ['h','2','-']),["work", "lab", "main", "1"])

-- Завдання 2.	Визначте два варiанти вказаних далi функцiй. Перший варiант – з одним аргументом-кортежем, 
-- другий – без використання кортежiв чи спискiв

-- Функцiя за довжиною трьох вiдрiзкiв визначає, чи можна на них побудувати трикутник.

Triangle1 (a,b,c) = 
    if (a+b<c) then False
    else if (a+c<b) then False 
    else if (b+c<a) then False 
    else True

Triangle2 a b c = 
    if (a+b<c) then False
    else if (a+c<b) then False 
    else if (b+c<a) then False 
    else True

-- Висновок: отже, я ознайомився з основними типами мови. Набув навичок роботи з інтерпретатором ghci та визначив найпростіші функції. 