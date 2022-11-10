




const addAppetizerButton = document.getElementById("addAppetizers");
addAppetizerButton.addEventListener("click", () => {

    /*
const element = document.getElementById('appetizersList').innerHTML+=`<div class="form-group col-md-6">
<label for="Appetizers">Appetizers</label>
<input type="text" class="form-control" id="Appetizers" placeholder="...">
</div>
<div class="form-group col-md-4">
<label for="allergenDrop-app">Allergens</label>
<br>
<select id="allergenDrop-app" class="selectpicker" multiple="multiple">
  <option>Gluten</option>
  <option>Vegan</option>
  <option>Soy</option>
</select>`;
*/
const newAppetizerRow = document.createElement("div");
newAppetizerRow.classList.add("form-row");


const newAppetizer = document.createElement('div');
newAppetizer.classList.add('form-group');
newAppetizer.classList.add('col-md-6');

newAppetizer.innerHTML += `
<label for="Appetizers">Appetizers</label>
<input type="text" class="form-control" id="Appetizers" placeholder="...">
</div>
<div class="form-group col-md-4">
<label for="allergenDrop-app">Allergens</label>
<br>
<div class="checkboxes">
              <span>
                <input type="checkbox" name="Gluten-free" value="Gluten-free"> <label>Gluten-free</label>
                <input type="checkbox" name="Soy-free" value="Soy-free"> <label>Soy-free</label>
                <input type="checkbox" name="Vegan" value="Vegan"> <label>Vegan</label>
              </span>
              </div>
</div>`;
newAppetizerRow.appendChild(newAppetizer);

document.getElementById('appetizersList').appendChild(newAppetizerRow);

/*
const newEntree = document.createElement('div');
//newEntree.classList.add("form-group col-md-6");
newEntree.innerHTML = `<label for="Entree">Entree</label>
<input type="text" class="form-control" id="Entree1" placeholder="...">
</div>
<div class="form-group col-md-4">
<label for="allergenDrop-ent">Allergens</label>
<br>
<select id="allergenDrop-ent1" class="selectpicker" multiple="multiple">
  <option>Gluten</option>
  <option>Vegan</option>
  <option>Soy</option>
</select> </div>`;

*/
//const textInput = document.createElement('input');

//document.getElementById('entreesList').innerHTML = '';
//newEntree.appendChild(textInput);
//element.appendChild(newEntree);


});


function compileData() {
   // const entrees = document.getElementById("Entree");
    const desserts = document.getElementById("Dessert");
    const name = document.getElementById("name");
    const address = document.getElementById("address");
    const phone = document.getElementById("phone");
    const hours = document.getElementById("hours");
    const website = document.getElementById("website");
    const menu = {
        Appetizers: [],
        Entrees: [],
        Desserts: []
    };
    const restaurant = {
        name: 'name',
        address: 'adress',
        phone: '77777777',
        hours: '7-7',
        website: 'www.website.com',
        menu: {}
    };
    console.log(restaurant);
    return restaurant;
}


function sendForm(){
    const restaurant = compileData();
    
    (async () => {
        const rawResponse = await fetch('http://localhost:3000/api/createRestaurant', {
          method: 'POST',
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(restaurant)
        });
        const content = await rawResponse.json();
      
        console.log(content);
      })();
     
    
}

const submitButton = document.getElementById("submit-btn");
submitButton.addEventListener("click", sendForm);

