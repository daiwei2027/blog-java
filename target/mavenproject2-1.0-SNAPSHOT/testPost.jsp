<%-- 
    Document   : test
    Created on : 2026年6月9日, 06:53:44
    Author     : daiwei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:useBean id="blog" class="bean.Blog" />
        <jsp:setProperty name="testBean" property="*" />
        <p>
            title: 
            <jsp:getProperty name="testBean" property="name"/>
        </p>
    </body>
</html>
