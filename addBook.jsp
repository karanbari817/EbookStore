<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="include/header.jsp" />
<h2>Add New Book</h2>
<form action="books" method="post" enctype="multipart/form-data">
    <input type="hidden" name="action" value="create"/>
    <label>Title:<br/><input type="text" name="title" required/></label><br/><br/>
    <label>Author:<br/><input type="text" name="author"/></label><br/><br/>
    <label>Price:<br/><input type="text" name="price"/></label><br/><br/>
    <label>Cover Image:<br/><input type="file" name="cover" accept="image/*"/></label><br/><br/>
    <label>E-book (PDF):<br/><input type="file" name="ebook" accept="application/pdf"/></label><br/><br/>
    <label>Description:<br/><textarea name="description" rows="6" cols="60"></textarea></label><br/><br/>
    <button type="submit">Add Book</button>
</form>
<p><a href="books">Back to list</a></p>
<jsp:include page="include/footer.jsp" />
