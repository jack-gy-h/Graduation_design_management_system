<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/4/8
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <%--    easyui相关文件--%>
    <link rel="stylesheet" type="text/css" href="/static/css/easyui.css">

    <link rel="stylesheet" type="text/css" hres="/static/css/icon.css">

    <script type="text/javascript" src="/static/js/jquery-1.8.3.js"></script>

    <script type="text/javascript" src="/static/js/jquery.easyui.min.js"></script>

    <script>
        var selectname = '';
        $(function () {
            loadData();



        });

        function loadData(selectname){
            $("#dg").datagrid({
                title: "用户信息列表",
                url: "/user/userListData",
                method: "POST",
                pagination: true,
                pageSize: 20,
                pageList: [10, 20, 30],
                rownumbers: true,
                singleSelect: true,
                fit: false,
                border: false,
                idField: "id",
                fitColumns: true, //去除滚动条
                columns: [[
                    {field: 'ck', checkbox: true},
                    {field: 'id', title: '用户ID', width: 200, hidden: true, align: 'center'},
                    {field: 'username', title: '用户名', width: 200, align: 'center', formatter: formatTitle},
                    {field: 'password', title: '密码', width: 200, align: 'center'},
                    {field: 'identity', title: '身份', width: 200, align: 'center'},
                    // {field: 'userAdmin', title: '身份', width: 200, align: 'center'}
                ]],
                queryParams:{selectname: selectname}

            })
        }

        function search() {
            var selectname = $("#btnSearchName").val();
            alert("selectname:"+ selectname);
            // params.name = name ;
            loadData(selectname);

        }

        function formatTitle(val, row) {
            return "<a target='_self' style='text-decoration:none' href='/article/" + row.id + "'>" + val + "</a>"
        }
    </script>
</head>
<body>
姓名：<input class="easyui-textbox" id="btnSearchName" style="width:150px;height:32px;">
<input type="button" value="搜索" onclick="search()"/>
<table id="dg"></table>
</body>
</html>
