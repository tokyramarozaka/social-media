-- informations sur le destinataire et la date d'amitié

CREATE VIEW recent_friend AS SELECT id_account_receiver, friendship_birthday FROM 
send_invite WHERE is_accepted = true AND id_account_sender = 1;

-- list des 9 amis récents

SELECT first_name, last_name FROM account
INNER JOIN recent_friend ON
account.id_account = recent_friend.id_account_receiver
ORDER BY friendship_birthday DESC
LIMIT 9;

/*
 first_name | last_name 
------------+-----------
 Mozell     | Keebler
 Jena       | Mertz
 Harmon     | Sauer
 Raven      | Bahringer
*/