



document.getElementById("loginBtn").addEventListener("click", () =>
{
    //send post request to server with endpoint /login
    //if successful, redirect to main screen
    //if not, display error message
    const username = document.getElementById("exampleInputEmail1").value;
    const password = document.getElementById("exampleInputPassword1").value;
    const data = {username: username, password: password};
    //fetch("https://cs326-theta.herokuapp.com/api/login", {
    fetch("https://cs326-theta.herokuapp.com/login", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(data)
    }).then((response) => {

        if(response.ok)
        {
            //window.location.href = "MainScreen.html";
            //href to response url
            window.location.href = response.url;
        }
        else
        {
            window.alert("Error: Incorrect username or password");
        }
    }
    );
});