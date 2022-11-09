

let map;

function initMap() {
  map = new google.maps.Map(document.getElementById("map"), {
    center: { lat: -34.397, lng: 150.644 },
    zoom: 8,
  });
}

window.initMap = initMap;

let restaurant = {};

(async ()=>{ const data = await fetch("https://cs326-theta.herokuapp.com/api/restaurant")
  if(data.ok)
  {
    restaurant = await data.json();
  }
  else
  {
    console.log("Error");
  }

})();



console.log(restaurant);

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







