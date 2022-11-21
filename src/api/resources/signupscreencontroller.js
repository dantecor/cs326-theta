// get the data from the boxes the user enters





const submit = document.getElementById("submit");
let userData ={};

function sendForm(){
    (async () => {
        const rawResponse = await fetch('http://localhost:3000/api/signup', {
          method: 'POST',
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(userData)
        });
        const content = await rawResponse.json();
        console.log(content);
      })();
}

submit.addEventListener("click", (event) => {
    const firstName = document.getElementById("firstName").value;
    const secondName = document.getElementById("secondName").value;
    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;
    const confirm = document.getElementById("confirm").value;
    let allergens = "";
    if(!document.getElementById("field") === null)
    { 
        field = document.getElementById("field").placeholder;
        if(field.includes("Gluten"))
        {
            allergens += " Gluten "
        }
        if(field.includes("Vegan"))
        {
            allergens += " Vegan ";
        }
        if(field.includes("Soy"))
        {
            allergens += " Soy ";
        }
    }

    if(firstName.length === 0 || secondName.length === 0 || email.length === 0 || password.length === 0
    || confirm.length === 0)
    {
        window.alert("Enter every field please");
    }
    else 
    {
        userData["first name"] = firstName;
        userData["last name"] = secondName;
        userData["email"] = email;
        userData["password"] = password;
        userData["confirm"] = confirm;
        userData["allergens"] = allergens;
        sendForm();
    }
});

//add gluten to selected field
document.getElementById("gluten").addEventListener("click", (event) => 
{
    const selectedDiv = document.getElementById("selected");
    const div = document.createElement("div");
    div.classList.add("box-small");

    if(selectedDiv.childNodes.length !== 0)
    {
        const field = document.getElementById("field");
        if(!field.placeholder.includes("Gluten"))
        {
            field.placeholder += ", Gluten";
        }
    }
    else
    {
        const field = document.createElement("input");
        field.id = "field";
        field.classList.add("form-control");
        field.classList.add("widebox");
        field.disabled = true;
        field.type = "text";
        field.placeholder = "Selected: Gluten";

        div.appendChild(field);
        selectedDiv.appendChild(div);
    }
});

//add vegan to selected field
document.getElementById("vegan").addEventListener("click", (event) => 
{
    const selectedDiv = document.getElementById("selected");
    const div = document.createElement("div");
    div.classList.add("box-small");

    if(selectedDiv.childNodes.length !== 0)
    {
        const field = document.getElementById("field");
        if(!field.placeholder.includes("Vegan"))
        {
            field.placeholder += ", Vegan";
        }
    }
    else
    {
        const field = document.createElement("input");
        field.id = "field";
        field.classList.add("form-control");
        field.classList.add("widebox");
        field.disabled = true;
        field.type = "text";
        field.placeholder = "Selected: Vegan";

        div.appendChild(field);
        selectedDiv.appendChild(div);
    }
});

//add soy to selected field
document.getElementById("soy").addEventListener("click", (event) => 
{
    const selectedDiv = document.getElementById("selected");
    const div = document.createElement("div");
    div.classList.add("box-small");

    if(selectedDiv.childNodes.length !== 0)
    {
        const field = document.getElementById("field");
        if(!field.placeholder.includes("Soy"))
        {
            field.placeholder += ", Soy";
        }
    }
    else
    {
        const field = document.createElement("input");
        field.id = "field";
        field.classList.add("form-control");
        field.classList.add("widebox");
        field.disabled = true;
        field.type = "text";
        field.placeholder = "Selected: Soy";

        div.appendChild(field);
        selectedDiv.appendChild(div);
    }
});

//export {firstName, secondName, confirm, password, email, allergens};