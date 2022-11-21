In this milestone, we worked on making post/get requests to our PostgresSQL server in order to store data.

Here is a link to our website: https://cs326-theta.herokuapp.com/home



As you can see, we modified our food-match-api.js file to handle multiple new endpoints, most of which handle post requests to the server.


The first attached picture is from signupviewcontroller.js, which, when it received the user data for username, password, email, and allergens from the client
side sends a post request to the food-match-api endpoint, which then injects the data into the SQL server. Images of both are the first image.

<img width="884" alt="Screen Shot 2022-11-20 at 9 06 20 PM" src="https://user-images.githubusercontent.com/29220673/202969828-bf710d3a-bc7b-421b-8cdb-19b576814ad8.png">
<img width="830" alt="Screen Shot 2022-11-20 at 9 06 06 PM" src="https://user-images.githubusercontent.com/29220673/202969808-918eec84-1110-4a3c-bc95-0389d4b35df0.png">

This image shows the routing that will be called from the previous code, which then sends the data into the SQL database.

<img width="920" alt="Screen Shot 2022-11-20 at 9 06 55 PM" src="https://user-images.githubusercontent.com/29220673/202969900-776179e2-9c79-4300-be42-0f3c02e572b7.png">

Similarly, the restaurant files do something similar. The second image displays this. User enters data, which is then stored as a JSON variable,
and then sent to food-match-api.js using a POST request. Then, a SQL query is created and sent to the server. This is outlined in the second image.


This image shows the routing for the SQL query, which is called from the viewcontroller once the user enters data:

<img width="849" alt="Screen Shot 2022-11-20 at 9 08 07 PM" src="https://user-images.githubusercontent.com/29220673/202970044-260adae6-9237-4707-8513-3a9b24505420.png">

We also created a SQL file, which sets up the SQL tables with dummy data, making it easier to send dummy requests. 
<img width="1130" alt="Screen Shot 2022-11-20 at 9 05 15 PM" src="https://user-images.githubusercontent.com/29220673/202969728-0e31d2ec-1418-447e-8330-c71cd12f8a5b.png">

We also created a secrets.JSON file which allowed encryption using hashes for passwords.
<img width="974" alt="Screen Shot 2022-11-20 at 9 10 23 PM" src="https://user-images.githubusercontent.com/29220673/202970322-01399b2e-f12a-4913-86c8-aed0a8c67140.png">


Contributions: 
Dante: Secrets.JSON, Restaurants POST request + routing + injecting restaurant data into SQL database


Rohit: Injecting New User data into SQL database using query


Lenin: Creating dummy SQL file for Rohit and Dante to send SQL queries to, as well as helping with the Sign up and Restaurant SQL queries. 
