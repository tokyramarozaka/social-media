-- Creates a view fetching all the friends of account id = 1

-- Performs an union with all the accepted requests from 1
SELECT receiver.first_name,
    receiver.last_name,
    receiver.nickname,
    receiver.profile_pic, 
    send_invite.friendship_birthday
FROM 
    send_invite
INNER JOIN account AS receiver
    ON receiver.id_account = send_invite.id_account_receiver 
WHERE 
    send_invite.id_account_sender = 1
    AND send_invite.is_accepted = true
UNION -- and the accepted requests to 1
    SELECT sender.first_name,
        sender.last_name,
        sender.nickname,
        sender.profile_pic, 
        send_invite.friendship_birthday
    FROM 
        send_invite
    INNER JOIN account AS sender
        ON sender.id_account = send_invite.id_account_sender 
    WHERE send_invite.id_account_receiver = 1
        AND send_invite.is_accepted = true;
