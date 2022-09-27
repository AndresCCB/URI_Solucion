--2744
SELECT a.id, a.password, MD5(a.password) as MD5 
FROM account a