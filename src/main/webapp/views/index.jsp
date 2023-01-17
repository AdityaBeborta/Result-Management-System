<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <!-- CSS only -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>LoginForm</title>
</head>
<style>
* {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

body {
    background: linear-gradient(to right bottom, rgb(120, 216, 245), rgb(255, 0, 234));
    height: 100vh;
}

.container {
    height: 600px;
    width: 350px;
    box-shadow: 0px 15px 30px rgb(22, 22, 22);
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%, -50%);
    overflow: hidden;
    border-radius: 20px;
    background: linear-gradient(to right top, purple, rgb(187, 7, 142));
}

.circleTop {
    height: 300px;
    width: 300px;
    border-radius: 50%;
    background-color: white;
    box-shadow: inset 0px 15px 25px rgb(104, 102, 102), 0px 5px 15px rgb(114, 113, 113);
    margin-top: -120px;
    margin-left: -50px;
}

.circleBottom {
    height: 300px;
    width: 500px;
    border-radius: 50%;
    background-color: white;
    margin-top: 200px;
    margin-left: 200px;
    box-shadow: inset 0px 5px 15px rgb(90, 89, 89), 0px 5px 15px rgb(77, 75, 75);
}

.content {
    height: 400px;
    width: 250px;
    float: right;
    margin-top: -70px;
    margin-right: 0px;
    border-top-left-radius: 20px;
    border-bottom-left-radius: 20px;
    background: linear-gradient(to right top, rgb(236, 23, 190), rgb(4, 238, 187));
    box-shadow: 0px 5px 15px rgb(22, 21, 21);
    color: white;
    font-family: 'Raleway', sans-serif;
}

.content h1 {
    margin-left: 10px;
    padding: 20px;
    color: white;
    padding-bottom: 40px;
    font-weight: lighter;
    margin-top: 25px;
}

.form {
    border-radius: 5px;
    border: none;
    margin-top: 5px;
    padding: 8px;
    margin-bottom: 10px;
    background-color: rgba(221, 235, 240, 0.4);
    color: rgb(145, 32, 145);
}

.form:focus {
    outline: none;
    /* border: 1px solid rgb(0, 225, 255); */
}

.form-group {
    margin-left: 30px;
}

p {
    margin-left: 30px;
    margin-top: 10px;
    font-size: small;
}

p a {
    color: white;
    text-decoration: none;
}

button {
    margin-left: 50px;
    margin-top: 50px;
    padding: 10px 60px;
    border: none;
    border-radius: 20px;
    background-color: white;
    box-shadow: 0px 5px 10px grey;
}

button a {
    text-decoration: none;
    color: purple;
    font-size: large;
}

.icons {
    margin-left: 90px;
    margin-top: 30px;
}

.icons i {
    padding-right: 10px;
    font-size: larger;
    transition: 0.3s;
}

.icons a {
    text-decoration: none;
    color: white;
}

.icons i:hover {
    transform: scale(1.04);
    color: rgb(219, 116, 214);
}
</style>
<body>
    <div class="container">

        <div class="circleTop"></div>
        <div class="content">
            <h1>CUTM</h1>
          <form action="Search">
          	  <div class="form-group">
                <label for="">Enter Your Registration Number</label>
                <br>
                <input type="text"  name="regno" id="" class="form-control"  placeholder="Registration Number" required="required">
                <input type="submit" name="Check" class="btn btn-warning mt-4 text-center">
            </div>
          </form>
            

        </div>
        <div class="circleBottom"></div>

    </div>
</body>

</html>