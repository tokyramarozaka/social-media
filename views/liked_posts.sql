-- listes des posts qui ont des likes

CREATE VIEW liked_post AS SELECT posting_date, posting_time, post_content, reaction_type, post.id_account, COUNT(reaction_type) FROM post
INNER JOIN react_post ON post.id_post = react_post.id_post GROUP BY post_content, posting_date, posting_time, post_content
,post.id_account, reaction_type HAVING reaction_type = 'like' ORDER BY count DESC;

-- listes des posts les plus admirés avec leur nombre de like

SELECT account.id_account AS emetteur, posting_date, posting_time, post_content, reaction_type, count FROM account 
INNER JOIN liked_post ON account.id_account = liked_post.id_account;


/*
emetteur | posting_date |  posting_time  |                        post_content                         | reaction_type | count 
----------+--------------+----------------+-------------------------------------------------------------+---------------+-------
   130577 | 2022-08-06   | 10:36:42.78859 | Et ut aut quasi quibusdam in distinctio et consequatur.     | like          |     2
   163700 | 2022-08-08   | 10:38:42.78859 | Voluptatem et eum iste tempora eos incidunt a nobis cumque. | like          |     2
   196087 | 2022-08-11   | 10:41:42.78859 | Ea sunt ut vitae quo quidem.                                | like          |     1
    97205 | 2022-08-03   | 10:33:42.78859 | Eum rerum sapiente sint.                                    | like          |     1
   111111 | 2022-08-10   | 10:40:42.78859 | Quidem maxime sint.                                         | like          |     1
*/