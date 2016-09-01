<html>

<body>

<h3>Training Portal</h3>
<!--first we need to read the user cookie to know wc lang info to show  -->
<%
	//the default ... if there are no cookies
	String favLang = "Java";
	//get the cookies from the browser request...note this wold return an array so use an array var

	Cookie[] theCookies = request.getCookies();
	
	//find our favLangg cookies
	 if (theCookies!=null){
		 
		 for(Cookie tempCookies:theCookies){
			 
			 if("myApp.favLang".equals(tempCookies.getName())){
				 favLang = tempCookies.getValue();
				 break;
			 }
		 }
	 }
	
	

%>

<!-- now displayin info pertaining to the favLang -->
<!-- show new books for favLang -->
<h4>New books for <%=favLang %></h4>
<ul>
	<li>book 1</li>
	<li>book 2</li>
</ul>

<h4>Hot jobs for <%=favLang %></h4>
<ul>
	<li>job 1</li>
	<li>jobs 2</li>
</ul>

<a href= "cookies-personalize-form.html">Personalize this Page</a>
</body>


</html>