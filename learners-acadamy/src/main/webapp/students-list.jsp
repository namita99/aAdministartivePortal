<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
       <%@ page import ="java.util.List" %>
    <%@ page import = "java.util.ArrayList" %>
     <%@ page import = "com.simplilearn.workshop.list.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Students</title>
</head>
<body>


 <%
 
 // List<Student> students = new ArrayList<>();
 
 //students.add(new Student(1,"jam", "jaro" , 20));
// students.add(new Student(2,"mayuri", "ingale", 21));
 //students.add(new Student(3,"john", "taro", 23));
 
 //pageContext.setAttribute("STUDENT_LIST", students);
 
 %>

	<jsp:include page="list.jsp" />


				<h3>Students</h3>
		


				<table>
				<tr>
				     <th> ID</th>
				     <th>First Name</th>
					 <th>Last Name</th>
					 <th>Age</th>
					 
			    </tr>

					<c:forEach var="tempStudent" items="${STUDENT_LIST}">
						
						<tr>
                             	<td>${tempStudent.id}</td>
							<td>${tempStudent.fname}</td>
							<td>${tempStudent.lname}</td>
							<td>${tempStudent.age}</td>

                         </tr>


					</c:forEach>

				</table>
		

</body>
</html>