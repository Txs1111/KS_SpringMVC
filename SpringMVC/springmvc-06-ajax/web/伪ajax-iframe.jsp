<%--
  Created by IntelliJ IDEA.
  User: Lyon
  Date: 2021-4-29
  Time: 下午 05:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>伪ajax-iframe</title>
</head>
<script>
    function a() {
        var url = document.getElementById("url").value;
        document.getElementById("iframe").src = url;
    }
</script>
<body>
<input type="text" id="url">
<input type="submit" onclick="a()">
<iframe id="iframe" style="width:100%;height:500px;"></iframe>
</body>
</html>
