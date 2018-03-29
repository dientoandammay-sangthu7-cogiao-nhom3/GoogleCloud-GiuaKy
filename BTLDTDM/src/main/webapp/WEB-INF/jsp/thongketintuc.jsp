<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Triple | Pages - Admin Account</title>

    <!-- .Css -->
    <link href="static/Lib2/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="static/Lib2/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="static/Lib2/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="static/Lib2/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
    <link href="static/Lib2/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />

    <link href="static/Lib2/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="static/Lib2/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/Lib2/bootstrap/css/bootstrap.css">

    <link href="static/Lib2/css/profile.css" rel="stylesheet" type="text/css" />
    <link href="static/Lib2/css/components.css" id="style_components" rel="stylesheet" type="text/css" />
    <link href="static/Lib2/css/layout.css" rel="stylesheet" type="text/css" />
    <link href="static/Lib2/css/darkblue.css" rel="stylesheet" type="text/css" />
    <link href="static/Lib2/Css_Admin_new_info.css" rel=" stylesheet" type="text/css" />
    <link rel="stylesheet" href="static/css/dataTables.bootstrap.min.css">

    <!-- .Js -->
    <script src="static/Lib2/js/JQuery.js"></script>
    <script src="static/Lib2/js/jquery.min.js" type="text/javascript"></script>
    <script src="static/Lib2/js/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="static/Lib2/jquery-ui/jquery-ui-1.10.3.custom.min.js " type="text/javascript"></script>
    <script src="static/Lib2/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="static/Lib2/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
    <script src="static/Lib2/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="static/Lib2/js/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="static/Lib2/js/jquery.cokie.min.js" type="text/javascript "></script>
    <script src="static/Lib2/uniform/jquery.uniform.min.js" type="text/javascript "></script>
    <script src="static/Lib2/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
    <script src="static/Lib2/bootstrap-fileinput/bootstrap-fileinput.js" type="text/javascript"></script>
    <script src="static/Lib2/js/jquery.sparkline.min.js" type="text/javascript"></script>
    <script src="static/Lib2/js/metronic.js" type="text/javascript"></script>
    <script src="static/Lib2/js/layout.js" type="text/javascript"></script>   
    <script src="static/Lib2/addHeader.js" type="text/javascript"></script>
    <script src="static/Lib2/js/jquery.dataTables.min.js"></script>
	<script src="static/Lib2/js/dataTables.bootstrap.min.js"></script>
    <script>
        jQuery(document).ready(function() {
            Metronic.init();
            Layout.init();
        });       
    </script>
    <script>
	$(document).ready(function() {
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
	/* 	
		$("tbody tr").on('click', function(){
				$("tbody tr").css("background-color","white");
				$(this).closest("tr").css("background-color","#F2F2F2");
			//	bool = $(this).closest("tr").find("td:eq(2)").text();		
				$("#ID").val($(this).closest('tr').find('td:first').text());
				// $("#CauTraLoi").val($(this).closest('tr').find('td:nth-child(2)'));    
				
			}); 	 */
	});
</script>

