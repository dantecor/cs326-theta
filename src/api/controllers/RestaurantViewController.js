

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






