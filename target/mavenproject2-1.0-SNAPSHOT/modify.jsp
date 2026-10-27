<%-- 
    Document   : modify
    Created on : 2026年6月13日, 09:04:01
    Author     : daiwei
--%>

<%@page import="bean.Blog"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="bean.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div id="left">
            <% Collection<Category> categories = (Collection<Category>) request.getAttribute("categories");
                Iterator<Category> it = categories.iterator();
                while (it.hasNext()) {
                    Category category = it.next();
            %>
            <a href="View?category=<%=category.getId()%>"><%=category.getName()%></a>
            <%
                }
            %>
        </div>
        <div id="right">
            <%
                int category = 1;
                if (request.getParameter("category") != null) {
                    category = Integer.parseInt(request.getParameter("category"));
                } else {
                    category = Integer.parseInt(request.getAttribute("category").toString());
                }
                Blog blog = (Blog) request.getAttribute("blog");

            %>
            <form action="DoModify?category=<%=category%>&id=<%=blog.getId()%>" method="post">
                <input type="text" name="title" value="<%=blog.getTitle()%>"><br>
                <textarea name="content"><%=blog.getTitle()%></textarea><br>
                <input type="submit">
                <input type="reset">
            </form>
        </div>
    </body>
</html>
