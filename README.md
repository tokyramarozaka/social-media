# DATABASE : social-media
A basic social media database and its queries, implemented using the PostgreSQL DBMS. Accounts can message each other, make posts and react to those posts.

# How to use ? 
1. Make sure you have PostgreSQL version 10 or higher installed on your OS (version 14 was used at the time of writing);
2. To create the database and its tables : run the `social_media.sql file` in your PostgreSQL terminal; 
3. On PSQL, simply run : `\i absolute/path/to/file`
4. Run the `initializeMockData.sql` file to insert some mock data.
5. Run some queries inside the `select` folder, or some queries of your own. Experiment, extend and enjoy !

# Database schema
Here is the database model, made with Jet Brain's Datagrip. It includes 5 tables : Account, Send_invites, Post, React_post, and Message. 

![alt text](https://github.com/tokyramarozaka/social-media/blob/main/assets/Diagram.png)
