<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>学员管理平台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script type="application/x-javascript">
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>

    <script>
        function removeById(id) {
            if(confirm("确定要删除吗？")){
                $.ajax({
                    url:"${pageContext.request.contextPath}/student/remove?id="+id,
                    type:"Get",
                    dataType:"json",
                    success:function (res) {
                        if(res){
                            window.location.reload();
                            alert("删除成功！");
                        }else {
                            alert("删除失败！");
                        }
                    },
                    error:function () {
                        alert("系统错误，请联系管理员！");
                    }
                })
            }
        }
    </script>
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css'/>

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css'/>

    <!-- font-awesome icons CSS -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons CSS -->

    <!-- side nav css file -->
    <link href='${pageContext.request.contextPath}/css/SidebarNav.min.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- side nav css file -->

    <!-- js-->
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/modernizr.custom.js"></script>

    <!-- Metis Menu -->
    <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/custom.js"></script>
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
    <!--//Metis Menu -->

</head>
<body class="cbp-spmenu-push">
<div class="main-content">
    <div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
        <!--left-fixed -navigation-->
        <aside class="sidebar-left">
            <nav class="navbar navbar-inverse">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse"
                            aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <h1><a class="navbar-brand" href="${pageContext.request.contextPath}/home.jsp"><span
                            class="fa fa-area-chart"></span> laixueIT
                        <span class="dashboard_text">学员管理</span></a></h1>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="sidebar-menu">
                        <li class="header">laixueIT</li>
                        <li class="treeview">
                            <a href="${pageContext.request.contextPath}/home.jsp">
                                <i class="fa fa-dashboard"></i> <span>首页</span>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="${pageContext.request.contextPath}/#">
                                <i class="fa fa-building-o"></i>
                                <span>学员管理</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu menu-open" style="display: block;">
                                <li><a href="${pageContext.request.contextPath}/student/getStudent">学员列表</a></li>
                                <li><a href="${pageContext.request.contextPath}/student/toAdd">学员添加</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="${pageContext.request.contextPath}/#">
                                <i class="fa fa-user-md"></i>
                                <span>老师管理</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="${pageContext.request.contextPath}/teacher/getTeachers"> 老师列表</a></li>
                                <li><a href="${pageContext.request.contextPath}/teacherAdd.jsp"> 老师添加</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="${pageContext.request.contextPath}/#">
                                <i class="fa fa-pagelines"></i>
                                <span>班级管理</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="${pageContext.request.contextPath}/class/getClass"> 班级列表</a></li>
                                <li><a href="${pageContext.request.contextPath}/classAdd.jsp"> 班级添加</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="${pageContext.request.contextPath}/#">
                                <i class="fa fa-bars"></i>
                                <span>其它</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="${pageContext.request.contextPath}/messageAdd.jsp">消息添加</a></li>
                                <li><a href="${pageContext.request.contextPath}/media.jsp"> 班级添加</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </aside>
    </div>
    <!--left-fixed -navigation-->

    <!-- header-starts -->
    <div class="sticky-header header-section ">
        <div class="header-right">
            <div class="profile_details">
                <ul>
                    <li class="dropdown profile_details_drop">
                        <a href="${pageContext.request.contextPath}/#" class="dropdown-toggle" data-toggle="dropdown"
                           aria-expanded="false">
                            <div class="profile_img">
                                <span class="prfil-img"><img src="${pageContext.request.contextPath}/images/2.jpg"
                                                             alt=""> </span>
                                <div class="user-name">
                                    <p>张三</p>
                                    <span>管理员</span>
                                </div>
                                <i class="fa fa-angle-down lnr"></i>
                                <i class="fa fa-angle-up lnr"></i>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                        <ul class="dropdown-menu drp-mnu">
                            <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-cog"></i> 修改密码</a></li>
                            <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-user"></i> 个人信息</a></li>
                            <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-sign-out"></i> 登出</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
    <!-- //header-ends -->
    <!-- main content start-->
    <div id="page-wrapper">
        <div class="main-page">
            <div class="tables">
                <h2 class="title1">所有学员</h2>
                <div class="table-responsive bs-example widget-shadow">
                    <h4>学员列表:</h4>
                    <div>
                        <form class="form-inline" action="${pageContext.request.contextPath}/student/getStudent" method="get">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" placeholder="学生姓名" value="${sel_student.name}"></div>
                            <div class="form-group">
                                <select class="form-control" name="classId">
                                    <option value="">全部</option>
                                    <c:forEach items="${classList}" var="classes">
                                        <option value="${classes.id}"
                                                <c:if test="${sel_student.classId eq classes.id}">selected</c:if>
                                        >${classes.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-default">搜索</button>
                        </form>
                    </div>
                    <table class="table table-bordered">
                        <tr>
                            <th>#</th>
                            <th>编号</th>
                            <th>姓名</th>
                            <th>年龄</th>
                            <th>地址</th>
                            <th>手机号</th>
                            <th>性别</th>
                            <th>操作</th>
                        </tr>
                        <c:forEach items="${pageInfo.list}" var="student" varStatus="a">
                            <tr>
                                <th scope="row">${a.count}</th>
                                <td>${student.id}</td>
                                <td>${student.name}</td>
                                <td>
                                    <jsp:useBean id="now" class="java.util.Date" scope="page"></jsp:useBean>
                                    <fmt:formatNumber value="${now.year-student.birthday.year}"></fmt:formatNumber>
                                </td>
                                <td>${student.address}</td>
                                <td>${student.phone}</td>
                                <td>${student.gender ==1 ?'男':'女'}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/student/findById/${student.id}">编辑</a>
                                    <a href="#" onclick="removeById(${student.id})">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                    <div style="float: right; font-size: 1.5rem;">
                        <nav>
                            <ul class="pagination">
                                <li style="margin-left: 0.9375rem;"><a href="${pageContext.request.contextPath}/student/getStudent?start=${pageInfo.prePage}&name=${sel_student.name}&classId=${sel_student.classId}" aria-label="Previous"><span
                                        aria-hidden="true">«</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/student/getStudent?start=${pageInfo.nextPage}&name=${sel_student.name}&classId=${sel_student.classId}" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--footer-->
    <div class="footer">
        <p>&copy; 2018 Glance Design Dashboard. All Rights Reserved | Design by <a
                href="${pageContext.request.contextPath}/https://w3layouts.com/" target="_blank">w3layouts</a></p>
    </div>
    <!--//footer-->
</div>

<!-- side nav js -->
<script src='js/SidebarNav.min.js' type='text/javascript'></script>
<script>
    $('.sidebar-menu').SidebarNav()
</script>
<!-- //side nav js -->

<!-- Classie -->
<!-- for toggle left push menu script -->
<script src="${pageContext.request.contextPath}/js/classie.js"></script>
<script>
    var menuLeft = document.getElementById('cbp-spmenu-s1'),
        showLeftPush = document.getElementById('showLeftPush'),
        body = document.body;

    showLeftPush.onclick = function () {
        classie.toggle(this, 'active');
        classie.toggle(body, 'cbp-spmenu-push-toright');
        classie.toggle(menuLeft, 'cbp-spmenu-open');
        disableOther('showLeftPush');
    };

    function disableOther(button) {
        if (button !== 'showLeftPush') {
            classie.toggle(showLeftPush, 'disabled');
        }
    }
</script>
<!-- //Classie -->
<!-- //for toggle left push menu script -->

<!--scrolling js-->
<script src="${pageContext.request.contextPath}/js/jquery.nicescroll.js"></script>
<script src="${pageContext.request.contextPath}/js/scripts.js"></script>
<!--//scrolling js-->

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>

</body>
</html>

