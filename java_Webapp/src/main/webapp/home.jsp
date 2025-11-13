<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="home_1.jsp" method="post">
<table>
<tr>
<td>
Username
</td>
<td>
<input type="text" name="username" required="required">
</td>
</tr>



<tr>
<td>
Email  :
</td>
<td>
<input type="email" name="email" required="required">
</td>
</tr>


<tr>
<td>
Password
</td>
<td>
<input type="password" name="password">
</td>
</tr>

<tr>
<td>
Gender :
</td>
<td>
Male <input type="radio" name="gender">
Female <input type="radio" name="gender">
</td>
</tr>

<tr>
<td>
DOB:
</td>
<td>
<input type="date" name="dob">
</td>
</tr>



<tr>
<td>
Hobbies :
</td>
<td>
Cricket <input type="checkbox" name="hobbies">
Football <input type="checkbox" name="hobbies">
Badminton <input type="checkbox" name="hobbies">
</td>
</tr>

<tr>
<td>
Language :
</td>
<td>
English <input type="checkbox" name="language">
Hindi <input type="checkbox" name="language">
Gujarati <input type="checkbox" name="language">
</td>
</tr>

<tr>
<td>
Country :
</td>
<td>
<select name ="country">
<option value="India">India</option>
<option value="USA">USA</option>
<option value="UK">UK</option>
<option value="Canada">Canada</option>	
</select>
</td>
</tr>

<tr>
<td> 
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</td>
<td>



</table>

				    
</form>    



</body>
</html>