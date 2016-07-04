/************************************************************
 * Pegov S.I. 2016-04-06
 * ??????? ??????????? ?????? ???, ??? ??????? ??????, ?? ??????? ?? ??????? ???????
 ************************************************************/

 DECLARE @milk VARCHAR(100) = 'milk'
 DECLARE @sour_cream VARCHAR(100) = 'sour cream'

SELECT p.CustomerId AS CustomerId,
p.Name AS NAME,
product.ProductName
FROM   People                      AS p
       LEFT JOIN dbo.OrderProduct  AS product
            ON  product.CustomerId = p.CustomerId
WHERE  product.ProductName LIKE '%' + @milk + '%'
       AND product.CustomerId NOT IN (SELECT _p.CustomerId
                                      FROM   dbo.People AS _p
                                             LEFT JOIN dbo.OrderProduct prod
                                                  ON  prod.CustomerId = _p.CustomerId
                                      WHERE  prod.ProductName LIKE '%' + 
                                             @sour_cream + '%')