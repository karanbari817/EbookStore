<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.java.model.Book" %>
<jsp:include page="include/header.jsp" />
<%
    List<Book> books = (List<Book>) request.getAttribute("books");
%>
<h2>Books</h2>

<form action="books" method="get" style="display:inline;">
  <input type="text" name="search" placeholder="Search books..." value="${searchQuery}">
  <button type="submit">Search</button>
</form>


<table class="book-table">
    <tr><th>Cover</th><th>Title</th><th>Author</th><th>Price</th><th>Actions</th></tr>
    <% if (books == null || books.isEmpty()) { %>
        <tr><td colspan="5">No books available.</td></tr>
    <% } else {
        for (Book b : books) { %>
            <tr>
                <td>
                   <% if (b.getCoverFilename() != null) { %>
       <% if (b.getCoverFilename() != null) { %>
    <img src="files/<%= b.getCoverFilename() %>"  class="cover-thumb-3d" alt="Book Cover">
<% } else { %>
    No cover
<% } %>

          <% }  else { %>
                        <span class="no-cover">No cover</span>
                    <% } %>
                </td>
                <td><%= b.getTitle() %></td>
                <td><%= b.getAuthor() %></td>
                <td>₹ <%= b.getPrice() %></td>
                <td>
                    <a href="books?action=view&id=<%= b.getId() %>">View</a> |
                    <a href="books?action=edit&id=<%= b.getId() %>">Edit</a> |
                    <a href="books?action=delete&id=<%= b.getId() %>" onclick="return confirm('Delete?')">Delete</a> |
                    <form action="cart" method="post" style="display:inline;">
                        <input type="hidden" name="action" value="add"/>
                        <input type="hidden" name="bookId" value="<%= b.getId() %>"/>
                        <button type="submit">Add to Cart</button>
                    </form>
                </td>
            </tr>
    <%  } } %>
   
    
</table>

<!-- Pagination Section -->
<div class="pagination-container">
    <div class="pagination">
        <%
            int currentPage = (int) request.getAttribute("currentPage");
            int totalPages = (int) request.getAttribute("totalPages");
            String search = request.getParameter("search") != null ? request.getParameter("search") : "";

            // Prev button
            if (currentPage > 1) {
        %>
            <a href="books?page=<%= currentPage - 1 %>&search=<%= search %>" class="page-btn">&laquo;</a>
        <%
            }

            // Number buttons (1...totalPages)
            for (int i = 1; i <= totalPages; i++) {
                if (i == currentPage) {
        %>
            <a href="#" class="page-btn active"><%= i %></a>
        <%
                } else {
        %>
            <a href="books?page=<%= i %>&search=<%= search %>" class="page-btn"><%= i %></a>
        <%
                }
            }

            // Next button
            if (currentPage < totalPages) {
        %>
            <a href="books?page=<%= currentPage + 1 %>&search=<%= search %>" class="page-btn">&raquo;</a>
        <%
            }
        %>
    </div>
</div>


<jsp:include page="include/footer.jsp" />
