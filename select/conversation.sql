-- A query to display all the messages between two accounts 1 and 2. 
SELECT sender.first_name,
    receiver.first_name,
    message.message_datetime,
    message.message_content,
    message.seen_datetime
FROM 
    message 
INNER JOIN account AS sender 
    ON sender.id_account = message.id_account_sender
INNER JOIN account AS receiver 
    on receiver.id_account = message.id_account_receiver
WHERE (message.id_account_sender = 1 AND message.id_account_receiver = 2)
    OR (message.id_account_sender = 2 AND message.id_account_receiver = 1)
ORDER BY message.message_datetime DESC;
