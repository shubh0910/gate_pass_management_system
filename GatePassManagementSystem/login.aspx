﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="GatePassManagementSystem.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
@import url("https://fonts.googleapis.com/css2? family=Muli&display=swap");

        *{
            box-sizing: border-box;
        }
body {
            font-family: "Muli", sans-serif;
            background-color: #AA96DA;
            color: #fff;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            overflow: hidden;
            margin: 0;
        }
        .container {
            background-color: #393e467d;
            padding: 20px 40px;
            border-radius: 5px;
        }

            .container h1 {
                text-align: center;
                margin-bottom: 30px;
            }

.container a {
    text-decoration: none;
    color: lightblue;
}

        .btn {
            cursor: pointer;
            display: inline-block;
            width: 100%;
            background: lightblue;
            padding: 15px;
            font-family: inherit;
            font-size: 16px;
            border: 0;
            border-radius: 5px;
        }

.btn:focus { outline: 0;}

            .btn:active {
                transform: scale(0.98);
            }

.text {margin-top:30px;}

        .form-control {
            position: relative;
            margin: 20px 0 40px;
            width: 300px;
        }

            .form-control input {
                background-color: transparent;
                border: 0;
                border-bottom: 2px #fff solid;
                display: block;
                width: 100%;
                padding: 15px 0;
                font-size: 18px;
                color: #fff;
                
            }

           
.form-control input:focus,
.form-control input:valid { 
    outline: 0; 
    border-bottom-color: lightblue;
}
            .form-control label {
                position: absolute;
                top: 15px;
                left: 0;
                pointer-events: none;
            }

        .form-control label span {
            display: inline-block;
            font-size: 18px;
            min-width: 5px;
            transition: 0.3s cubic-bezier(0.68, - 0.55, 0.265,1.55);
            }

        .form-control input:focus , label span,
        .form-control input:valid , label span {
           color: lightblue;
            transform: translateY(+30px);
        }

    </style>
   <script type="text/javascript">
       const labels = document.querySelectorAll(".form-control label");

       labels.forEach((label) => {
           label.innerHTML = label.innerText.split("").map((letter, idx) =>
               '<span style="transition-delay:${idx*50}ms">${letter}</span>').join("");
       });
       function setCookie(cname, cvalue, exdays) {
           const d = new Date();
           d.setTime(d.getTime() + ( exdays * 24 * 60 * 60 * 1000));
           let expires = "expires=" + d.toUTCString();
           document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
       }
       function doProcess() {
           var un = document.getElementById("prn").value;
           alert(un);
           setCookie("Username", un, 3);
           window.open("CreateGatePass.aspx");
       }
   </script>
</head>
<body >
    <div class="container">

<h1>Sign In</h1>

<form runat="server" >

<div class="form-control">

<input type="text" id="prn" required="required" />

<label>PRN Number</label>

</div>

<div class="form-control">

<input type="password" required="required" />

<label>Password</label>

</div>

<button class="btn" onclick="doProcess()" type="submit">Submit</button>

<p class="text">Forget Password?

<a href="#">Create Account</a></p>

</form>

</div>
    
</body>
</html>