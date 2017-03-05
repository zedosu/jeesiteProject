<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>


<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>网站概述</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>

<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h2><a href="/jeesite/a/statistics/home/index">主页</a></h2>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>网站名称</th>
                    <th style="visibility:hidden">日期</th>
                    <th>浏览量</th>
                    <th>ip数</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="site" items="${list}">
                    <tr rowspan="2">
                        <td>
                            <div style="padding-top:15px"><a href="${site.url }">${site.url }</a></div>
                        </td>
                        <td>
                            <div style="color:darkgray; ">
                                <div style="padding-top:5px;">今日</div>
                                <div style="padding-top:5px;">昨日</div>
                            </div>
                        </td>
                        <td>
                            <div style="color:darkgray;">
                                <div style="padding-top:5px;">${site.pageviews1}</div>
                                <div style="padding-top:5px;">${site.pageviews2}</div>
                            </div>
                        </td>
                        <td>
                            <div style="color:darkgray;">
                                <div style="padding-top:5px;">${site.ip1}</div>
                                <div style="padding-top:5px;">${site.ip2}</div>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


<!--按照今天 昨天 最近一周 最近一月显示-->
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h2><a href="/jeesite/a/statistics/mostVisitedPage/index/${list[0].site_id}">Top10入口页面</a></h2>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>页面入口</th>
                    <th>浏览量</th>
                    <th>占比</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list2}" var="x" begin="0" end="9" step="1">
                    <c:set var="total" value="${total + x.num}"/>
                </c:forEach>
                <c:forEach items="${list2}" var="item" begin="0" end="9" step="1">
                    <tr>
                        <td>${item.url}</td>
                        <td>${item.num}</td>
                        <td><fmt:formatNumber value="${item.num/total}" type="percent"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


</body>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
