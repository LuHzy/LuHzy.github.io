<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css'/>

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css'/>

    <!-- font-awesome icons CSS -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons CSS-->

    <!-- side nav css file -->
    <link href='${pageContext.request.contextPath}/css/SidebarNav.min.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- //side nav css file -->

    <!-- js-->
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/modernizr.custom.js"></script>

    <!--webfonts-->

    <!--//webfonts-->

    <!-- chart -->
    <script src="${pageContext.request.contextPath}/js/Chart.js"></script>
    <!-- //chart -->

    <!-- Metis Menu -->
    <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/custom.js"></script>
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
    <!--//Metis Menu -->
    <style>
        #chartdiv {
            width: 100%;
            height: 295px;
        }
    </style>
    <!--pie-chart -->
    <!-- index page sales reviews visitors pie chart -->
    <script src="${pageContext.request.contextPath}/js/pie-chart.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#demo-pie-1').pieChart({
                barColor: '#2dde98',
                trackColor: '#eee',
                lineCap: 'round',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-2').pieChart({
                barColor: '#8e43e7',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-3').pieChart({
                barColor: '#ffc168',
                trackColor: '#eee',
                lineCap: 'square',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });


        });
    </script>
    <!-- //pie-chart -->
    <!-- index page sales reviews visitors pie chart -->

    <!-- requried-jsfiles-for owl -->
    <link href="${pageContext.request.contextPath}/css/owl.carousel.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/owl.carousel.js"></script>
    <script>
        $(document).ready(function () {
            $("#owl-demo").owlCarousel({
                items: 3,
                lazyLoad: true,
                autoPlay: true,
                pagination: true,
                nav: true,
            });
        });
    </script>
    <!-- //requried-jsfiles-for owl -->
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
                            <ul class="treeview-menu">
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
                                <span class="prfil-img" id="img"> </span>
                                <div class="user-name">
                                    <p id="username"></p>
                                    <span id="nick"></span>
                                </div>
                                <i class="fa fa-angle-down lnr"></i>
                                <i class="fa fa-angle-up lnr"></i>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                        <ul class="dropdown-menu drp-mnu">
                            <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-cog"></i> 修改密码</a></li>
                            <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-user"></i> 个人信息</a></li>
                            <li><a href="${pageContext.request.contextPath}/user/logout"><i class="fa fa-sign-out"></i> 登出</a>
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
            <div class="col_3">
                <div class="col-md-3 widget widget1">
                    <div class="r3_counter_box">
                        <i class="pull-left fa fa-dollar icon-rounded"></i>
                        <div class="stats">
                            <h5><strong>$<span id="countAll"></span></strong></h5>
                            <span>总人数</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 widget widget1">
                    <div class="r3_counter_box">
                        <i class="pull-left fa fa-laptop user1 icon-rounded"></i>
                        <div class="stats">
                            <h5><strong>$<span id="countStudent"></span></strong></h5>
                            <span>学生人数</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 widget widget1">
                    <div class="r3_counter_box">
                        <i class="pull-left fa fa-money user2 icon-rounded"></i>
                        <div class="stats">
                            <h5><strong>$<span id="countTeacher"></span></strong></h5>
                            <span>老师人数</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 widget widget1">
                    <div class="r3_counter_box">
                        <i class="pull-left fa fa-pie-chart dollar1 icon-rounded"></i>
                        <div class="stats">
                            <h5><strong>$<span id="studentAtSchool"></span></strong></h5>
                            <span>在校学生数</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 widget">
                    <div class="r3_counter_box">
                        <i class="pull-left fa fa-users dollar2 icon-rounded"></i>
                        <div class="stats">
                            <h5><strong>$<span id="countClass"></span></strong></h5>
                            <span>班级数</span>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>

            <div class="row-one widgettable">
                <div class="panel-info widget-shadow">
                    <h4 class="title2">最新消息 :</h4>
                    <br>
                    <div class="col-md-6 panel-grids">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"></h3>
                            </div>
                            <div class="panel-body"></div>
                        </div>
                    </div>
                    <div class="col-md-6 panel-grids">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title"></h3>
                            </div>
                            <div class="panel-body"></div>
                        </div>
                    </div>
                    <div class="col-md-6 panel-grids">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <h3 class="panel-title"></h3>
                            </div>
                            <div class="panel-body"></div>
                        </div>
                    </div>
                    <div class="col-md-6 panel-grids">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <h3 class="panel-title"></h3>
                            </div>
                            <div class="panel-body"></div>
                        </div>
                    </div>
                    <div class="col-md-6 panel-grids">
                        <div class="panel panel-warning">
                            <div class="panel-heading">
                                <h3 class="panel-title"></h3>
                            </div>
                            <div class="panel-body"></div>
                        </div>
                    </div>
                    <div class="col-md-6 panel-grids">
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                <h3 class="panel-title"></h3>
                            </div>
                            <div class="panel-body"></div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="row-one widgettable">
            </div>
            <div class="charts">
                <div class="mid-content-top charts-grids">
                    <div class="middle-content">
                        <h4 class="title">校园一角</h4>
                        <!-- start content_slider -->
                        <div id="owl-demo" class="owl-carousel text-center">
                            <div class="item">
                                <img class="lazyOwl img-responsive"
                                     data-src="${pageContext.request.contextPath}/images/slider1.jpg" alt="name">
                            </div>
                            <div class="item">
                                <img class="lazyOwl img-responsive"
                                     data-src="${pageContext.request.contextPath}/images/slider2.jpg" alt="name">
                            </div>
                            <div class="item">
                                <img class="lazyOwl img-responsive"
                                     data-src="${pageContext.request.contextPath}/images/slider3.jpg" alt="name">
                            </div>
                            <div class="item">
                                <img class="lazyOwl img-responsive"
                                     data-src="${pageContext.request.contextPath}/images/slider4.jpg" alt="name">
                            </div>
                            <div class="item">
                                <img class="lazyOwl img-responsive"
                                     data-src="${pageContext.request.contextPath}/images/slider5.jpg" alt="name">
                            </div>
                            <div class="item">
                                <img class="lazyOwl img-responsive"
                                     data-src="${pageContext.request.contextPath}/images/slider6.jpg" alt="name">
                            </div>
                            <div class="item">
                                <img class="lazyOwl img-responsive"
                                     data-src="${pageContext.request.contextPath}/images/slider7.jpg" alt="name">
                            </div>

                        </div>
                    </div>
                    <!--//sreen-gallery-cursual---->
                </div>
            </div>

        </div>
    </div>
