<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="include/header.jsp" />
<h2>Register</h2>
<% String err = (String) request.getAttribute("error"); if (err != null) { %>
    <div class="error"><%= err %></div>
<% } %>
<link rel="stylesheet" type="text/css" href="style.css">

<form action="auth" method="post">
    <input type="hidden" name="action" value="register"/>
    <label>Full Name:<br/><input type="text" name="fullName"/></label><br/><br/>
    <label>Username:<br/><input type="text" name="username" required/></label><br/><br/>
    <label>Password:<br/><input type="password" name="password" required/></label><br/><br/>
    <button type="submit">Register</button>
</form>
<p>Have an account? <a href="login.jsp">Login here</a></p>
<jsp:include page="include/footer.jsp" />
