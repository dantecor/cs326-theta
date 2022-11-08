const express = require('express')
const router = express.Router()
//import sampleRestaurant from './testData/data.js'
//const sampleRestaurant = require('./testData/data.js')
//import { sampleRestaurant } from './testData/data.js';
//const sampleRestaurant = require('./')

const sampleRestaurant = 
    {
    'restaurantName': 'aRestaurant',
    'address': '1 East Pleasant Street',
    'phoneNumber':'777-777-7777',
    'Website':'www.restaurant.com',
    'Menu' : {
        'Appetizers':
        {
            'Vegetarians':
                [
                    'Chic’n wings'
                ],

            'Vegan':
                [
                    'Salad'
                ],
            'Glutenfree':
                [
                    'Salad'
                ]
        },
        'Entree':
        {
            'Vegetarians':
                [
                    'Chic’n wings'
                ],
            'Vegan':
                [
                    'Salad'
                ],
            
            'Glutenfree':
                [
                    'Glutenfree'
                ]
    
        },
        'Drinks':
        {
            'Vegetarians':
            [
                'water'
            ],
        
            'Vegan':
            [
                'water'
            ],
            'Glutenfree':
            [
                'water'
            ]
        }
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
// define the about route
router.get('/about', (req, res) => {
  res.send('About foodmatch')
})

module.exports = router

