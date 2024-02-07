<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>액션 태그 - useBean</title>
</head>
<body>
    <h2>액션태그로 폼값 한 번에 받기</h2>
    <form method="post" action="UseBeanAction.jsp">
        이름 : <input type="text" name="name"><br/>
        나이 : <input type="text" name="age">
        <input type="submit" value="폼 전송">
    </form>
</body>
</html>
