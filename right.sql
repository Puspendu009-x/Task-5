

Use task_5;

SELECT
    C.FirstName,
    C.LastName,
    O.OrderID,
    O.OrderDate,
    O.TotalAmount
FROM
    Customers C
RIGHT JOIN
    Orders O ON C.CustomerID = O.CustomerID;