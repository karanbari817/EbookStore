<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.java.model.Book" %>
<jsp:include page="include/header.jsp" />

<%
    Book book = (Book) request.getAttribute("book");
    if (book == null) {
%>
    <p>Book not found.</p>
<% } else { %>
    <h2>Edit Book</h2>
    <form action="books" method="post" enctype="multipart/form-data">
        <input type="hidden" name="action" value="update"/>
        <input type="hidden" name="id" value="<%= book.getId() %>"/>
        <label>Title:<br/><input type="text" name="title" value="<%= book.getTitle() %>" required/></label><br/><br/>
        <label>Author:<br/><input type="text" name="author" value="<%= book.getAuthor() %>"/></label><br/><br/>
        <label>Price:<br/><input type="text" name="price" value="<%= book.getPrice() %>"/></label><br/><br/>
        <label>Cover Image (leave blank to keep):<br/><input type="file" name="cover" accept="image/*"/></label><br/>
        <% if (book.getCoverFilename() != null) { %>
        <img src="files/<%= book.getCoverFilename() %>"  class="cover-thumb-3d" alt="Book Cover"  align="left">
        <% } %>
        <br/>
        <br/>
        <br/>
        <br/><br/>
        <label>E-book PDF (leave blank to keep):<br/><input type="file" name="ebook" accept="application/pdf"/></label><br/>
        <% if (book.getEbookFilename() != null) { %>
            <a href="files/<%= book.getEbookFilename() %>" target="_blank">Current eBook</a><br/>
        <% } %>
        <br/>
        <label>Description:<br/><textarea name="description" rows="6" cols="60"><%= book.getDescription() %></textarea></label><br/><br/>
        <button type="submit">Update Book</button>
    </form>
    <p><a href="books">Back to list</a></p>
<% } %>
<jsp:include page="include/footer.jsp" />
