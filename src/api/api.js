const express = require('express');
const cors = require('cors')
const foodMatchAPI = require('./food-match-api/food-match-api')
//const hbs = require('hbs');
const path=require("path");
const passport = require('passport');               // handles authentication
const LocalStrategy = require('passport-local').Strategy; // username/password
const MiniCrypt = require('./miniCrypt');
const expressSession = require('express-session');
const mc = new MiniCrypt();
const app = express();
const port = 3000;

const session = {
    secret : process.env.SECRET || 'SECRET', // set this encryption key in Heroku config (never in GitHub)!
    resave : false,
    saveUninitialized: false
};

const strategy = new LocalStrategy(
    async (username, password, done) => {
	if (!findUser(username)) {
	    // no such user
	    await new Promise((r) => setTimeout(r, 2000)); // two second delay
	    return done(null, false, { 'message' : 'Wrong username' });
	}
	if (!validatePassword(username, password)) {
	    // invalid password
	    // should disable logins after N messages
	    // delay return to rate-limit brute-force attacks
	    await new Promise((r) => setTimeout(r, 2000)); // two second delay
	    return done(null, false, { 'message' : 'Wrong password' });
	}
	// success!
	// should create a user object here, associated with a unique identifier
	return done(null, username);
    });

    app.use(expressSession(session));
    passport.use(strategy);
    app.use(passport.initialize());
    app.use(passport.session());

// Convert user object to a unique identifier.
passport.serializeUser((user, done) => {
    done(null, user);
});
// Convert a unique identifier to a user object.
passport.deserializeUser((uid, done) => {
    done(null, uid);
});

app.use(express.json()); // allow JSON inputs
app.use(express.urlencoded({'extended' : true})); // allow URLencoded data


let users = {};


app.use('/resources', express.static(path.resolve(__dirname, "resources")));
app.use(cors());
app.set('view engine', 'ejs');
//app.use(bodyParser.urlencoded({extended:true}));
app.set('views',__dirname+'/resources');

app.use(express.static(__dirname+'/resources'));
app.use(express.static(__dirname+'/controllers'));
app.use('/api', foodMatchAPI);


//app.listen(port, () => console.log(`Hello world app listening on port ${port}!`))
app.listen(process.env.PORT || port);

function findUser(username) {
    if (!users[username]) {
	return false;
    } else {
	return true;
    }
}
// Returns true iff the password is the one we have stored.
function validatePassword(name, pwd) {
    if (!findUser(name)) {
	return false;
    }
    if (mc.check(pwd, users[name][0], users[name][1])) {
	return true;
    }
    return false;
}

// Add a user to the "database".
function addUser(name, pwd) {
    if (findUser(name)) {
	return false;
    }
    const [salt, hash] = mc.hash(pwd);
    users[name] = [salt, hash];
    // Now print the user database
    console.log(users);
    return true;
}

function checkLoggedIn(req, res, next) {
    let test = true;
    if (req.isAuthenticated()||test) {
	// If we are authenticated, run the next route.
	next();
    } else {
	// Otherwise, redirect to the login page.
	res.redirect('/homepage.html');
    }
}

app.get('/',
	checkLoggedIn,
	(req, res) => {
        const path = __dirname;
	    res.sendFile(path+'/resources/mainscreen.html');
});

app.post('/login',
	 passport.authenticate('local' , {     // use username/password authentication
	     'successRedirect' : '/private',   // when we login, go to /private 
	     'failureRedirect' : '/login'      // otherwise, back to login
}));

app.get('/login',
	(req, res) => res.sendFile('html/login.html',
				   { 'root' : __dirname }));

app.get('/logout', (req, res) => {
                    req.logout(); // Logs us out!
                    res.redirect('/login'); // back to login
});
            
app.post('/register',
	 (req, res) => {
	     const username = req.body['username'];
	     const password = req.body['password'];
	     if (addUser(username, password)) {
		 res.redirect('/login');
	     } else {
		 res.redirect('/register');
	     }
	});


/*
app.get('/', (req, res) => {
    const path = __dirname;
    res.sendFile(path+'/resources/homepage.html');
});
*/

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

//ROHIT
app.get('/signup', function(req, res) {
    const path = __dirname;
    res.sendFile(path+'/resources/signup.html');
});

app.get('/RestaurantMenu/:RestaurantName', function(req, res) {
    //get the restaurant name from the url
    const restaurant = req.params.RestaurantName;
    const resName = restaurant.replace("+", " ");
    //serve the restaurant menu page
    //render with ejs
    res.render('RestaurantView', {
        restaurantName: resName
    });
    //const path = __dirname;
    //res.sendFile(path+'/resources/signup.html');
});



app.get('*', (req, res) => {
    res.send('404: Page not found');
});





