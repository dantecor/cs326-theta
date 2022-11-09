const express = require('express')
const router = express.Router()
const cors = require('cors')
//import sampleRestaurant from './testData/data.js'
//const sampleRestaurant = require('./testData/data.js')
//import { sampleRestaurant } from './testData/data.js';
//const sampleRestaurant = require('./')

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
  const json = JSON.stringify(sampleRestaurant);
  res.send(json);
})

router.get('/restaurant', cors(), function (req, res, next) {
    
    const json = JSON.stringify(sampleRestaurant);
    res.json(json);
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

module.exports = router

