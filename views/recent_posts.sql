-- détails d'une méssage arrangé en ordre décroissant selon leur date d'envoi

CREATE VIEW recent_post AS SELECT posting_date,posting_time, 
post_content, id_account FROM post ORDER BY posting_date DESC LIMIT 3;

-- détails des messages avec l'id de l'émetteur
SELECT account.id_account AS emetteur, posting_date,posting_time, post_content FROM account 
INNER JOIN recent_post ON account.id_account = recent_post.id_account;

/*

emetteur | posting_date |  posting_time  |                       post_content                        
----------+--------------+----------------+-----------------------------------------------------------
   201926 | 2022-08-12   | 10:42:42.78859 | Illo vitae maxime minus itaque inventore ea quos tenetur.
   196087 | 2022-08-11   | 10:41:42.78859 | Ea sunt ut vitae quo quidem.
   111111 | 2022-08-10   | 10:40:42.78859 | Quidem maxime sint.

*/