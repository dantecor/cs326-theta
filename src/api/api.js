const express = require('express');
const cors = require('cors')
const foodMatchAPI = require('./food-match-api/food-match-api')


const app = express();
const port = 3000;



app.use(cors());

app.use(express.static(__dirname+'/resources'));
app.use(express.static(__dirname+'/controllers'));
app.use('/api', foodMatchAPI);


//app.listen(port, () => console.log(`Hello world app listening on port ${port}!`))
app.listen(process.env.PORT || port);

app.get('/', (req, res) => {
    const path = __dirname;
    res.sendFile(path+'/resources/homepage.html');
});


app.get('/home', function(req, res) {
    const path = __dirname;
    res.sendFile(path+'/resources/homepage.html');
});

app.get('/main', function(req, res) {
    const path = __dirname;
    res.sendFile(path+'/resources/mainscreen.html');
});

app.get('/menu', function(req, res) {
    const path = __dirname;
    res.sendFile(path+'/resources/menu.html');
});

app.get('/restaurantform', function(req, res) {
    const path = __dirname;
    res.sendFile(path+'/resources/RestaurantForm.html');
});

app.get('/restaurant', function(req, res) {
    console.log("HLLLLO");
    const path = __dirname;
    res.sendFile(path+'/resources/RestaurantView.html');
});

//ROHIT
app.get('/signup', function(req, res) {
    const path = __dirname;
    res.sendFile(path+'/resources/signup.html');
});

app.get('*', (req, res) => {
    res.send('404: Page not found');
});






