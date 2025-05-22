SELECT p2.Name
FROM Dog p1, Friends f, Dog p2
WHERE MATCH(p1-(f)->p2)
AND p1.Name = 'Saku';
