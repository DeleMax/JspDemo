<html>
<head><title>Confirmation</title></head>

<%
	String favLang = request.getParameter("favoriteLanguage");
	
	Cookie cookies = new Cookie("myApp.favLang",favLang );
	cookies.setMaxAge(60*60*24*365);
	//send cookie back to browser
	response.addCookie(cookies);

%>

<body>
	
	Thanks! We set your favourite language to:${param.favouriteLanguage}
	<br><br>
	<a href="cookies-homepage.jsp">Return to home</a>

</body>


</html>