-- le view contient l'id du receveur
CREATE VIEW pending_invite AS SELECT id_account_receiver FROM 
send_invite WHERE is_accepted = false AND id_account_sender = 1;

-- afficher le nom du destinataires, qui n'a pas encore accepté l'invitation
SELECT first_name FROM account INNER JOIN pending_invite ON
account.id_account = pending_invite.id_account_receiver;

/*
 first_name 
------------
 Raheem
*/
