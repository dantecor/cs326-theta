
const express = require('express');
//var bodyParser = require('body-parser');
//var multer = require('multer');
//var upload = multer();

const app = express();
const port = 3000;

//app.use(cookieParser());
//app.use(bodyParser.json());
//app.use(bodyParser.urlencoded({ extended: true }));
//app.use(upload.array());

//Require the Router we defined in movies.js

app.use(express.static(__dirname+'/resources'));
app.use(express.static(__dirname+'/controllers'));



//app.listen(3000);
//app.listen(port, () => console.log(`Hello world app listening on port ${port}!`))
app.listen(process.env.PORT || 3000);

app.get('/', (req, res) => {
    res.send('Hello World, from express');
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
    const path = __dirname;
    res.sendFile(path+'/resources/RestaurantView.html');
});





