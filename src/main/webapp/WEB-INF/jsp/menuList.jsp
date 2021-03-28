<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<html>
<head>
    <title>菜单管理</title>
    <meta name="decorator" content="default"/>
<%--    <link href="/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>--%>
<%--    <link href="/static/css/bootstrap.css" rel="stylesheet" type="text/css"/>--%>
<%--    <link href="/static/css/bootstrap1.css" rel="stylesheet" type="text/css"/>--%>
    <script src="/static/js/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="/static/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <link href="/static/css/bootstrap.min1.css" rel="stylesheet" type="text/css"/>
    <link href="/static/css/treeTable.min.css" rel="stylesheet" type="text/css"/>
    <script src="/static/js/jquery.treeTable.js" type="text/javascript"></script>
    <link href="/static/css/jeesite.css" rel="stylesheet" type="text/css"/>
    <link href="/static/css/jeesite.min.css" rel="stylesheet" type="text/css"/>

    <%--bootstrap.min.css--%>


    <script type="text/javascript">
        $(document).ready(function () {
            $("#treeTable").treeTable({expandLevel: 3}).show();
        });

        function updateSort() {
            loading('正在提交，请稍等...');
            $("#listForm").attr("action", "");
            $("#listForm").submit();
        }
    </script>
</head>
<body>
<ul class="nav nav-tabs">
    <li class="active"><a href="">菜单列表</a></li>
        <li><a href="">菜单添加</a></li>
</ul>
<%--<sys:message content="${message}"/>--%>
<form id="listForm" method="post">
    <table id="treeTable" class="table table-striped table-bordered table-condensed">
        <thead>
        <tr>
            <th>名称</th>
            <th>链接</th>
            <th style="text-align:center;">排序</th>
            <th>可见</th>
<%--            <th>权限标识</th>--%>
                <th>操作</th>
        </thead>
        <tbody><c:forEach items="${list}" var="menu">
            <tr id="${menu.id}" pId="${menu.parent.id ne '1'?menu.parent.id:'0'}">
                <td nowrap><i class="icon-${not empty menu.icon?menu.icon:' hide'}"></i><a
                        href="">${menu.name}</a></td>
                <td title="${menu.href}">${menu.href}</td>
                <td style="text-align:center;">
                        <input type="hidden" name="ids" value="${menu.id}"/>
                        <input name="sorts" type="text" value="${menu.sort}"
                               style="width:50px;margin:0;padding:0;text-align:center;">
<%--                        ${menu.parentIds}--%>
                </td>
                <td>${menu.isShow eq '1'?'显示':'隐藏'}</td>
<%--                <td title="${menu.permission}">${menu.permission}</td>--%>
                    <td nowrap>
                        <a href="">修改</a>
                        <a href=""
                           onclick="">删除</a>
                        <a href="">添加下级菜单</a>
                    </td>
            </tr>
        </c:forEach></tbody>
    </table>
        <div class="form-actions pagination-left">
            <input id="btnSubmit" class="btn btn-primary" type="button" value="保存排序" onclick="updateSort();"/>
        </div>
</form>
</body>
</html>