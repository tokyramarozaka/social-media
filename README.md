# DATABASE : social-media
An intermediate social media database and its queries, implemented using the PostgreSQL DBMS. Accounts can message each other, send invititations to other accounts, make posts and react to those posts with either "love", "like", "haha", "grrr", and "who cares?".

# How to use ? 
1. Make sure you have PostgreSQL version 10 or higher installed on your OS (version 14 was used at the time of writing);
2. To create the database and its tables : create a database, and run the `social_media.sql` in your PostgreSQL terminal; 
3. On PSQL, simply run : `\i absolute/path/to/file`
4. Run the `initializeMock.sql` file to insert some mock accounts, aftewards, you can run the files in the `mocks` folder : 
- `1_mockInvites.sql`, 
- `2_mockMessages.sql`,
- `3_mockPost.sql` 
- `4_mockReactPost.sql`
5. Run some queries inside the `select` folder, or some queries of your own. 
6. Experiment, extend and enjoy ! Happy learning !

# Database schema
Here is the database model, made with Jet Brain's Datagrip (which you will get very shortly). It includes 5 tables : Account, Send_invites, Post, React_post, and Message. 

![alt text](https://github.com/tokyramarozaka/social-media/blob/main/assets/Diagram.png)

# Practice assignements - English version (French version is further down)
1.  On which column.s would you add indexes and why ? 
2. We want to simulate a real social network with this database, to do this write the following queries: 
- For a certain account with ID 1, display all unaccepted invitations it has sent.

- To make the list of friends, display all the friends of account with id = 1, with the columns: 
	* first_name, last_name, nickname, profile_pic (of the friend!) and friendship_birthday;

- To display all recent friends : just lilke Facebook, display the 9 most recent friends (first_name and last_name) added to the list of friends of a certain account (ex: id_account = 1);

- To make a conversation: get all the messages between two accounts (ex: id_account 1 and 2). We want to have the first_name of the sender, then the first_name of the receiver, the date of sending (message_datetime), the content of the message, and the time when the message was seen (seen_datetime) if it exists. All sorted by descending message_datetime;

- To determine the most active contacts of a given user (ex: id_user = 1): display for each user_name (including itself) the total number of messages sent. This list should be sorted according to the number of messages sent, in descending order;

- To make a news feed: get all posts sent during the last 3 days with the columns id_account(of the sender), posting_date, posting_time, post_content. The posts should be sorted, so that the most recent posts are first.

- Same question but this time order them according to the number of positive reactions they had. The post with the most positive reactions should come first. We distinguish as positive reactions "like", "love", "haha", and as negative reactions: "grrr" and "who cares? 

# Pratice assignements - French version
1. Sur quelle colonne.s metteriez vous un index et pourquoi ? 
2. Nous voulons simuler un vrai réseau social avec cette base de données, pour cela écrire les requêtes suivantes : 
- Pour un certain compte avec l'identifiant 1, affichez toutes les invitations non acceptées qu'il a envoyé.

- Pour faire la liste d'amis, afficher tous les amis de compte avec l'identifiant 1, avec les colonnes: 
	* first_name, last_name, nickname, profile_pic (ceux de l’ami !) et friendship_birthday;

- Pour afficher tous les amis récents : comme pour Facebook, afficher les 9 amis les plus récents (first_name et last_name) ajoutés à la liste d’amis d’un certain compte (ex: id_account = 1);

- Pour faire une conversation : récupérer tous les messages entre deux comptes (ex : id_account 1 et 2). On souhaite avoir le first_name de l’émetteur, puis celui du destinataire, la date d’envoi (message_datetime), le contenu du message, et l’heure à laquelle le message a été vu (seen_datetime) si elle existe. Le tout trié par message_datetime décroissant;

- Pour déterminer les contacts les plus actifs d’un user donné (ex : id_user = 1) :  afficher pour chaque user_name (lui même y compris) le nombre de messages total échangées. Cette liste devra être triée selon le nombre de messages échangées, par ordre décroissant ;

- Pour faire un fil d’actualité : récupérer tous les posts envoyées durant les 3 derniers jours avec les colonnes id_account(de l’émetteur), posting_date, posting_time, post_content. Les messages doivent être triés, de sorte à avoir les posts les plus récents en premier.

- Même question mais cette fois ci triez les en fonction du nombre de reactions positives qu’ils ont eu : on distingue notamment comme réactions positivies les "like", "love", "haha", et comme réactions négatives : "grrr" et "who cares?". 
