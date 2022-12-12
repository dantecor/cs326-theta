

let map;

function initMap() {
  map = new google.maps.Map(document.getElementById("map"), {
    center: { lat: -34.397, lng: 150.644 },
    zoom: 8,
  });
}

window.initMap = initMap;

let restaurant = {};

let resName = document.getElementById("RestaurantName");
let restName = resName.innerHTML;


console.log(restName);


//(async ()=>{ const data = await fetch("https://cs326-theta.herokuapp.com/api/menus/restaurant/"+restName);
(async ()=>{ const data = await fetch("https://cs326-theta.herokuapp.com/api/menus/restaurant/"+restName);
  if(data.ok)
  {
    restaurant = await data.json();
    setUpPage();
    

  }
  else
  {
    console.log("Error");
  }

})();



console.log(restaurant);
/*
const button = document.getElementById("HELLO");
button.addEventListener("click", () => {

  console.log("HELLO");
  console.log(restaurant);
  console.log(restaurant.name);
  console.log(restaurant.address);
  console.log(restaurant.phone);

  const AppetizersList = document.getElementById("Appetizers-list");
  let div = document.createElement("div");
  let keys = Object.keys(restaurant.Menu.Appetizers[0]);
  div.innerHTML = keys[0];
  //add class to div
  div.classList.add("list-group-item");
  AppetizersList.appendChild(div);

});

*/

function setUpPage()
{
  


  const restaurantName = document.getElementById("RestaurantName");
  //restaurantName.innerHTML = 'Name: '+restaurant.restaurantName;

  const restaurantInfo = restaurant[0];

  const restaurantAddress = document.getElementById("RestaurantContact");
  restaurantAddress.innerHTML = 'Phone: '+restaurantInfo.phone;


  const restaurantHours = document.getElementById("RestaurantHours");
  restaurantHours.innerHTML = 'Hours: '+restaurantInfo.hours;

  const restaurantWebsite = document.getElementById("RestaurantWebsite");
  restaurantWebsite.innerHTML = 'Website: '+restaurantInfo.website;

  const AppetizersList = document.getElementById("Appetizers-list");
  

  //let appetizers = restaurant.Menu.Appetizers;
  restaurant.forEach(element => {
    if(element.food_type == "Appetizer")
    {
      let div = document.createElement("div");
      let keys = Object.keys(element);
      let string = "(";
      if(element["vegan"] == true)
      {
        string += "Vegan ";
      }
      if(element["vegetarian"] == true)
      {
        string += "Vegetarian ";
      }
      if(element["glutenfree"] == true)
      { 
        string += "Gluten Free ";
      }
  
      string += ")";
      if(string == "()")
      {
        string = "";
      }




      div.innerHTML = element["food_name"] + " " + string;

    
    div.classList.add("list-group-item");
    AppetizersList.appendChild(div);
    }
   
  });

  const EntreesList = document.getElementById("Entrees-list");

  //let entrees = restaurant.Menu.Entrees;
  restaurant.forEach(element => {
    if(element.food_type == "Entree")
    {
      let div = document.createElement("div");
    let keys = Object.keys(element);
    let string = "(";
    if(element["vegan"] == true)
    {
      string += "Vegan ";
    }
    if(element["vegetarian"] == true)
    {
      string += "Vegetarian ";
    }
    if(element["glutenfree"] == true)
    { 
      string += "Gluten Free ";
    }

    string += ")";
    if(string == "()")
    {
      string = "";
    }





    div.innerHTML = element["food_name"] + " " + string;
  //add class to div
  div.classList.add("list-group-item");
  EntreesList.appendChild(div);

    }

  
  });

  const DessertsList = document.getElementById("Desserts-list");

  //let desserts = restaurant.Menu.Desserts;

  restaurant.forEach(element => {
    if(element.food_type == "Dessert")
    {
      let div = document.createElement("div");
      let keys = Object.keys(element);
      let string = "(";
    if(element["vegan"] == true)
    {
      string += "Vegan ";
    }
    if(element["vegetarian"] == true)
    {
      string += "Vegetarian ";
    }
    if(element["glutenfree"] == true)
    { 
      string += "Gluten Free ";
    }

    string += ")";
    if(string == "()")
    {
      string = "";
    }




      div.innerHTML = element["food_name"] + " " + string;
    //add class to div
    div.classList.add("list-group-item");
    DessertsList.appendChild(div);

    }
   
  });

  //let drinks = restaurant.Menu.Drinks;

  const drinksList = document.getElementById("Drinks-list");

  restaurant.forEach(element => {
    if(element.food_type == "Drink")
    {
      let div = document.createElement("div");
    let keys = Object.keys(element);
    let string = "(";
    if(element["vegan"] == true)
    {
      string += "Vegan ";
    }
    if(element["vegetarian"] == true)
    {
      string += "Vegetarian ";
    }
    if(element["glutenfree"] == true)
    { 
      string += "Gluten Free ";
    }

    string += ")";
    if(string == "()")
    {
      string = "";
    }


    div.innerHTML = element["food_name"] + " " + string;
  //add class to div
    
  div.classList.add("list-group-item");
  drinksList.appendChild(div);

    }
    

  });



  







}







