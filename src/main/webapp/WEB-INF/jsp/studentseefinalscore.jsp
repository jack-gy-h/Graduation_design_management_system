<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/4/24
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<html>
<head>
    <title>Title</title>

    <link href="/static/css/base.css" rel="stylesheet" type="text/css"/>

    <link href="/static/css/common.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<div id="tr_zhidao_1" style="" class="margt">
    <div class="gxf_designTable_check" name="zdname">最终成绩</div>
    <div class="gxf_designTable_content">
        <ul class="gxf_designTable_box">
            <li class="gxf_designTable_roleTime">
                <span id="span_jiaoshi_xingming">指导教师：${task.teachername}</span><span id="span_zhidao_time"
                                                                      class="margl"></span>
            </li>
            <li id="zhidao_chengji_box" class="disNone" style="display: list-item;">
                <p name="zdname">最终成绩</p>
                <div class="gxf_designTable_detailes" id="span_zhidao_chengji"><c:if test="${task.score ==null}">等待录入</c:if>${task.score}</div>
            </li>
        </ul>
    </div>
</div>

</body>
</html>
