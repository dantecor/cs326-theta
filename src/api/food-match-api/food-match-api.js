const express = require('express')
const router = express.Router()
const cors = require('cors')
const bodyParser = require('body-parser')

const jsonParser = bodyParser.json()

const { Client } = require('pg');

let secrets;
let dbURL;
if (!process.env.DATABASE_URL) 
{
    secrets = require('./../../../secrets.json');
    dbURL = secrets.dbURI;
} 
    else 
{
    dbURL = process.env.DATABASE_URL;
}


 
// create application/x-www-form-urlencoded parser
const urlencodedParser = bodyParser.urlencoded({ extended: false })
 
// POST /login gets urlencoded bodies
router.post('/login', urlencodedParser, function (req, res) {
  console.log("HERE");
  res.send('welcome, ' + req.body.username)
})



 

const sampleRestaurant = 
    {
    'restaurantName': 'temppppppp',
    'address': '1 East Pleasant Street',
    'phoneNumber':'777-777-7777',
    'Website':'www.restaurant.com',
    'hours': '7am-7pm',
    'Menu' : {
        'Appetizers':
        [
            {
                'Chicn Wings': 
                [
                    'Vegan',
                    'Glutenfree'   
                ]
            }
        ],
        'Entrees':
        [
            {
                'Chicken':
                [
                    'Glutenfree'
                ]
            }
        ],
        'Desserts':
        [
            {
                'Ice Cream':
                [
                    'Vegan',
                ]
            }
        ],
        'Drinks':
        [
            {
                'Water':
                [ 
                    'Vegan',
                ]
            }
        ]
    }
}


// middleware that is specific to this router
router.use((req, res, next) => {
  console.log('Time: ', Date.now())
  next()
})
// define the home page route
router.get('/', (req, res) => {
  //const json = JSON.stringify(sampleRestaurant);
  res.send(sampleRestaurant);
})

router.get('/restaurants', cors(), function (req, res, next) {

    let restaurants = [];

    const client = new Client({
        connectionString: dbURL,
        ssl: {
          rejectUnauthorized: false
        }
      });
      
      client.connect();
      
      client.query('select * from restaurants;', (err, resp) => {
        if (err) throw err;
        for (let row of resp.rows) {
          console.log(JSON.stringify(row));
            restaurants.push(row);
        }

        client.end();
        res.json(restaurants);
        //res.send(JSON.stringify(restaurants));
      });
    
    //const json = JSON.stringify(sampleRestaurant);
    
    //res.send(json);

})
// define the about route
router.get('/about', (req, res) => {
  res.send('About foodmatch')
})

router.post('/signup', cors(),bodyParser.json(), (req, res) => {
    const client = new Client({
        connectionString: dbURL,
        ssl: {
          rejectUnauthorized: false
        }
      });
      client.connect();
      
      let firstName = req.body["first name"];
      let lastName = req.body["last name"];
      let email = req.body["email"];
      let password = req.body["password"];
      let isGluten = req.body["isGluten"];
      let isVegan = req.body["isVegan"];
      let isVegetarian = req.body["isVegetarian"];


      let query = "INSERT INTO users(email, first_name, last_name, password, vegetarian, vegan, glutenfree) VALUES($1, $2, $3, $4, $5, $6, $7)";
      const values = [email, firstName, lastName, password, isVegetarian, isVegan, isGluten];

      client.query(query, values, (err, res) => {
        if (err) 
        {
            throw err;
        }
        client.end();
      });
      res.send("Success");
});

router.get('/emails', cors(), function (req, res, next) {

    let emails = [];

    console.log("HER");
    const client = new Client({
        connectionString: dbURL,
        ssl: {
          rejectUnauthorized: false
        }
      });
      
    client.connect();
    client.query('SELECT email FROM users;', (err, resp) => {
        if (err) throw err;
        for (let row of resp.rows) {
          console.log(JSON.stringify(row));
            emails.push(row);
        }

        client.end();
        res.json(emails);
        //res.send(JSON.stringify(restaurants));
      });
});

  
router.post('/createRestaurant', cors(),bodyParser.json(), (req, res, next) => {
    console.log(req.body);
    console.log(req.body);
    const restaurantJSON = req.body;

    console.log("restaurantcreated");

    let isValidData = true;
    if(isValidData)
    {
        const client = new Client({
            connectionString: dbURL,
            ssl: {
              rejectUnauthorized: false
            }
          });
        client.connect();
        const text = 'INSERT INTO restaurants(res_id,name) VALUES($1, $2) RETURNING *'
        const values = [3,restaurantJSON.name];
        client.query
        (
            text,
            values,
            (err, res) =>
            {

                if (err) {
                    console.log(err.stack)
                } else {
                    console.log(res.rows[0])
                }
            }
        )
    }
    else
    {
        res.send("Invalid data");
    }
});



router.get('/testing', (req, res) => {
    
    res.send("HERE");

    const client = new Client({
        connectionString: dbURL,
        ssl: {
          rejectUnauthorized: false
        }
      });
      
      client.connect();
      
      client.query('SELECT * from restaurant;', (err, res) => {
        if (err) throw err;
        for (let row of res.rows) {
          console.log(JSON.stringify(row));
        }
        client.end();
      });
    
});

router.get('/menus/restaurant/:restaurantName', (req, res) => {

    const menuitems = [];
    const restaurantName = req.params.restaurantName;
    const name = restaurantName.replace('+', ' ');
    const client = new Client({
        connectionString: dbURL,
        ssl: {
          rejectUnauthorized: false
        }
      });
      
      client.connect();
      
      const query = {
        text: 'SELECT * from menus where res_name = $1',
        values: [name],
      }
      client.query(query, (err, resp) => {
        if (err) throw err;
        for (let row of resp.rows) {
          console.log(JSON.stringify(row));
            menuitems.push(row);
        }
        client.end();
        res.json(menuitems);
      });
    
});





//handle wildcard
router.get('*', (req, res) => {
    res.send('404: Page not found');
});




module.exports = router
