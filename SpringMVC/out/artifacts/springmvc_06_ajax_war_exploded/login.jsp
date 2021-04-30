<%--
  Created by IntelliJ IDEA.
  User: Lyon
  Date: 2021-4-29
  Time: 下午 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面实时判断账号密码</title>
    <script src="static/js/jquery-3.4.1.js"></script>
    <script>
        function a() {
            $.post({
                url: "${pageContext.request.contextPath}/login",
                data: {"username": $("#username").val(), "password": $("#password").val()},
                success: function (data) {
                    if (data != "") {
                        $("#msg").html(data)
                    }
                }
            })
        }
    </script>
</head>
<body>
<input type="text" id="username" value="username">
<input type="password" id="password" value="password">
<span id="msg"></span>
<input type="submit" id="submit" value="submit" onclick="a()">
</body>
</html>
