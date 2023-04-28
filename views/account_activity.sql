-- identité et identité de message
CREATE VIEW user_name AS SELECT nickname, post.id_post FROM account INNER JOIN post ON
account.id_account = post.id_account;

-- liste des personnes actifs et leur nombres de mnessage
SELECT nickname, COUNT(nickname) FROM user_name GROUP BY nickname ORDER BY count(nickname) DESC;

/*
 nickname | count 
----------+-------
 Alex     |     1
 Coope    |     1
 Emmet    |     1
 Evely    |     1
 Filib    |     1
 Grays    |     1
 Juven    |     1
 Katly    |     1
 Maria    |     1
 Nelli    |     1

*/