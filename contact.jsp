<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="include/header.jsp" />

<main class="container">
    <h2>📬 Contact Us</h2>
    <p style="text-align:center;">Have a question, suggestion, or feedback? We’d love to hear from you!</p>

    <%-- ✅ Show success message when available --%>
    <%
        String successMessage = (String) request.getAttribute("successMessage");
        if (successMessage != null) {
    %>
        <div class="success-box">
            <%= successMessage %>
        </div>
    <% } %>

    <div class="contact-page">
        <form action="contact" method="post" class="contact-form">
            <label>Your Name:</label>
            <input type="text" name="name" placeholder="Enter your name" required>

            <label>Your Email:</label>
            <input type="email" name="email" placeholder="Enter your email" required>

            <label>Your Message:</label>
            <textarea name="message" rows="5" placeholder="Write your message here..." required></textarea>

            <button type="submit">Send Message</button>
        </form>

        <div class="contact-info">
            <h3>📞 Get in Touch</h3>
            <p><strong>Phone:</strong>+91 8421041256</p>
            <p><strong>Email:</strong> 
                <a href="mailto:kothalkarkaran69@gmail.com">kothalkarkaran69@gmail.com</a>
            </p>
            <p><strong>Address:</strong> Pune, Maharashtra, India</p>
        </div>
    </div>
</main>
s
<jsp:include page="include/footer.jsp" />
