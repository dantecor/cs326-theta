In this milestone, we worked on making post/get requests to our PostgresSQL server in order to store data.

Here is a link to our website: https://cs326-theta.herokuapp.com/home



As you can see, we modified our food-match-api.js file to handle multiple new endpoints, most of which handle post requests to the server.


The first attached picture is from signupviewcontroller.js, which, when it received the user data for username, password, email, and allergens from the client
side sends a post request to the food-match-api endpoint, which then injects the data into the SQL server. Images of both are the first image.

Similarly, the restaurant files do something similar. The second image displays this. User enters data, which is then stored as a JSON variable,
and then sent to food-match-api.js using a POST request. Then, a SQL query is created and sent to the server. This is outlined in the second image.

We also created a SQL file, which sets up the SQL tables with dummy data, making it easier to send dummy requests. 

We also created a secrets.JSON file which allowed encryption using hashes for passwords.


Contributions: 
Dante: Secrets.JSON, Restaurants POST request + routing + injecting restaurant data into SQL database
Rohit: Injecting New User data into SQL database using query
Lenin: Creating dummy SQL file for Rohit and Dante to send SQL queries to, as well as helping with the Sign up and Restaurant SQL queries. 
