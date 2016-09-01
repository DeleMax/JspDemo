<%@page import = "java.util.*" %>
<html>


<body>

<!-- step1: create the html form -->

<!--here we are sending the html form info to itself -->
<form action= "todo-demo.jsp">

<!-- a text box labeled Add new task: -->
	Add new task: <input type="text" name="theTask"/>
	
<!-- a submit button: -->
	<input type="submit" value="Submit"/>

</form>


<!-- step2: add new item to "to do list" -->
<%
	//get the TODO items from the session
	List<String> items	= (List<String>)session.getAttribute("myToDoList");
	
	
	//if the TODO items doesnt exist, then create a new one
	if(items==null){
	items = new ArrayList<String>();
	session.setAttribute("myToDoList", items);
	}

	//see if there is forrm data to add
	String theItem = request.getParameter("theTask");
	if (theItem != null){
	items.add(theItem);
	}
%>
	
<!-- step3: display all the "todo list" items -->
<hr>
<b>To Do List</b>
<ol>
<%
	for (String temp: items){
		out.println("<li>" +temp+ "<li>");
	}
%>


</ol>


</body>


</html>