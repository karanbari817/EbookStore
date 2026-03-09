<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.java.model.Book" %>
<jsp:include page="include/header.jsp" />
<h2>Your Cart</h2>
<%
    List<Book> cartBooks = (List<Book>) request.getAttribute("cartBooks");
    if (cartBooks == null || cartBooks.isEmpty()) {
%>
    <p>Your cart is empty.</p>
<% } else { %>
    <table class="book-table">
        <tr><th>Cover</th><th>Title</th><th>Author</th><th>Price</th></tr>
        <% double total = 0;
            for (Book b : cartBooks) {
                total += b.getPrice();
        %>
            <tr>
               <td>
    <% if (b.getCoverFilename() != null) { %>
       <img src="files/<%= b.getCoverFilename() %>"  class="cover-thumb-3d" alt="Book Cover">
        
    <% } else { %>
        No cover
    <% } %>
</td>

                <td><%= b.getTitle() %></td>
                <td><%= b.getAuthor() %></td>
                <td>₹ <%= b.getPrice() %></td>
            </tr>
        <% } %>
        <tr><td colspan="3" style="text-align:right;"><strong>Total:</strong></td><td>₹ <%= total %></td></tr>
    </table>
    <form action="cart" method="post" style="margin-top:12px;">
        <input type="hidden" name="action" value="clear"/>
        <button type="submit">Clear Cart</button>
    </form>
<% } %>
<jsp:include page="include/footer.jsp" />
