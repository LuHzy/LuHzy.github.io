<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>注册页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="关键词"/>
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
<body>
<div class="main-content">
    <!-- main content start-->
    <div id="page-wrapper">
        <div class="main-page signup-page">
            <h2 class="title1">注册页面</h2>
            <div class="sign-up-row widget-shadow">
                <h5>请输入注册信息 :</h5>
                <form action="#" method="post" id="form">
                    <small class="text-danger" id="ver_username"></small>
                    <div class="sign-u">
                        <input type="text" name="username" placeholder="账号" required="">
                        <div class="clearfix"></div>
                    </div>
                    <small class="text-danger" id="ver_pwd"></small>
                    <div class="sign-u">
                        <input type="text" class="lock" placeholder="密码" required="" name="password">
                        <div class="clearfix"></div>
                    </div>
                    <small class="text-danger" id="ver_email"></small>
                    <div class="sign-u" style="position: relative;">
                        <input type="email" name="email" style="width: 550px;" placeholder="邮箱" required="">
                        <div class="clearfix"></div>
                        <button id="sendCode" class="btn btn-dark btn-block"
                                style="width: 120px;height: 50px;position: absolute;top: 0px;right: 0px;" type="button">
                            获取激活码
                        </button>
                    </div>
                    <small class="text-danger" id="ver_code"></small>
                    <div class="sign-u">
                        <input type="text" placeholder="激活码" required="" name="code">
                        <div class="clearfix"></div>
                    </div>
                    <div class="sub_home" align="center">
                        <input type="button"
                               style="width: 120px;height: 40px;background-color: rgb(98, 154, 169);outline: none;border: none"
                               onclick="" value="注册" id="reg">
                        <div class="clearfix"></div>
                    </div>
                    <div class="registration">
                        已有账号，开始登录
                        <a class="" href="${pageContext.request.contextPath}/login.jsp">
                            登录
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- side nav js -->
<script src='${pageContext.request.contextPath}/js/SidebarNav.min.js' type='text/javascript'></script>
<script>
    $('.sidebar-menu').SidebarNav()
    let result = true;
    let isSend = false;
    let isCode = false;
    $(function () {
        
        $("#reg").click(function () {

            $("input[name=username]").trigger("blur");
            $("input[name=password]").trigger("blur");
            $("input[name=email]").trigger("blur");
            $("input[name=code]").trigger("blur");
            if(result&&isCode){
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/user/register",
                    data:$("#form").serialize(),
                    dataType:"json",
                    async:false,
                    success:function (res) {
                        if (res) {
                            alert("注册成功");
                            location.href="./login.jsp";
                        } else {
                            alert("注册失败，请联系管理员！");
                        }
                    },
                    error:function () {
                        alert("未知异常，请联系管理员！");
                    }
                })
            }
        })

        $("#sendCode").click(function () {
            $("input[name=email]").trigger("blur");
            if(isSend){
                let email = $("input[name=email]").val();
                $.get("user/sendEmail?email="+email,function (res) {
                    if(res){
                        alert("邮件发送成功！");
                    }else {
                        alert("邮件发送失败！");
                    }
                })
            }
        })
        
        $("input[name=username]").blur(function () {
            let username = $(this).val();
            if (username.length == 0) {
                $("#ver_username").text("账号不能为空！");
                result = false;
            } else {
                $.get("user/findUserName?username=" + username, function (res) {
                    if (res) {
                        $("#ver_username").text("");
                        result = true;
                    } else {
                        $("#ver_username").text("账号已存在！");
                        result = false;
                    }
                })
            }
        })

        $("input[name=password]").blur(function () {
            let password = $(this).val();
            if (password.length == 0) {
                $("#ver_pwd").text("密码不能为空！");
                result = false;
            } else {
                $("#ver_pwd").text("");

            }
        })

        $("input[name=email]").blur(function () {
            let email = $(this).val();
            let emailReg = /^\d+@\w+\.[\w]{2,3}/
            if(email.length==0){
                $("#ver_email").text("邮箱不能为空！");
                result = false;
            }else if(!emailReg.test(email)){
                $("#ver_email").text("邮箱格式错误！");
                result = false;
            }else {
                $.get("user/findEmail?email=" + email, function (res) {
                    if (res) {
                        $("#ver_email").text("");
                        isSend = true;
                    } else {
                        $("#ver_email").text("邮箱已存在！");
                        result = false;
                    }
                })
            }
        })

        $("input[name=code]").blur(function () {
            if(isSend){
                let code = $(this).val();
                if(code.length==0){
                    $("#ver_code").text("激活码不能为空！");
                    result = false;
                }else {
                    let email = $("input[type=email]").val();
                    $.get("user/verCode?email="+email+"&code="+code,function (res) {
                        if(res){
                            $("#ver_code").text("");
                            isCode = true;
                        }else {
                            $("#ver_code").text("激活码错误！");
                            isCode = false;
                        }
                    })
                }
            }
        })
    })


</script>
<!-- //side nav js -->

<!-- Classie --><!-- for toggle left push menu script -->
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
<!-- //Classie --><!-- //for toggle left push menu script -->

<!--scrolling js-->
<script src="${pageContext.request.contextPath}/js/jquery.nicescroll.js"></script>
<script src="${pageContext.request.contextPath}/js/scripts.js"></script>
<!--//scrolling js-->

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath} /js/bootstrap.js"></script>


</body>
</html>
