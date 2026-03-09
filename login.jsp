<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="include/header.jsp" />
<h2>Login</h2>
<% String err = (String) request.getAttribute("error"); if (err != null) { %>
    <div class="error"><%= err %></div>
<% } %>
<link rel="stylesheet" type="text/css" href="style.css">

<form action="auth" method="post">
    <input type="hidden" name="action" value="login"/>
    <label>Username:<br/><input type="text" name="username" required/></label><br/><br/>
    <label>Password:<br/><input type="password" name="password" required/></label><br/><br/>
    <button type="submit">Login</button>
</form>
<p>Don't have an account? <a href="register.jsp">Register here</a></p>
<jsp:include page="include/footer.jsp" />
