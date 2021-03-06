<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/4/13
  Time: 23:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<html>
<head>
    <title>release_topic</title>

    <script src="/static/js/jquery-1.8.3.js" type="text/javascript"></script>

    <script src="/static/js/jquery-1.8.3.min.js" type="text/javascript"></script>

    <link href="/static/css/bootstrap.min1.css" rel="stylesheet" type="text/css"/>

    <link href="/static/css/zTreeStyle.min.css" rel="stylesheet" type="text/css"/>

    <link href="/static/css/treeTable.min.css" rel="stylesheet" type="text/css"/>

    <script src="/static/js/jquery.treeTable.js" type="text/javascript"></script>

    <script src="/static/js/jquery.validate.js" type="text/javascript"></script>

    <link href="/static/css/jeesite.css" rel="stylesheet" type="text/css"/>

    <link href="/static/css/jeesite.min.css" rel="stylesheet" type="text/css"/>

    <script src="/static/js/jquery.ztree.all-3.5.js" type="text/javascript"></script>


    <script type="text/javascript">

        $(function () {





            $("#inputForm").validate({

                submitHandler: function (form) {

                    var canbechosencollegeid = $("#canbechosencollegeid").val();

                    if (canbechosencollegeid == 1) {

                        var ids = [], nodes = tree1.getCheckedNodes(true);
                        // alert("1");
                        for (var i = 0; i < nodes.length; i++) {

                            if (nodes[i].isParent == false) {
                                ids.push(nodes[i].id);
                            }


                            // ids.push(nodes[i].id);


                        }
                        // alert("ids:"+ids);
                        //少了这一行相当于不更新menuids也就无法更新数据
                        $("#officeIds").val(ids);


                    } else if (canbechosencollegeid == 2) {

                        var ids = [], nodes = tree.getCheckedNodes(true);
                        // alert("1");
                        for (var i = 0; i < nodes.length; i++) {

                            if (nodes[i].isParent == false) {
                                ids.push(nodes[i].id);
                            }


                            // ids.push(nodes[i].id);

                            $("#officeIds").val(ids);


                        }

                    } else if (canbechosencollegeid == 3) {


                        var ids = $("#majorId").val();

                        $("#officeIds").val(ids);
                    }

                    var type = $("#type").val();

                    var source = $("#source").val();

                    if (type == 0) {
                        alert("请填写题目类型");
                        return;
                    } else if (source == 0) {
                        alert("请填写题目来源");
                        return;
                    } else if (canbechosencollegeid == 0) {
                        alert("请选择可选专业");
                        return;
                    }

                    form.submit();


                }
            })




        //获取学院下相应的专业



        <%--        当选择部分专业时才显示，否则要隐藏  --%>

<%----%>


    </script>
</head>
<body>

<%--@elvariable id="assignmentBookWithBLOBs" type="com.design.entity.AssignmentBookWithBLOBs"--%>
<form:form id="inputForm" modelAttribute="assignmentBook" action="/task/assignmentbook/form/save" method="post" class="form-horizontal">
    <form:hidden path="id"/>
    <form:hidden path="taskid"/>
<%--    <form:hidden path="pattern"/>--%>
<%--    <form:hidden path="teacherId"/>--%>
<%--    <form:hidden path="grade"/>--%>
    <%--    <form:hidden path="createDate"/>--%>
<%--    <c:if test="${task.createDate != null}"> <form:hidden path="createDate"/></c:if>--%>
<%--    <form:hidden path="delFlag"/>--%>

    <div class="control-group" >
        <label class="control-label">内容要求：</label>
        <div class="controls">
                <%--            <form:input path="referenceData" htmlEscape="false" maxlength="50" class="required input-xlarge"/>--%>
            <form:textarea path="contentRequirements" htmlEscape="false" rows="10" maxlength="2000"
                           class="input-xxlarge required"   readonly="true"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group" >
        <label class="control-label">进度安排：</label>
        <div class="controls">
                <%--            <form:input path="referenceData" htmlEscape="false" maxlength="50" class="required input-xlarge"/>--%>
            <form:textarea path="scheduling" htmlEscape="false" rows="10" maxlength="5000"
                           class="input-xxlarge required"  readonly="true"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">参考文献：</label>
        <div class="controls">
                <%--            <form:input path="referenceData" htmlEscape="false" maxlength="50" class="required input-xlarge"/>--%>
            <form:textarea path="references" htmlEscape="false" rows="10" maxlength="5000"
                           class="input-xxlarge required" readonly="true"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="form-actions">
<%--        <input id="btnSubmit" class="btn btn-primary" type="submit"--%>
<%--               value="保 存"/>&nbsp;--%>
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>


</form:form>


</body>
</html>
