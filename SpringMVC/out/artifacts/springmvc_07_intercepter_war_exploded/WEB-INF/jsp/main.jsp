<%--
  Created by IntelliJ IDEA.
  User: Lyon
  Date: 2021-4-30
  Time: 上午 09:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
<h1>首页</h1>
<span>欢迎用户名为：${username}，</span>
<span>密码为：${password}的用户进入系统</span>

<p>
    <a href="${pageContext.request.contextPath}/user/goOut">注销</a>
</p>

</body>
</html>
