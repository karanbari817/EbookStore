<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.java.model.Book" %>
<jsp:include page="include/header.jsp" />
<%
    Book b = (Book) request.getAttribute("book");
    if (b == null) {
%>
    <p>Book not found.</p>
<% } else { %>
    <h2><%= b.getTitle() %></h2>
  <td>
    <% if (b.getCoverFilename() != null) { %>
        <img src="files/<%= b.getCoverFilename() %>"  class="cover-thumb-3d" alt="Book Cover">
    <% } else { %>
        No cover
    <% } %>
</td>

 
    <p><strong>Author:</strong> <%= b.getAuthor() %></p>
    <p><strong>Price:</strong> ₹ <%= b.getPrice() %></p>
    <p><strong>Description:</strong><br/> <%= b.getDescription() %></p>
    <% if (b.getEbookFilename() != null) { %>
        <p><a href="files/<%= b.getEbookFilename() %>" target="_blank">Download eBook (PDF)</a></p>
    <% } %>
    <form action="cart" method="post">
        <input type="hidden" name="action" value="add"/>
        <input type="hidden" name="bookId" value="<%= b.getId() %>"/>
        <button type="submit">Add to Cart</button>
    </form>
    <p><a href="books">Back to list</a></p>
<% } %>
<jsp:include page="include/footer.jsp" />
