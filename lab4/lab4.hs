-- Лабораторна робота №4
-- Студента групи КН-31 Однодворця Іллі. Варіант 8

-- Завдання:
-- Публiкацiї. Зберiгаються данi про публiкацiї, якi можуть бути книгою (автор/спiвавтори, назва, мiсто, видавництво, рiк), статтею (автор/спiвавтори, назва статтi, назва журналу, рiк, номер журналу, сторiнки) або тезами доповiдi (автор/спiвавтори, назва доповiдi, назва конференцiї, мiсто, рiк, сторiнки).
-- Визначне функцiї для :	
-- 8. пошуку усiх одноосiбних публiкацiй вказаного автора;

data Book = Book String String String Int deriving (Eq, Show)
authorOfBook (Book author _ _ _) = author
nameOfBook (Book _ name _ _) = name
cityOfPubl (Book _ _ city _) = city
yearOfPubl (Book _ _ _ year) = year

books = [(Book "Gustave Flaubert" "Madame Bovary" "Paris" 1856),
         (Book "Leo Tolstoy" "War and Peace" "Moscow" 1865),
         (Book "F. Scott Fitzgerald" "The Great Gatsby" "New York City" 1924)
        ]

checkAuthor author (x : xs) = if author == authorOfBook x then nameOfBook x else checkAuthor author xs

findAllBooksByAuthor author = [checkAuthor author books]

stat = ("Amount of books", length books)

-- Висновок: отже, я ознайомився з системою типiв та класiв типiв. 
-- Набув досвiду визначення нових типiв та класiв типiв i їх використання.