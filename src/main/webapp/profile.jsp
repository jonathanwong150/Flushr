<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>My Flushr Profile</title>

    <!-- GLOBAL STYLING -->
    <link rel="stylesheet" href="css/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@700;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&family=Nunito:wght@700;800&display=swap" rel="stylesheet">
  </head>
  <body>
    <!-- Header  -->
    <div id="mainHeaderDiv">
      <div id="logo" onclick="location.href='main.jsp'">
        <p1 id="headerTitle">FLUSHR.</p1>
        
      </div>
      <div id="menuButtons">
        <button class="menuButton" onclick="location.href='saved.jsp'">saved</button>
        <button class="menuButton" onclick="location.href='main.jsp'">search</button>
        <button class="menuButton active" onclick="location.href='profile.jsp'">profile</button>
      </div>
    </div>
    
    <div id="profileBackground" >
      <!-- Profile picture -->
      <div id="pfp">
        <img id="Profile Pic">  
      </div>
      
      <!-- Greeting -->
      <div>
        <p id="profileText1">Hi!</p>
        <p id="profileText2">We hope you had a good day today.</p>
      </div>

      <!-- Boxes section -->
      <div id="boxContainer">
        <div id="row">
          <div id="box">
            <p id="profileText1">Preferences</p>
          </div>
          <div id="box">
            <p id="profileText1">Map</p>
          </div>
        </div>

        <div id="row">
          <div id="box">
            <p id="profileText1">Settings</p>
          </div>
          <div id="box">
            <p id="profileText1"><a href="index.jsp" onclick="signOut();">Log Out</a></p>
          </div>
        </div>
      </div>

    </div>

  </body>

  <script>
  function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
  }
  </script>

</html>