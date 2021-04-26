<%--
  Created by IntelliJ IDEA.
  User: Lyon
  Date: 2021-4-25
  Time: 下午 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 —— 显示所有书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBooks">查询所有书籍</a>
        </div>
        <div class="col-md-4 column">
            <%--查询书籍--%>
            <form action="${pageContext.request.contextPath}/book/getBookByName" method="get" class="form-inline">
                <span style="color: red;font-weight: bold;">${error}</span>
                <input type="text" name="bookName" class="form-control" placeholder="请输入要查询的书籍名称">
                <input type="submit" class="btn btn-primary" value="查询">
            </form>
        </div>
        <div class="col-md-4 column">
            <%--模糊查询书籍--%>
            <form action="${pageContext.request.contextPath}/book/bookByName" method="get" class="form-inline">
                <input type="text" name="bookName" class="form-control" placeholder="请输入要查询的书籍名称">
                <input type="submit" class="btn btn-primary" value="模糊查询">
            </form>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名字</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="book" items="${requestScope.get('list')}">
                    <tr>
                        <td>${book.getBookID()}</td>
                        <td>${book.getBookName()}</td>
                        <td>${book.getBookCounts()}</td>
                        <td>${book.getDetail()}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toUpdateBook?ID=${book.getBookID()}">更改</a>
                            |
                                <%--通过问号传参--%>
                            <a href="${pageContext.request.contextPath}/book/deleteBook?ID=${book.getBookID()}">删除</a>
                                <%--通过RestFul传参--%>
                            <a href="${pageContext.request.contextPath}/book/deleteBook/${book.getBookID()}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>