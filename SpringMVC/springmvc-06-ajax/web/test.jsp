<%--
  Created by IntelliJ IDEA.
  User: Lyon
  Date: 2021-4-29
  Time: 下午 05:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>点击按钮后台加载数据（ajax）</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.js"></script>
    <script>
        $(function () {
            $("#btn").click(function () {
                $.post({
                    url: "${pageContext.request.contextPath}/a2",
                    success: function (data) {
                        console.log(data[0].name);
                        let html = "";
                        for (let i = 0; i < data.length; i++) {
                            html += `<tr>
                                    <td>${"${data[i].name}"}</td>
                                    <td>${"${data[i].age}"}</td>
                                    <td>${"${data[i].sex}"}</td>
                                </tr>`
                        }
                        $("#content").html(html);
                        console.log(html);
                    }
                })
            })
            $("#clear").click(function () {
                let html = "";
                $("#content").html(html);
                console.log(html);
            })
        })
    </script>
</head>
<body>
<input type="button" id="btn" value="加载数据">
<input type="button" id="clear" value="清除">
<table>
    <thead>
    <tr>
        <th>姓名</th>
        <th>年龄</th>
        <th>性别</th>
    </tr>
    </thead>
    <tbody id="content">
    <%--从后台加载数据--%>
    </tbody>
</table>
</body>
</html>
