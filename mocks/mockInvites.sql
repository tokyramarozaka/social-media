-- 11 mock invites to test out some queries
INSERT INTO send_invite 
    (id_account_sender,id_account_receiver, is_accepted) 
VALUES
    (1,2,true),
    (1,3,true),
    (1,18,true),
    (20,1,false),
    (25,2,true),
    (8,1,true),
    (124,1,true),
    (25000,1,true),
    (13,1,true),
    (1,225,true),
    (1,30,false);
