-- 7.1 Books per author

SELECT Authors.AuthorID,
    Authors.FirstName,
    Authors.LastName,
    COUNT(*) AS BookCounts
FROM Authors JOIN Books
ON Books.Author1ID = Authors.AuthorID
OR Books.Author2ID = Authors.AuthorID
OR Books.Author3ID = Authors.AuthorID
GROUP BY Authors.AuthorID
ORDER BY Authors.AuthorID;

-- 7.2 Authors per book
SELECT Books.BookID,
Books.Title,
    COUNT(Authors.FirstName) as AuthorsCount
FROM Books JOIN Authors
ON Books.Author1ID = Authors.AuthorID
OR Books.Author2ID = Authors.AuthorID
OR Books.Author3ID = Authors.AuthorID
GROUP BY Books.BookID;

-- 7.3 Author Royalties on book
SELECT Books.Title, 
		Books.Price, 
        Publishers.PublisherName, 
        Publishers.Royalties AS RoyaltyAmount, 
        ROUND(Publishers.Royalties * Books.Price, 2)  AS RoyaltyforBook$
FROM Books
JOIN Publishers
ON Books.PublisherID = Publishers.PublisherID
ORDER BY Publishers.PublisherID;

-- 7.4 Book royalties per author

SELECT Books.Title,
		Authors.AuthorID,
        ROUND(Publishers.Royalties * Books.Price / (COALESCE((CASE WHEN Books.Author1ID IS NOT NULL THEN 1 ELSE 0 END), 0)
    + COALESCE((CASE WHEN Books.Author2ID IS NOT NULL THEN 1 ELSE 0 END), 0)
    + COALESCE((CASE WHEN Books.Author3ID IS NOT NULL THEN 1 ELSE 0 END), 0)), 2)  AS RoyaltyPerBook$
FROM Books
JOIN Authors 
ON Books.Author1ID = Authors.AuthorID
OR Books.Author2ID = Authors.AuthorID
OR Books.Author3ID = Authors.AuthorID
JOIN Publishers
ON Books.PublisherID = Publishers.PublisherID;

-- 7.5 Books in a genre

SELECT DISTINCT
Genre,
COUNT(Genre)
FROM 
Books
GROUP BY Genre
HAVING COUNT(Genre)>1;

-- 7.6 Books Published by a Publisher

SELECT 
	Publishers.PublisherID,
    Publishers.PublisherName,
    COUNT(*) AS BookCounts
FROM Publishers
JOIN Books
ON Books.PublisherID = Publishers.PublisherID
GROUP BY Publishers.PublisherID
ORDER BY Publishers.PublisherID;

-- 7.7 Editors per book

SELECT
  Books.Title,
	(
      COALESCE((CASE WHEN Books.Editor1ID IS NOT NULL THEN 1 ELSE 0 END), 0)
    + COALESCE((CASE WHEN Books.Editor2ID IS NOT NULL THEN 1 ELSE 0 END), 0)
    + COALESCE((CASE WHEN Books.Editor3ID IS NOT NULL THEN 1 ELSE 0 END), 0)
  ) AS EditorsPerBook
FROM Books;

-- 7.8 Books per Editor

SELECT 
	Editors.EditorID,
    Editors.FirstName,
    Editors.LastName,
    COUNT(*) AS BookCount
FROM Editors
JOIN Books
ON Books.Editor1ID = Editors.EditorID
OR Books.Editor2ID = Editors.EditorID
OR Books.Editor3ID = Editors.EditorID
GROUP BY Editors.EditorID
ORDER BY Editors.EditorID;

-- 7.9 Books in an order

SELECT OrderID, COUNT(OrderID) AS BooksPerOrder
FROM Orders
GROUP BY OrderID;

-- 7.10 Orders for a Book

SELECT Books.Title,
    COUNT(Orders.BookID) AS AmountOrdered
FROM Orders
JOIN Books
ON Books.BookID = Orders.BookID
GROUP BY Books.BookID
HAVING COUNT(Orders.BookID)>1;

-- 7.11 Customer Orders

SELECT 
Orders.OrderID,
Orders.BookID,
Books.Title,
Customers.CustomerFirstName,
Customers.CustomerLastName
FROM 
Orders
JOIN Books
ON Books.BookID = Orders.BookID
JOIN Customers
ON Customers.CustomerID = Orders.CustomerID
ORDER BY OrderID ASC;

-- 7.12 Orders per customer

SELECT Customers.CustomerFirstName, Customers.CustomerLastName,
COUNT(DISTINCT Orders.OrderID) AS NumberofOrders
FROM Customers 
LEFT JOIN Orders
USING (CustomerID) GROUP BY (Customers.CustomerID)
ORDER BY Customers.CustomerID;












