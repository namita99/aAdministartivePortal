<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import ="java.util.List" %>
    <%@ page import = "java.util.ArrayList" %>
     <%@ page import = "com.simplilearn.workshop.list.Studentsclass" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students of a class</title>
</head>
<body>

<%
 
  List<Studentsclass> classess = new ArrayList<>();
 
 classess.add(new Studentsclass("Rita","taro",30));
 classess.add(new Studentsclass("Seema","Shinde",28));
 
 
  pageContext.setAttribute("STUDENTS_LIST", classess);
 
 %>

	<jsp:include page="list.jsp" />

				<h3>Students of ${SUBJECT} class section ${SECTION} </h3>
		


				<table>
                 <tr>
                        <th>First Name</th>
						<th>Last Name</th>
						<th>Age</th>
				</tr>	

					<c:forEach var="tempStudent" items="${STUDENTS_LIST}">
					<tr>
                           <td>${tempStudent.fname}</td>
							<td>${tempStudent.lname}</td>
							<td>${tempStudent.age}</td>
                     </tr>

					</c:forEach>

				</table>
	
</body>
</html>