<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장 객체 - Request</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String sex = request.getParameter("sex");
        String[] favo = request.getParameterValues("favo");
        // ["eco", "pol", "ent"]
        String favoStr = "";
        if(favo != null) {
            for(int i = 0; i < favo.length; i++) {
                favoStr += favo[i] + " ";
            }
            // 향상 for문
//            for (변수타입 변수이름 : 배열이름){
//                //반복할 코드
//            }
//            for(String s : favo) {
//                favoStr += s + " ";
//            }
        }

        String intro = request.getParameter("intro").replace("\r\n", "<br/>");
        // replace("\r\n","<br>") : "\r\n"을 "<br>"로 바꾸어 한 줄 줄바꿈 - \r : 맥 \n : 리눅스/유닉스
    %>

    <ul>
        <li>아이디 <%=id%></li>
        <li>성별 <%=sex%></li>
        <li>관심사 <%=favoStr%></li>
        <li>자기소개 <%=intro%></li>
    </ul>
</body>
</html>
