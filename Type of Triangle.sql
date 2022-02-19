Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
Input Format

The TRIANGLES table is described as follows:



Each row in the table denotes the lengths of each of a triangle's three sides.

Sample Input



Sample Output

Isosceles
Equilateral
Scalene
Not A Triangle
Explanation

Values in the tuple  form an Isosceles triangle, because .
Values in the tuple  form an Equilateral triangle, because . Values in the tuple  form a Scalene triangle, because .
Values in the tuple  cannot form a triangle because the combined value of sides  and  is not larger than that of side .


SELECT
CASE
    WHEN (A+B>C)AND(B+C>A)AND(C+A>B) THEN
    CASE
        WHEN (A=B)AND(B=C)AND(C=A) THEN 'Equilateral'
        when (A=B)OR(B=C)OR(C=A) THEN 'Isosceles'
        else 'Scalene'
    end
    else 'Not A Triangle'
end
from TRIANGLES;
