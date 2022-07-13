-- 15 mock messages between the users.
INSERT INTO message (id_account_sender,id_account_receiver, message_datetime,
    message_content,seen_datetime) 
VALUES 
    (1,2,now(),'Hello !',now()),
    (2,1,now() + interval '3 seconds', 'Hello, how are you ?',now() + interval '4 seconds'),
    (1,2,now() + interval '6 seconds','I am doing good, is our date still okay for 6:00pm ?',now() + interval '7 seconds'),
    (1,2,now() + interval '9 seconds','I just grabbed some tickets to see the avengers...', now() + interval '10 seconds'),
    (2,1,now() + interval '12 seconds','Oh that''s so cool ! Okay, I should get going, later.',now() + interval '13 seconds'),
    (1,4,now(),'Hello ! are you still awake ? ',null),
    (1,1,now(),'Some reminder to myself : alarm at 1''o clock',now()),
    (4,5,now(),'Hello, where are you?',now() + interval '3 seconds'),
    (5,4,now() + interval '6 seconds','I am on the way there...',now() + interval '9 seconds'),
    (224,25000,now(),'Hello sir, what can I do for you ?',now()),
    (1,2,now() + interval '20 seconds','Okay, later !',null),
    (25000,224,now(),'I would like to order some pizza', now()),
    (5,2,now() + interval '60 seconds','Hey, did you finish your homework ?', now() + interval '61 seconds'),
    (2,5,now() + interval '63 seconds','Huh ? what homework ? I am on the way to see the avengers',now() + interval '73 seconds'),
    (5,2,now() + interval '80 seconds','Ahhhh... never mind.', now() + interval '93 seconds');