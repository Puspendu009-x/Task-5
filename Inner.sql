

Use task_5;

SELECT
    C.FirstName,
    C.LastName,
    O.OrderID,
    O.OrderDate,
    O.TotalAmount
FROM
    customers C
INNER JOIN
    orders O ON C.CustomerID = O.CustomerID;