<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}
input[type=text] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 3px solid #ccc;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
}

input[type=text]:focus {
    border: 3px solid #555;
}
</style>
</head>
<body>
<div class="tab">
  <button class="tablinks" onclick="openContact(event, 'Primary')">Primary</button>
  <button class="tablinks" onclick="openContact(event, 'Mailling')">Mailling</button>
  <button class="tablinks" onclick="openContact(event, 'Owner')">Owner</button>
</div>

<div id="Primary" class="tabcontent">
       <table border="0">
             <tr>
                <td>First Name:</td>
               <td><input type="text"   type="text"   type="text"  name="firstname0" value="${contactForm.contacts[0].firstname}"/></td>
            </tr>
 			<tr>
                <td>Last Name:</td>
               <td><input type="text"   type="text"    value="${contactForm.contacts[0].lastname}"/></td>
            </tr>
 			<tr>
                <td>Email:</td>
               <td><input type="text"   type="text"    value="${contactForm.contacts[0].email}"/></td>
            </tr>
 			<tr>
                <td>Phone:</td>
               <td><input type="text"   value="${contactForm.contacts[0].phone}"/></td>
            </tr>
            </table>
</div>

<div id="Mailling" class="tabcontent">
		<table border="0">
             <tr>
                <td>First Name:</td>
               <td><input type="text"    value="${contactForm.contacts[1].firstname}"/></td>
            </tr>
 			<tr>
                <td>Last Name:</td>
               <td><input type="text"   value="${contactForm.contacts[1].lastname}"/></td>
            </tr>
 			<tr>
                <td>Email:</td>
               <td><input type="text"    value="${contactForm.contacts[1].email}"/></td>
            </tr>
 			<tr>
                <td>Phone:</td>
               <td><input type="text"    value="${contactForm.contacts[1].phone}"/></td>
            </tr>
            </table>
</div>

<div id="Owner" class="tabcontent">
 			<table border="0">
             <tr>
                <td>First Name:</td>
               <td><input type="text"    value="${contactForm.contacts[2].firstname}"/></td>
            </tr>
 			<tr>
                <td>Last Name:</td>
               <td><input type="text"    value="${contactForm.contacts[2].lastname}"/></td>
            </tr>
 			<tr>
                <td>Email:</td>
               <td><input type="text"   value="${contactForm.contacts[2].email}"/></td>
            </tr>
 			<tr>
                <td>Phone:</td>
               <td><input type="text"    value="${contactForm.contacts[2].phone}"/></td>
            </tr>
            </table>
</div>

<script>
function openContact(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>
 
</body>
</html>