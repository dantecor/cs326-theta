

let restaurant = {};


/*
document.getElementById("temp").addEventListener("click", () =>
{
    console.log("helllo");
})
*/


const button = document.getElementById("find");
console.log(button);
button.addEventListener("click", () => {
  document.getElementById('table').innerHTML = '';
  (async ()=>{ const data = await fetch("https://cs326-theta.herokuapp.com/api/restaurant")
  if(data.ok)
  {
    restaurant = await data.json();
  }
  else
  {
    console.log("Error");
  }
  const name = restaurant.restaurantName;
  const selected = document.getElementById('table');

  let temp2 = document.createElement("a");
  temp2.classList = "list-group-item";
  temp2.href = "RestaurantForm.html";
  temp2.innerHTML = name;
  document.getElementById("find").remove();
  selected.appendChild(temp2);
 })();
});
