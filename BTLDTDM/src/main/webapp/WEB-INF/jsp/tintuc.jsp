<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Seminar Website</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/font-awesome.min.css" rel="stylesheet">
    <link href="static/css/prettyPhoto.css" rel="stylesheet">
    <link href="static/css/price-range.css" rel="stylesheet">
    <link href="static/css/animate.css" rel="stylesheet">
    <link href="static/css/main.css" rel="stylesheet">
    <link href="static/css/responsive.css" rel="stylesheet">
	<link rel="stylesheet" href="static/css/dataTables.bootstrap.min.css">
	
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
   
    <link rel="stylesheet" href="static/Css_Trangchu.css">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="static/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="static/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="static/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="static/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="static/images/ico/apple-touch-icon-57-precomposed.png">
   
      

 </head>
<body>
    <header id="header">
        <!--header-->

        <div class="header-middle">
            <!--header-middle-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="logo pull-left">
                            <a href="index.html"><img src="static/images/home/logo.jpg" alt="" /></a>
                        </div>
                        <div class="btn-group pull-right">
                            <div class="btn-group">
                            </div>
                            <div class="btn-group">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="shop-menu pull-right">
                            <ul class="nav navbar-nav" id="btn-login">
                                 <% if(session.getAttribute("SESSION_NAME")!=null){%>
                    					  <li><a href="/logout"><i class="fa fa-lock"></i> Đăng xuất</a></li>
                				<%} %>
                				<% if(session.getAttribute("SESSION_NAME")==null){%>
                    					  <li><a href="/dangnhap"><i class="fa fa-lock"></i> Đăng nhập</a></li>
                				<%} %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/header-middle-->

        <div class="header-bottom">
            <!--header-bottom-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
                        </div>
                        <div class="mainmenu pull-left">
                            <ul class="nav navbar-nav collapse navbar-collapse">
                                <li><a href="/" class="active">Trang Chủ</a></li>
                                <li class="dropdown"><a href="#">Giới Thiệu<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="">HCMUTE</a></li>
                                        <li><a href="">ICSSE</a></li>
                                    </ul>
                                </li>
								 <li class="dropdown"><a href="/trangquanly">Quản Lý Admin</a></li>
                                <li class="dropdown"><a href="#">Liên Hệ</a></li>
                                  
                               
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="search_box pull-right">
                            <input type="text" placeholder="Tìm Kiếm" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/header-bottom-->
    </header>
    <!--/header-->

	<section>
	<div class="page-content-wrapper">
		<div class="page-content">
			<div class="row margin-top-20" style="margin: 0px">
				<div class="col-md-12">
					<div class="profile-content">
						<div class="row">
							<div class="col-md-8" style="margin-left: 16.33%">
								<h1 style="text-align: center; color: red">TIN TỨC</h1>
                                    <div class="portlet light">
                                        <div class="portlet-title tabbable-line">
                                            <div class="caption caption-md">
                                            </div>
                                        </div>
                                        <div class="portlet-body">
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab_1_1">
                                                   <table id="table" class="table table-bordered table-striped table-hover">
                                                <thead style="background-color: rgb(189, 189, 235);text-align: center">
                                                    <tr>
                                                        <th>Mã tin tức</th>
                                                        <th>Tiêu đề tin tức</th>
                                                        <th>Nội dung tin tức</th>       
                                                         <th>Thời gian</th> 
                                                         <th></th>
                                                          <th></th>                                          
                                                    </tr>
                                                </thead>                                                
                                                <tbody>                                                 
												 <c:forEach var="tintuc" items="${tintucs}">
							<tr>
								<td>${tintuc.idtintuc }</td>
								<td>${tintuc.tieude }</td>
								<td>${tintuc.noidung }</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${tintuc.thoigian }"/></td>								
								<td><a href="update-tintuc?id=${tintuc.idtintuc }"><span class="glyphicon glyphicon-pencil"></span></a></td>
								<td><a href="delete-tintuc?id=${tintuc.idtintuc }"><span class="glyphicon glyphicon-trash"></span></a></td>
								
							</tr>
						</c:forEach>
                                                </tbody>
                                            </table>
                                            		<a href="new-tintuc">Thêm tin tức</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
   <footer id="footer">
            <!--Footer-->
            <div class="footer-widget">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="single-widget">

                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">

                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">

                            </div>
                        </div>
                        <div class="col-sm-3 col-sm-offset-1">
                            <div class="single-widget">
                                <h2>Đăng Ký</h2>
                                <form action="#" class="searchform">
                                    <input type="text" placeholder="Email của bạn" />
                                    <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                                    <p>Nhận các tin tức mới nhất<br />từ trang web của chúng tôi và tự động gửi tới email của bạn</p>
                                </form>
                            </div>
                        </div>

                        <div class="col-sm-2">
                            <div class="companyinfo">
                                <h2><span>Seminar</span> website</h2>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <p class="pull-left">Copyright © 2017 THE TRIPLE Inc. All rights reserved.</p>
                    </div>
                </div>
            </div>

        </footer>
        <!--/Footer-->
  <script src="static/js/jquery-3.2.1.min.js"></script>
    <!-- <script src="static/js/JQuery.js"></script> -->
    <script type="text/javascript"
	src="static/jquery-confirm-v3.3.0/jquery-confirm-master/js/jquery-confirm.js"></script>
	<script src="static/ckeditor_4.9.0_full/ckeditor/ckeditor.js"></script>
	<!-- <script src="static/js/jquery.js"></script> -->
        <script src="static/js/bootstrap.min.js"></script>
        <script src="static/js/jquery.scrollUp.min.js"></script>
        <script src="static/js/price-range.js"></script>
        <script src="static/js/jquery.prettyPhoto.js"></script>
        <script src="static/js/main.js"></script>
      
         <!-- JS -->
     <script src="static/js/jquery.dataTables.min.js"></script>
	<script src="static/js/dataTables.bootstrap.min.js"></script>
     <script type="text/javascript">

 	$(document).ready(function(){
		var table= $('#table').DataTable({			
			"language": {				
	            "lengthMenu": "Xem _MENU_ giá trị",
	            "zeroRecords": "Không tìm thấy",
	             "info": "Hiển thị _START_ trên _END_ của _TOTAL_ giá trị ", 
	            "infoEmpty": "Không có kết quả",
	            "infoFiltered": "(không tìm thấy trên _MAX_ dữ liệu)",
	            "search":         "Tìm kiếm:",
	            "loadingRecords": "Loading...",
	            "processing":     "Processing..."
			}
		});
		
		$("tbody tr").on('click', function(){
				$("tbody tr").css("background-color","white");
				$(this).closest("tr").css("background-color","#F2F2F2");
			//	bool = $(this).closest("tr").find("td:eq(2)").text();		
				$("#ID").val($(this).closest('tr').find('td:first').text());
				/* $("#CauTraLoi").val($(this).closest('tr').find('td:nth-child(2)'));     */
				
			}); 	
	});
</script>
</body>
</html>