

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
restName = restName.replace(" ", "+");
//get string from innerHTML

console.log(restName);


(async ()=>{ const data = await fetch("https://cs326-theta.herokuapp.com/api/menu/restaurant/"+restName);
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

  const restaurantAddress = document.getElementById("RestaurantContact");
  restaurantAddress.innerHTML = 'Phone: '+restaurant.phoneNumber;


  const restaurantHours = document.getElementById("RestaurantHours");
  restaurantHours.innerHTML = 'Hours: '+restaurant.hours;

  const restaurantWebsite = document.getElementById("RestaurantWebsite");
  restaurantWebsite.innerHTML = 'Website: '+restaurant.Website;

  const AppetizersList = document.getElementById("Appetizers-list");
  

  let appetizers = restaurant.Menu.Appetizers;
  appetizers.forEach(element => {
    let div = document.createElement("div");
    let keys = Object.keys(element);
  div.innerHTML = keys[0];
  //add class to div
  div.classList.add("list-group-item");
  AppetizersList.appendChild(div);

  });

  const EntreesList = document.getElementById("Entrees-list");

  let entrees = restaurant.Menu.Entrees;
  entrees.forEach(element => {
    let div = document.createElement("div");
    let keys = Object.keys(element);
  div.innerHTML = keys[0];
  //add class to div
  div.classList.add("list-group-item");
  EntreesList.appendChild(div);

  });

  const DessertsList = document.getElementById("Desserts-list");

  let desserts = restaurant.Menu.Desserts;

  desserts.forEach(element => {
    let div = document.createElement("div");
    let keys = Object.keys(element);
  div.innerHTML = keys[0];
  //add class to div
  div.classList.add("list-group-item");
  DessertsList.appendChild(div);

  });

  let drinks = restaurant.Menu.Drinks;

  const drinksList = document.getElementById("Drinks-list");

  drinks.forEach(element => {
    let div = document.createElement("div");
    let keys = Object.keys(element);
  div.innerHTML = keys[0];
  //add class to div
    
  div.classList.add("list-group-item");
  drinksList.appendChild(div);

  });



  







}