</div>

<!-- new added graphs chart js-->

<script src="${pageContext.request.contextPath}/js/Chart.bundle.js"></script>
<script src="${pageContext.request.contextPath}/js/utils.js"></script>


<script>
    var MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October",
        "November", "December"
    ];
    var color = Chart.helpers.color;
    var barChartData = {
        labels: ["January", "February", "March", "April", "May", "June", "July"],
        datasets: [{
            label: 'Dataset 1',
            backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
            borderColor: window.chartColors.red,
            borderWidth: 1,
            data: [
                randomScalingFactor(),
                randomScalingFactor(),
                randomScalingFactor(),
                randomScalingFactor(),
                randomScalingFactor(),
                randomScalingFactor(),
                randomScalingFactor()
            ]
        }, {
            label: 'Dataset 2',
            backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
            borderColor: window.chartColors.blue,
            borderWidth: 1,
            data: [
                randomScalingFactor(),
                randomScalingFactor(),
                randomScalingFactor(),
                randomScalingFactor(),
                randomScalingFactor(),
                randomScalingFactor(),
                randomScalingFactor()
            ]
        }]

    };


    var colorNames = Object.keys(window.chartColors);
</script>
<!-- new added graphs chart js-->

<!-- Classie -->
<!-- for toggle left push menu script -->
<script src="${pageContext.request.contextPath}/js/classie.js"></script>
<script>
    var menuLeft = document.getElementById('cbp-spmenu-s1'),
        showLeftPush = document.getElementById('showLeftPush'),
        body = document.body;

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

