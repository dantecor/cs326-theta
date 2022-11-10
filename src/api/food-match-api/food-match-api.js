const express = require('express')
const router = express.Router()
const cors = require('cors')
const bodyParser = require('body-parser')

const jsonParser = bodyParser.json()
 
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

//ROHIT: define the signup route
router.get('/signup', (req, res) => {
    res.send('Signup page');
})

  
router.post('/createRestaurant', cors(),bodyParser.json(), (req, res, next) => {
    console.log(req.body);
    console.log(req.body);
    console.log("restaurantcreated");
    res.send(req.body);
    //res.send("restaurantcreated");
});

//handle wildcard
router.get('*', (req, res) => {
    res.send('404: Page not found');
});







module.exports = router

