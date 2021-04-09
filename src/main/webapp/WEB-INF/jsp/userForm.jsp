<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/4/8
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<html>
<head>
    <title>Title</title>

    <script src="/static/js/jquery-1.8.3.js" type="text/javascript"></script>

    <script src="/static/js/jquery-1.8.3.min.js" type="text/javascript"></script>

    <link href="/static/css/bootstrap.min1.css" rel="stylesheet" type="text/css"/>

    <link href="/static/css/treeTable.min.css" rel="stylesheet" type="text/css"/>

    <script src="/static/js/jquery.treeTable.js" type="text/javascript"></script>

    <link href="/static/css/jeesite.css" rel="stylesheet" type="text/css"/>

    <link href="/static/css/jeesite.min.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript">

        function getSecond() {//如果第一个下拉列表的值改变则调用此方法
            var code = $("#id option:selected").attr("value");//得到第一个下拉列表的值
            alert("code:" + code);
            if (code != null && "" != code && -1 != code) {
                //通过ajax传入后台，把orderTypeName数据传到后端
                $.post("/user/getChildMenu", {code: code}, function (data) {
                    var res = $.parseJSON(data);//把后台传回的json数据解析
                    var option = '';
                    option = '<option>'+'请选择'+'</option>';
                    for(var i = 0;i < data.length;i++){
                        option += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
                    }

                    // $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                    //     option += "<option value='" + n.name + "'>" + n.name + "</option>"
                    // });
                    alert("option:" + option);
                    $("#name").html(option);//将循环拼接的字符串插入第二个下拉列表
                    $("#name").show();//把第二个下拉列表展示
                });

            } else {
                $("#name").hide();
            }
        }


    </script>
</head>
<body>

<form:form id="inputForm" modelAttribute="user" action="" method="post" class="form-horizontal">
    <div class="control-group">
        <label class="control-label">所属学院:</label>
        <div class="controls">
            <form:select path="id" class="input-xlarge" onchange="getSecond()">
                <form:option value="" label="请选择"/>
                <form:options items="${UserParentMenu}" itemLabel="name" itemValue="id" htmlEscape="false"
                              class="required"/>
                <%--            <form:option value="1" label="系统用户"/>--%>
            </form:select>
        </div>
    </div>
    <div class = "control-group">
        <label class="control-label">所属专业:</label>
        <div class="controls">
            <form:select path="name" class="input-xlarge" onchange="">
                <%--            <form:options items="${UserParentMenu}" itemLabel="name" itemValue="id" htmlEscape="false"--%>
                <%--                          class="required"/>--%>
                <%--            <form:option value="1" label="系统用户"/>--%>
            </form:select>
        </div>
    </div>
</form:form>


</body>
</html>
