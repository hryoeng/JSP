<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>내장 객체 - Exception</title>
</head>
<body>
    <%
        // response 내장객체에서 에러코드 가져옴
        int status = response.getStatus();
        System.out.println(status);

        // 오류 발생한 페이지 오픈 시 오류코드에 따라 Exception 페이지 오픈
        if (status == 404) {
            out.print("404에러발생");
            out.print("<br/> 파일 경로를 확인하세요");
        } else if(status==405) {
            out.print("405에러발생");
            out.print("<br/> 요청 방식를 확인하세요");
        } else if(status==500) {
            out.print("500에러발생");
            out.print("<br/> 소스코드를 확인하세요");
        }

    %>
</body>
</html>
