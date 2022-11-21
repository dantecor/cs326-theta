

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
    secrets = require('../../../secrets.json');
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

router.get('/restaurant', cors(), function (req, res, next) {
    
    //const json = JSON.stringify(sampleRestaurant);
    res.json(sampleRestaurant);
    //res.send(json);

})
// define the about route
router.get('/about', (req, res) => {
  res.send('About foodmatch')
})

  
router.post('/createRestaurant', cors(),bodyParser.json(), (req, res, next) => {
    console.log("restaurantcreated");
    console.log(req.body);
    console.log(req.body);
    res.send(req.body);
    //res.send("restaurantcreated");
});

router.get('/testing', (req, res) => {
    const client = new Client({
        connectionString: dbURL,
        ssl: {
          rejectUnauthorized: false
        }
      });
      
      client.connect();
      
      client.query('SELECT * from restaurants;', (err, res) => {
        if (err) 
        {throw err;
        }
        for (let row of res.rows) {
          console.log(JSON.stringify(row));
        }
        client.end();
      });
    
});

router.post('/signup', cors(),bodyParser.json(), (req, res, next) => {
    const client = new Client({
        connectionString: dbURL,
        ssl: {
          rejectUnauthorized: false
        }
      });
      client.connect();
      
      console.log(req.body);
      let firstName = req.body["first name"];
      let lastName = req.body["last name"];
      let email = req.body["email"];
      let password = req.body["password"];
      let allergens = req.body["allergens"];


      let query = "INSERT INTO users(user_id, first_name, last_name, email, password) VALUES($1, $2, $3, $4, $5)";
      const values = [4, firstName, lastName, email, password];

      client.query(query, values, (err, res) => {
        if (err) 
        {
            throw err;
        }
        client.end();
      });
});


//handle wildcard
router.get('*', (req, res) => {
    res.send('404: Page not found');
});







module.exports = router