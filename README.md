# DATABASE : social-media
A basic social media database and its queries, implemented using the PostgreSQL DBMS. Accounts can message each other, send invititations to other accounts, make posts and react to those posts.

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
Here is the database model, made with Jet Brain's Datagrip. It includes 5 tables : Account, Send_invites, Post, React_post, and Message. 

![alt text](https://github.com/tokyramarozaka/social-media/blob/main/assets/Diagram.png)

# Practice assignements
1. Create a FakerJS script to generate 250_000 accounts like in `initializeMock.sql` file
2. On which column would you add indexes and why ? 
3. Compare the performance difference of some queries when you have put all of your indexes VS. when it has no index at all.
