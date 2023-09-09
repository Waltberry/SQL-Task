/*c. The business is interested in knowing the number of staff based on gender.
• Make a comment answering - Is there gender parity? and if not suggest why so */

SELECT Gender, COUNT(*) AS GenderCount
FROM AdventureWorks2022.HumanResources.Employee
GROUP BY Gender;

/* Is there gender parity? and if not suggest why so.
Answer: No, there is no gender parity as the number of male employees is 206 and the female employees are 84.*/
