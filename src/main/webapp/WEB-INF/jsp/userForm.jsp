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

    <script src="/static/js/jquery.validate.js" type="text/javascript"></script>

    <link href="/static/css/jeesite.css" rel="stylesheet" type="text/css"/>

    <link href="/static/css/jeesite.min.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript">

        $(document).ready(function () {

            $("#inputForm").validate({
                rules:{
                    password:{remote:"/user/checkPassword?oldPassword="+encodeURIComponent("${user.password}")},
                    // confirmpassword:{remote:"/user/checkConfirmPassword?password="+ $("#password").val()},
                    studentNumber: {remote: "/user/checkStudentNumber?oldStudentNumber="+encodeURIComponent("${user.studentNumber}")}
                },
                messages: {
                    password: {remote: "与原密码相同"},
                    // confirmpassword: {remote: "与原密码不同"},
                    studentNumber:{remote:"该身份号已存在"}

                },
                submitHandler:function (form) {

                    var password = $("#password").val();

                    var confirmpassword = $("#confirmpassword").val();

                    // var studentNumber =  $("#studentNumber").val();

                    if(password != confirmpassword){
                        alert("两次输入的密码不一致");
                        return ;
                    }

                    // alert("password:"+password);
                    //
                    // alert("confirmpassword:"+confirmpassword);
                    //
                    // alert("studentNumber:"+studentNumber);

                }



            })


        });

        function getSecond() {//如果第一个下拉列表的值改变则调用此方法
            var code = $("#college option:selected").attr("value");//得到第一个下拉列表的值
            // alert("code:" + code);
            if (code != null && "" != code && -1 != code) {
                //通过ajax传入后台，把orderTypeName数据传到后端
                $.post("/user/getChildOffice", {code: code}, function (data) {
                    var res = $.parseJSON(data);//把后台传回的json数据解析
                    var option = '';
                    option = '<option>'+'请选择'+'</option>';
                    for(var i = 0;i < data.length;i++){
                        option += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
                    }

                    // $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                    //     option += "<option value='" + n.name + "'>" + n.name + "</option>"
                    // });
                    // alert("option:" + option);
                    $("#major").html(option);//将循环拼接的字符串插入第二个下拉列表
                    $("#major").show();//把第二个下拉列表展示
                });

            } else {
                $("#major").hide();
            }
        }


    </script>
</head>
<body>

<form:form id="inputForm" modelAttribute="user" action="" method="post" class="form-horizontal">
    <div class="control-group">
        <div class="control-group">
            <label class="control-label">个人姓名:</label>
            <div class="controls">
                <form:input path="name" htmlEscape="false" maxlength="50" class="required input-xlarge"/>
                <span class="help-inline"><font color="red">*</font> </span>
            </div>
        </div>
        <label class="control-label">用户名:</label>
        <div class="controls">
            <form:input path="username" htmlEscape="false" maxlength="50" class="required input-xlarge"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">密码:</label>
        <div class="controls">
            <input id="oldPassword" name="oldPassword" type="hidden" value="${user.password}">
            <form:input path="password" htmlEscape="false" maxlength="50" class="required input-xlarge"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">确认密码:</label>
        <div class="controls">
            <form:input path="confirmpassword" htmlEscape="false" maxlength="50" class="required input-xlarge"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">身份号:</label>
        <div class="controls">
            <input id="oldStudentNumber" name="oldStudentNumber" type="hidden" value="${user.studentNumber}">
            <form:input path="studentNumber" htmlEscape="false" maxlength="50" class="required input-xlarge"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">所属年级:</label>
        <div class="controls">
            <form:input path="gender" htmlEscape="false" maxlength="50" class="required input-xlarge"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">邮箱:</label>
        <div class="controls">
            <form:input path="email" htmlEscape="false" maxlength="50" class="required input-xlarge"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>


    <div class="control-group">
        <label class="control-label">所属学院:</label>
        <div class="controls">
            <form:select path="college" class="input-xlarge" onchange="getSecond()">
                <form:option value="" label="请选择"/>
                <form:options items="${UserParentOffice}" itemLabel="name" itemValue="id" htmlEscape="false"
                              class="required"/>
                <%--            <form:option value="1" label="系统用户"/>--%>
            </form:select>
        </div>
    </div>
    <div class = "control-group">
        <label class="control-label">所属专业:</label>
        <div class="controls">
            <form:select path="major" class="input-xlarge" onchange="">
                <%--            <form:options items="${UserParentMenu}" itemLabel="name" itemValue="college" htmlEscape="false"--%>
                <%--                          class="required"/>--%>
                <%--            <form:option value="1" label="系统用户"/>--%>
            </form:select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">用户角色:</label>
        <div class="controls">
            <form:checkboxes path="roleIdList" items="${allRoles}" itemLabel="name" itemValue="id" htmlEscape="false"
                             class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="form-actions">
        <input id="btnSubmit" class="btn btn-primary" type="submit"
               value="保 存"/>&nbsp;
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>
</form:form>


</body>
</html>
