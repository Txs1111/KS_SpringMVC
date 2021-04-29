<%--
  Created by IntelliJ IDEA.
  User: Lyon
  Date: 2021-4-29
  Time: 上午 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajax</title>
</head>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.js"></script>
<script>
    function a() {
        // 调用jquery中的post方法就是ajax，使用post方式向t1页面传参
        $.post({
            url: "${pageContext.request.contextPath}/t1",
            data: {"name": $("#text").val()},
            success: function (data) {
                console.log("success:" + data)
            },
            error: function (data) {
                console.log("error:" + data)
            }
        })
    }
</script>
<body>
<input type="text" id="text" onblur="a()">
<%--onblur失去焦点执行a()函数--%>
<%--会向/t1页面提交一个post请求--%>
</body>
</html>
