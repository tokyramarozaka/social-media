-- Le view contient l'id du destinataire et le "friendship_birthday" 

CREATE VIEW accepted_invite AS SELECT id_account_receiver, friendship_birthday FROM 
send_invite WHERE is_accepted = true AND id_account_sender = 1;

-- details des amis

SELECT first_name, last_name, nickname, profile_pic, friendship_birthday FROM account
INNER JOIN accepted_invite ON
account.id_account = accepted_invite.id_account_receiver;

/*
 first_name | last_name | nickname | profile_pic | friendship_birthday 
------------+-----------+----------+-------------+---------------------
 Mozell     | Keebler   | Mozel    | Mozell.png  | 2022-08-02
 Jena       | Mertz     | Jena     | Jena.png    | 2022-08-02
 Harmon     | Sauer     | Harmo    | Harmon.png  | 2022-08-02
 Raven      | Bahringer | Raven    | Raven.png   | 2022-08-02

*/