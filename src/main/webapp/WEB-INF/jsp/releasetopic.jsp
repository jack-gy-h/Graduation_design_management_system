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

    <link href="/static/css/treeTable.min.css" rel="stylesheet" type="text/css"/>

    <script src="/static/js/jquery.treeTable.js" type="text/javascript"></script>

    <script src="/static/js/jquery.validate.js" type="text/javascript"></script>

    <link href="/static/css/jeesite.css" rel="stylesheet" type="text/css"/>

    <link href="/static/css/jeesite.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<form:form id="inputForm" modelAttribute="user" action="/user/form/save" method="post" class="form-horizontal">
    <div class="control-group">
        <label class="control-label">内容：</label>
        <div class="controls">
            <form:textarea path="id" htmlEscape="false" rows="6" maxlength="2000" class="input-xxlarge required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>



</form:form>


</body>
</html>
