<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import ="java.util.List" %>
    <%@ page import = "java.util.ArrayList" %>
     <%@ page import = "com.simplilearn.workshop.list.Class" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of classes</title>
</head>
<body>

<%
 
  List<Class> classes = new ArrayList<>();
 
   classes.add(new Class(1,4,"Samir", "Maths","11.00"));
   
   classes.add(new Class(2,8,"Ramesh","English","12.00"));
 
 
  pageContext.setAttribute("CLASSES_LIST", classes);
 
 %>
 
		<jsp:include page="list.jsp" />

				<h3>Classes</h3>
	

				<table>

					<tr>
                        <th> ID </th>
						<th>Section</th>
						<th>Subject</th>
						<th>Teacher</th>
						<th>Time</th>
						<th>List of Students</th>

					</tr>

					<c:forEach var="tempClass" items="${CLASSES_LIST }">
						<tr>

							<c:url var="tempLink" value="AdminControllerServlet">
								<c:param name="command" value="ST_LIST" />
								<c:param name="classId" value="${tempClass.id }" />
								<c:param name="section" value="${tempClass.section }" />
								<c:param name="subject" value="${tempClass.subject }" />
							</c:url>
							
                            <td>${tempClass.id}</td>
							<td>${tempClass.section}</td>
							<td>${tempClass.subject}</td>
							<td>${tempClass.teacher}</td>
							<td>${tempClass.time}</td>
							<td><a href="${tempLink }">List</a></td>
 




						</tr>


					</c:forEach>

				</table>
</body>
</html>