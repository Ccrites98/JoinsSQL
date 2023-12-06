use northwind;
----
SELECT 
    Products.ProductID,
    Products.ProductName,
    Products.UnitPrice,
    Categories.CategoryName
FROM 
    Products
JOIN 
    Categories ON Products.CategoryID = Categories.CategoryID
ORDER BY 
    Categories.CategoryName, Products.ProductName;
    ----
    SELECT 
    Products.ProductID,
    Products.ProductName,
    Products.UnitPrice,
    Suppliers.CompanyName AS SupplierName
FROM 
    Products
JOIN 
    Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE 
    Products.UnitPrice > 75
ORDER BY 
    Products.ProductName;
    ----
    SELECT 
    P.ProductID,
    P.ProductName,
    P.UnitPrice,
    C.CategoryName,
    S.CompanyName AS SupplierName
FROM 
    Products AS P
JOIN 
    Categories AS C ON P.CategoryID = C.CategoryID
JOIN 
    Suppliers AS S ON P.SupplierID = S.SupplierID
ORDER BY 
    P.ProductName;
    ----
    SELECT 
    P.ProductName,
    C.CategoryName
FROM 
    Products AS P
JOIN 
    Categories AS C ON P.CategoryID = C.CategoryID
WHERE 
    P.UnitPrice = (
        SELECT MAX(UnitPrice)
        FROM Products
    );
    ----
    SELECT 
    O.OrderID,
    O.ShipName,
    O.ShipAddress,
    S.CompanyName AS ShippingCompanyName
FROM 
    Orders AS O
JOIN 
    Shippers AS S ON O.ShipVia = S.ShipperID
JOIN 
    Customers AS C ON O.CustomerID = C.CustomerID
WHERE 
    C.Country = 'Germany';
    ----
   SELECT 
    O.OrderID,
    O.OrderDate,
    O.ShipName,
    O.ShipAddress
FROM 
    Orders AS O
JOIN 
    Products AS P ON O.ProductID = P.ProductID
WHERE 
    P.ProductName = 'Sasquatch Ale';
    