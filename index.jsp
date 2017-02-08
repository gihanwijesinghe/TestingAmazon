<%-- 
    Document   : newjsp
    Created on : Nov 9, 2016, 4:16:09 PM
    Author     : Gihan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>Net FM</title>
        <script src="loginFiles/js/logIn.js"></script>
        <script src="loginFiles/js/jquery.min.js"></script>
        <link href="loginFiles/css/loginStyle.css" rel="stylesheet" />
    </head>

    <body>
        <div class="head">
            <h1> NETH FM MANAGEMENT SYSTEM LOGIN</h1>
        </div>

        <div class="login-block">
            <div id="form-top"
                 <h2>Login</h2>
                <div id="form-top-right">
                    <image type="image" src="loginFiles/lock.png" id="imgeLock"/>
                </div>
            </div>

            <div id="form-bottom">
                <input type="text" value="" placeholder="Username" id="username" name="username" />
                <div id='usrNameReq'></div>
                <input type="password" value="" placeholder="Password" id="password" name="password" />        
                 <div id='passwrdReq'></div>
                <input type="submit" value="Login" onclick="getLoginFromServer('username', 'password')" />
            </div>
        </div>
        <script>
            var wage = document.getElementById("password");
            wage.addEventListener("keydown", function (e) {
                if (e.keyCode === 13) {  //checks whether the pressed key is "Enter"
                   var usrName =  document.getElementById("username");
                    if(wage.value.length >1 &&  usrName.value.length > 1){
                        getLoginFromServer('username', 'password');
                    }                 
                }
            });
        </script>
    </body>

</html>
