<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-01-31
  Time: 오후 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String id = request.getParameter("user_id");
        String pwd = request.getParameter("user_pwd");

        if(id.equalsIgnoreCase("must") && pwd.equals("1234")) {
            response.sendRedirect("ResponseWelcome.jsp");
        } else {
            request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")
                    .forward(request,response);
        }
    %>
</body>
</html>