<!-- side nav js -->
<script src='${pageContext.request.contextPath}/js/SidebarNav.min.js' type='text/javascript'></script>
<script>
    $('.sidebar-menu').SidebarNav()
</script>
<!-- //side nav js -->

<!-- for index page weekly sales java script -->
<script src="${pageContext.request.contextPath}/js/SimpleChart.js"></script>
<script>
    var graphdata1 = {
        linecolor: "#CCA300",
        title: "Monday",
        values: [{
            X: "6:00",
            Y: 10.00
        },
            {
                X: "7:00",
                Y: 20.00
            },
            {
                X: "8:00",
                Y: 40.00
            },
            {
                X: "9:00",
                Y: 34.00
            },
            {
                X: "10:00",
                Y: 40.25
            },
            {
                X: "11:00",
                Y: 28.56
            },
            {
                X: "12:00",
                Y: 18.57
            },
            {
                X: "13:00",
                Y: 34.00
            },
            {
                X: "14:00",
                Y: 40.89
            },
            {
                X: "15:00",
                Y: 12.57
            },
            {
                X: "16:00",
                Y: 28.24
            },
            {
                X: "17:00",
                Y: 18.00
            },
            {
                X: "18:00",
                Y: 34.24
            },
            {
                X: "19:00",
                Y: 40.58
            },
            {
                X: "20:00",
                Y: 12.54
            },
            {
                X: "21:00",
                Y: 28.00
            },
            {
                X: "22:00",
                Y: 18.00
            },
            {
                X: "23:00",
                Y: 34.89
            },
            {
                X: "0:00",
                Y: 40.26
            },
            {
                X: "1:00",
                Y: 28.89
            },
            {
                X: "2:00",
                Y: 18.87
            },
            {
                X: "3:00",
                Y: 34.00
            },
            {
                X: "4:00",
                Y: 40.00
            }
        ]
    };
    var graphdata2 = {
        linecolor: "#00CC66",
        title: "Tuesday",
        values: [{
            X: "6:00",
            Y: 100.00
        },
            {
                X: "7:00",
                Y: 120.00
            },
            {
                X: "8:00",
                Y: 140.00
            },
            {
                X: "9:00",
                Y: 134.00
            },
            {
                X: "10:00",
                Y: 140.25
            },
            {
                X: "11:00",
                Y: 128.56
            },
            {
                X: "12:00",
                Y: 118.57
            },
            {
                X: "13:00",
                Y: 134.00
            },
            {
                X: "14:00",
                Y: 140.89
            },
            {
                X: "15:00",
                Y: 112.57
            },
            {
                X: "16:00",
                Y: 128.24
            },
            {
                X: "17:00",
                Y: 118.00
            },
            {
                X: "18:00",
                Y: 134.24
            },
            {
                X: "19:00",
                Y: 140.58
            },
            {
                X: "20:00",
                Y: 112.54
            },
            {
                X: "21:00",
                Y: 128.00
            },
            {
                X: "22:00",
                Y: 118.00
            },
            {
                X: "23:00",
                Y: 134.89
            },
            {
                X: "0:00",
                Y: 140.26
            },
            {
                X: "1:00",
                Y: 128.89
            },
            {
                X: "2:00",
                Y: 118.87
            },
            {
                X: "3:00",
                Y: 134.00
            },
            {
                X: "4:00",
                Y: 180.00
            }
        ]
    };
    var graphdata3 = {
        linecolor: "#FF99CC",
        title: "Wednesday",
        values: [{
            X: "6:00",
            Y: 230.00
        },
            {
                X: "7:00",
                Y: 210.00
            },
            {
                X: "8:00",
                Y: 214.00
            },
            {
                X: "9:00",
                Y: 234.00
            },
            {
                X: "10:00",
                Y: 247.25
            },
            {
                X: "11:00",
                Y: 218.56
            },
            {
                X: "12:00",
                Y: 268.57
            },
            {
                X: "13:00",
                Y: 274.00
            },
            {
                X: "14:00",
                Y: 280.89
            },
            {
                X: "15:00",
                Y: 242.57
            },
            {
                X: "16:00",
                Y: 298.24
            },
            {
                X: "17:00",
                Y: 208.00
            },
            {
                X: "18:00",
                Y: 214.24
            },
            {
                X: "19:00",
                Y: 214.58
            },
            {
                X: "20:00",
                Y: 211.54
            },
            {
                X: "21:00",
                Y: 248.00
            },
            {
                X: "22:00",
                Y: 258.00
            },
            {
                X: "23:00",
                Y: 234.89
            },
            {
                X: "0:00",
                Y: 210.26
            },
            {
                X: "1:00",
                Y: 248.89
            },
            {
                X: "2:00",
                Y: 238.87
            },
            {
                X: "3:00",
                Y: 264.00
            },
            {
                X: "4:00",
                Y: 270.00
            }
        ]
    };
    var graphdata4 = {
        linecolor: "Random",
        title: "Thursday",
        values: [{
            X: "6:00",
            Y: 300.00
        },
            {
                X: "7:00",
                Y: 410.98
            },
            {
                X: "8:00",
                Y: 310.00
            },
            {
                X: "9:00",
                Y: 314.00
            },
            {
                X: "10:00",
                Y: 310.25
            },
            {
                X: "11:00",
                Y: 318.56
            },
            {
                X: "12:00",
                Y: 318.57
            },
            {
                X: "13:00",
                Y: 314.00
            },
            {
                X: "14:00",
                Y: 310.89
            },
            {
                X: "15:00",
                Y: 512.57
            },
            {
                X: "16:00",
                Y: 318.24
            },
            {
                X: "17:00",
                Y: 318.00
            },
            {
                X: "18:00",
                Y: 314.24
            },
            {
                X: "19:00",
                Y: 310.58
            },
            {
                X: "20:00",
                Y: 312.54
            },
            {
                X: "21:00",
                Y: 318.00
            },
            {
                X: "22:00",
                Y: 318.00
            },
            {
                X: "23:00",
                Y: 314.89
            },
            {
                X: "0:00",
                Y: 310.26
            },
            {
                X: "1:00",
                Y: 318.89
            },
            {
                X: "2:00",
                Y: 518.87
            },
            {
                X: "3:00",
                Y: 314.00
            },
            {
                X: "4:00",
                Y: 310.00
            }
        ]
    };
    var Piedata = {
        linecolor: "Random",
        title: "Profit",
        values: [{
            X: "Monday",
            Y: 50.00
        },
            {
                X: "Tuesday",
                Y: 110.98
            },
            {
                X: "Wednesday",
                Y: 70.00
            },
            {
                X: "Thursday",
                Y: 204.00
            },
            {
                X: "Friday",
                Y: 80.25
            },
            {
                X: "Saturday",
                Y: 38.56
            },
            {
                X: "Sunday",
                Y: 98.57
            }
        ]
    };
    $(function () {
        $("#Bargraph").SimpleChart({
            ChartType: "Bar",
            toolwidth: "50",
            toolheight: "25",
            axiscolor: "#E6E6E6",
            textcolor: "#6E6E6E",
            showlegends: true,
            data: [graphdata4, graphdata3, graphdata2, graphdata1],
            legendsize: "140",
            legendposition: 'bottom',
            xaxislabel: 'Hours',
            title: 'Weekly Profit',
            yaxislabel: 'Profit in $'
        });
        $("#sltchartype").on('change', function () {
            $("#Bargraph").SimpleChart('ChartType', $(this).val());
            $("#Bargraph").SimpleChart('reload', 'true');
        });
        $("#Hybridgraph").SimpleChart({
            ChartType: "Hybrid",
            toolwidth: "50",
            toolheight: "25",
            axiscolor: "#E6E6E6",
            textcolor: "#6E6E6E",
            showlegends: true,
            data: [graphdata4],
            legendsize: "140",
            legendposition: 'bottom',
            xaxislabel: 'Hours',
            title: 'Weekly Profit',
            yaxislabel: 'Profit in $'
        });
        $("#Linegraph").SimpleChart({
            ChartType: "Line",
            toolwidth: "50",
            toolheight: "25",
            axiscolor: "#E6E6E6",
            textcolor: "#6E6E6E",
            showlegends: false,
            data: [graphdata4, graphdata3, graphdata2, graphdata1],
            legendsize: "140",
            legendposition: 'bottom',
            xaxislabel: 'Hours',
            title: 'Weekly Profit',
            yaxislabel: 'Profit in $'
        });
        $("#Areagraph").SimpleChart({
            ChartType: "Area",
            toolwidth: "50",
            toolheight: "25",
            axiscolor: "#E6E6E6",
            textcolor: "#6E6E6E",
            showlegends: true,
            data: [graphdata4, graphdata3, graphdata2, graphdata1],
            legendsize: "140",
            legendposition: 'bottom',
            xaxislabel: 'Hours',
            title: 'Weekly Profit',
            yaxislabel: 'Profit in $'
        });
        $("#Scatterredgraph").SimpleChart({
            ChartType: "Scattered",
            toolwidth: "50",
            toolheight: "25",
            axiscolor: "#E6E6E6",
            textcolor: "#6E6E6E",
            showlegends: true,
            data: [graphdata4, graphdata3, graphdata2, graphdata1],
            legendsize: "140",
            legendposition: 'bottom',
            xaxislabel: 'Hours',
            title: 'Weekly Profit',
            yaxislabel: 'Profit in $'
        });
        $("#Piegraph").SimpleChart({
            ChartType: "Pie",
            toolwidth: "50",
            toolheight: "25",
            axiscolor: "#E6E6E6",
            textcolor: "#6E6E6E",
            showlegends: true,
            showpielables: true,
            data: [Piedata],
            legendsize: "250",
            legendposition: 'right',
            xaxislabel: 'Hours',
            title: 'Weekly Profit',
            yaxislabel: 'Profit in $'
        });

        $("#Stackedbargraph").SimpleChart({
            ChartType: "Stacked",
            toolwidth: "50",
            toolheight: "25",
            axiscolor: "#E6E6E6",
            textcolor: "#6E6E6E",
            showlegends: true,
            data: [graphdata3, graphdata2, graphdata1],
            legendsize: "140",
            legendposition: 'bottom',
            xaxislabel: 'Hours',
            title: 'Weekly Profit',
            yaxislabel: 'Profit in $'
        });

        $("#StackedHybridbargraph").SimpleChart({
            ChartType: "StackedHybrid",
            toolwidth: "50",
            toolheight: "25",
            axiscolor: "#E6E6E6",
            textcolor: "#6E6E6E",
            showlegends: true,
            data: [graphdata3, graphdata2, graphdata1],
            legendsize: "140",
            legendposition: 'bottom',
            xaxislabel: 'Hours',
            title: 'Weekly Profit',
            yaxislabel: 'Profit in $'
        });
    });
