<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<link href="<c:url value="/resources/table_css.css" />" rel="stylesheet">
	<title>Home</title>
</head>
<body>
<div class="CSSTableGenerator" style="width:60%;height:500px;">
	<table>
		<tr>
		<td>id</td>
		<td>email</td>
		<td>password</td>
		<td>name</td>
		</tr>
		<c:forEach var="calendarUser" items="${calendarUsers}">
		<tr>
			<td>${calendarUser.id}</td>
			<td>${calendarUser.email}</td>
			<td>${calendarUser.password}</td>
			<td>${calendarUser.name}</td>
		</tr>
		</c:forEach>
	</table>
</div>

<div class="CSSTableGenerator" style="width:60%;height:300px;">
	<table>
		<tr>
			<td>id</td>
			<td>when</td>
			<td>summary</td>
			<td>description</td>
			<td>owner</td>
			<td>numLikes</td>
			<td>eventLevel</td>
		</tr>
		<c:forEach var="event" items="${events}">
		<tr>
			<td>${event.id}</td>
			<td>${event.when.time}</td>
			<td>${event.summary}</td>
			<td>${event.description}</td>
			<td>${event.owner}</td>
			<td>${event.numLikes}</td>
			<td>${event.eventLevel}</td>
		</tr>
		</c:forEach>
	</table>
</div>

<div class="CSSTableGenerator" style="width:60%;height:200px;">
	<table>
		<tr>
			<td>id</td>
			<td>event id</td>
			<td>attendee id</td>
		</tr>
		<c:forEach var="eventAttendee" items="${eventAttendees}">
		<tr>
			<td>${eventAttendee.id}</td>
			<td>${eventAttendee.event.id}</td>
			<td>${eventAttendee.attendee.id}</td>
		</tr>
		</c:forEach>
	</table>
</div>



</body>
</html>
