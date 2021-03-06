<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>登录页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css'/>

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css'/>

    <!-- font-awesome icons CSS-->
    <link href="${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons CSS-->

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

    <link rel="icon" href="${pageContext.request.contextPath}/./images/favicon.ico">

</head>
<body>
<div class="main-content">
    <!-- main content start-->
    <h2 style="text-align: center;" class="title1">学校管理平台</h2>
    <div id="page-wrapper">
        <div class="main-page login-page ">
            <h2 class="title1">登录</h2>
            <div class="widget-shadow">
                <div class="login-body">
                    <form method="post" id="loginForm">
                        <input type="text" style="padding: 14px 15px 14px 37px;width: 100%;margin-bottom: 10px;"
                               class="user" name="username" placeholder="登录账号" required="">
                        <input type="password" name="password" class="lock" placeholder="登录密码" required="" style="margin-bottom: 10px">
                        <small class="text-danger" id="ver"></small>
                        <div class="forgot-grid">
                            <label class="checkbox"><input type="checkbox" name="checkbox"
                                                           checked=""><i></i>记住密码</label>
                            <div class="forgot">
                                <a href="${pageContext.request.contextPath}/#">忘记密码</a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div align="center">
                            <input type="button" id="login" value="登录"
                                   style="width: 120px;height: 40px;background-color: rgb(98, 154, 169);outline: none;border: none">
                        </div>
                        <div class="registration">
                            还未注册
                            <a class="" href="${pageContext.request.contextPath}/singup.jsp">
                                点击注册
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- side nav js -->
<script src='js/SidebarNav.min.js' type='text/javascript'></script>
<script>
    $('.sidebar-menu').SidebarNav()
</script>
<!-- //side nav js -->

<!-- Classie --><!-- for toggle left push menu script -->
<script src="${pageContext.request.contextPath}/js/classie.js"></script>
<script>
    $("#login").click(function () {
        let username = $("input[name=username]").val();
        let pwd = $("input[name=password]").val();
        if(username.length==0||pwd.length==0){
            $("#ver").text("用户名或密码不能为空！");
        }else {
            $("#ver").text("");
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/user/login",
                data:$("#loginForm").serialize(),
                async:false,
                success:function (res) {
                    if(res){
                        alert("登录成功！");
                        location.href="${pageContext.request.contextPath}/home.jsp";
                    }else {
                        $("#ver").text("用户名或密码错误！！");
                    }
                },
                error:function () {
                    alert("登录失败，请联系管理员!");
                }
            })
        }
    })
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
<!-- //Classie --><!-- //for toggle left push menu script -->

<!--scrolling js-->
<script src="${pageContext.request.contextPath}/js/jquery.nicescroll.js"></script>
<script src="${pageContext.request.contextPath}/js/scripts.js"></script>
<!--//scrolling js-->

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<!-- //Bootstrap Core JavaScript -->

</body>
</html>