</script>
<!-- //for index page weekly sales java script -->


<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<!-- //Bootstrap Core JavaScript -->

<script>
    $(function () {
        $.ajax({
            url: "${pageContext.request.contextPath}/count",
            type: "get",
            dataType: "json",
            cache: false,
            success: function (res) {
                $("#countClass").html(res.countClass);
                $("#countStudent").html(res.countStudent);
                $("#countTeacher").html(res.countTeacher);
                $("#countAll").html(res.countAll);
                $("#studentAtSchool").html(res.studentAtSchool);
            },
            error: function () {

            }
        })


        $.ajax({
            url: "${pageContext.request.contextPath}/message/getMessage",
            type: "get",
            dataType: "json",
            cache: false,
            success: function (res) {
                let i = 0;
                $(".panel-title").each(function () {
                    if (res[i] == null) {
                        return false;
                    }
                    $(this).html(res[i].title);
                    i++;
                })
                i = 0;
                $(".panel-body").each(function () {
                    if (res[i] == null) {
                        return false;
                    }
                    $(this).html(res[i].context);
                    i++;
                })

            }
        })

        $("#username").text("${user.username}");
        $("#nick").text("${user.nick}")
        if (${user.img != null}) {
            $("#img").html("<img src='${pageContext.request.contextPath}/img/${user.img}'>");
        }

    })
</script>
</body>
</html>
