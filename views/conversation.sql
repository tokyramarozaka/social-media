-- les 3 views contiennent respectivements, les listes de messages, le nom de l'émeteur
-- et le nom du destinataire

CREATE VIEW message_list AS SELECT * FROM message ORDER BY message_datetime DESC;
CREATE VIEW sender_name AS SELECT first_name AS sender_first_name,id_account FROM account WHERE id_account = 1;
CREATE VIEW receiver_name AS SELECT first_name AS receiver_first_name, id_account FROM account WHERE id_account = 2;

--  voici le details d'échange
SELECT sender_first_name AS emetteur, receiver_first_name AS destinataire, message_datetime AS
date_envoi, message_content AS contenu, seen_datetime AS vu FROM sender_name INNER JOIN message_list ON
message_list.id_account_sender = sender_name.id_account
INNER JOIN receiver_name ON message_list.id_account_receiver = receiver_name.id_account
ORDER BY message_datetime DESC;

/*

emetteur | destinataire |         date_envoi         |                       contenu                        |             vu             
----------+--------------+----------------------------+------------------------------------------------------+----------------------------
 Heaven   | Mozell       | 2022-08-02 10:32:55.082699 | Okay, later !                                        | 
 Heaven   | Mozell       | 2022-08-02 10:32:44.082699 | I just grabbed some tickets to see the avengers...   | 2022-08-02 10:32:45.082699
 Heaven   | Mozell       | 2022-08-02 10:32:41.082699 | I am doing good, is our date still okay for 6:00pm ? | 2022-08-02 10:32:42.082699
 Heaven   | Mozell       | 2022-08-02 10:32:35.082699 | Hello !                                              | 2022-08-02 10:32:35.082699

*/