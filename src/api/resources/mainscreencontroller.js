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
  (async ()=>{ 
  const data = await fetch("https://cs326-theta.herokuapp.com/api/restaurants");
  if(data.ok)
  {
    let restaurants = await data.json();
    document.getElementById("find").remove();

    for(let i = 0; i < restaurants.length; i++)
    {
      const name = restaurants[i].name;
      const selected = document.getElementById('table');

      let temp2 = document.createElement("a");
      temp2.classList = "list-group-item";
      //temp2.href = "RestaurantView.html";
      temp2.id = ""+(i+1);
      temp2.innerHTML = name;
      //let tempName = name.replace(' ', '+');
      /*
      temp2.addEventListener("click", () => {

        //url for localhost 
        //
        let url = "http://localhost:3000/RestaurantMenu/"+tempName;
        console.log(temp2.href);
        window.location.href = url;
      });
      */
      temp2.href = "https://cs326-theta.herokuapp.com/RestaurantMenu/"+name;
      selected.appendChild(temp2);
    }
  }
  else
  {
    console.log("Error");
  }   
 })()
});