</head>
<body
	class="page-header-fixed page-quick-sidebar-over-content page-container-bg-solid">
		<header id="header"></header>
	<div class="clearfix"></div>
	<div class="page-container">
		<div class="page-sidebar-wrapper">
			<div class="page-sidebar navbar-collapse collapse">
				 <ul class="page-sidebar-menu page-sidebar-menu-closed"
					data-keep-expanded="false" data-auto-scroll="true"
					data-slide-speed="200">
					<li class="sidebar-toggler-wrapper">
						<div class="sidebar-toggler"></div>
					</li>
					
					<li ><a href="${pageContext.request.contextPath}/CTQLNHCH_info"> <i
							class="icon-user"></i> <span class="title">Thông Tin Cá
								Nhân</span> <span class="selected"></span> <span class="arrow"></span>
					</a></li>
					<li class="active"><a href="javascript:;"> <i class="icon-pencil"></i> <span
							class="title">Quản Lý Câu Hỏi</span> <span class="arrow"></span>
					</a>
						<ul class="sub-menu">
							<li><a href="${pageContext.request.contextPath}/CTQLNHCH_ThemCauHoi"> <i class=""></i> Thêm Câu Hỏi
							</a></li>
							<li class="active"><a href="${pageContext.request.contextPath}/CTQLNHCH_SuaCauHoi"> <i class=""></i> Sửa Câu Hỏi
							</a></li>							
						</ul></li>
					<li ><a href="javascript:;"> <i class="icon-docs"></i> <span
							class="title">Quản Lý Nhóm Câu Hỏi</span> <span class="arrow"></span>
					</a>
						<ul class="sub-menu">
							<li><a href="${pageContext.request.contextPath}/CTQLNHCH_ThemNhomCauHoi"> <i class=""></i> Thêm Nhóm Câu Hỏi
							</a></li>
							<li><a href="${pageContext.request.contextPath}/CTQLNHCH_SuaNhomCauHoi"> <i class=""></i>Sửa Nhóm Câu Hỏi
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<div class="page-content-wrapper">
			<div class="page-content">
				<div class="row margin-top-20">
					<div class="col-md-12">
						<div class="profile-sidebar">
							<div class="portlet light profile-sidebar-portlet">
								<div class="profile-userpic">
									<img id="imgg" src="" class="img-responsive">
								</div>
								<div class="profile-usertitle">
									<div class="profile-usertitle-name" id="Name"></div>
									<div class="profile-usertitle-job">Quản Lý Ngân Hàng Câu
										Hỏi</div>
								</div>
								<div class="profile-usermenu">
									<ul class="nav">
									</ul>
								</div>
							</div>
							<div class="portlet light">
								<div class="row list-separated profile-stat">
									<div class="col-md-4 col-sm-4 col-xs-6">
										<div class="uppercase profile-stat-title">5</div>
										<div class="uppercase profile-stat-text">Nhóm Câu Hỏi</div>
									</div>
									<div class="col-md-4 col-sm-4 col-xs-6">
										<div class="uppercase profile-stat-title"></div>
										<div class="uppercase profile-stat-text"></div>
									</div>
									<div class="col-md-4 col-sm-4 col-xs-6">
										<div class="uppercase profile-stat-title">500</div>
										<div class="uppercase profile-stat-text">Câu Hỏi</div>
									</div>
								</div>
							</div>
						</div>
						<!-- connect databse -->
			<sql:setDataSource var="data"
			driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
			url="jdbc:sqlserver://localhost:1433; instance=MSSQLSERVER; databaseName=OnlineTest; user=user; password=123;"/>
			
			<sql:query dataSource="${data}" var="result">
         		select Question.QuestionId,Question.QuestionContent,KindOfQuestion.KindName,Question.KindId From Question,KindOfQuestion Where Question.KindId = KindOfQuestion.KindId;
         	</sql:query>
                        <div class="profile-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="portlet light">
                                        <div class="portlet-title tabbable-line">
                                            <div class="caption caption-md">
                                                <i class="icon-globe theme-font hide"></i>
                                                <span class="caption-subject font-blue-madison bold uppercase">Xóa/Sửa Câu Hỏi</span>
                                            </div>
                                        </div>
                                        <div class="portlet-body">                                                                                   
                                          <table id="table" class="table table-bordered table-striped table-hover">
                                                <thead style="background-color: rgb(189, 189, 235);text-align: center">
                                                    <tr>
                                                        <th>Mã tin tức</th>
                                                        <th>Tiêu đề tin tức</th>
                                                        <th>Nội dung tin tức</th>       
                                                         <th></th>                                            
                                                    </tr>
                                                </thead>                                                
                                                <tbody>                                                 
												 <c:forEach var="row" items="${result.rows}">							
										<tr>									
										<td></td>										
										<td></td>
										<td></td>																			
										<td class="text-center">
											<a href="SuaCauHoi?ID=${row.QuestionId}">
											<button id="update" class="btn btn-primary" type="button">
												<span class="fa fa-wrench"></span>
											</button>
											</a>
										</td>									
								</tr>
							
						</c:forEach> 
                                                </tbody>
                                            </table>
                                            
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

    <div class="page-prefooter">
        <div class="container">
            <div class="row1">
                <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                    <h2>Về Chúng Tôi</h2>
                    <p>
                        Triple.com là một website thi trắc nghiệm trực tuyến giúp cho vấn đề thi cử trở nên dễ dàng và đơn giản nhất. Được các trường đại học nổi tiếng tin dùng.
                    </p>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                    <h2>Theo Dõi Chúng Tôi</h2>
                    <ul class="social-icons">
                        <li>
                            <a href="" class="facebook"></a>
                        </li>
                        <li>
                            <a href="" class="twitter"></a>
                        </li>
                        <li>
                            <a href="" class="googleplus"></a>
                        </li>
                        <li>
                            <a href="" class="youtube"></a>
                        </li>

                    </ul>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                    <h2>Liên Hệ</h2>
                    <address class="margin-bottom-40">
                Điện Thoại: 0981026294 - 01672109425 - 0987527849<br>
                 Email: <a href=" ">tracnghiemonlinetriple@gmail.com</a>
                </address>
                </div>
            </div>
        </div>
    </div>
    <div class="page-footer">
        <div class="container">
            2017 &copy; Triple. All Rights Reserved.
        </div>
    </div>
</body>
</html>