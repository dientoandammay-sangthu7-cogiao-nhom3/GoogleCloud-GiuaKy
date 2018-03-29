<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

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
    <link rel="stylesheet"  href="static/jquery-confirm-v3.3.0/jquery-confirm-master/css/jquery-confirm.css">

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
<!--/head-->

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
								<% if(session.getAttribute("SESSION_NAME")!=null){%>
                    					  <li class="dropdown"><a href="trangquanly">Quản lý Admin</a></li>
                				<%} %>
                				
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

    <section id="slider">
        <!--slider-->
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <img src="static/images/home/Banner.jpg" class="girl img-responsive" alt="" style="
                    margin-left: 75px;" />
                </div>
            </div>
          
        </div>
      
    </section>
    <!--/slider-->

    <div class="about">
        <div class="containerr">
          <div class="heading">
            <h2>Website Hội Thảo</h2>

            <div class="row thongbao">
               
               <div class="col-md-12 col-xs-12">
                	<div>
                	<p id="desc1"  class="titt"></p>
                    	<!-- <p class="titt">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p> -->
					</div>
					<!--  -->
					
					<% 
					if(session.getAttribute("SESSION_NAME")!=null){%>
                    	<form id="frm-editText1">
						<textarea rows="" cols="" id="txt1"></textarea>
						<br>
						<div>
							<button type="button" class="btn btn-success" id="btn-saveText1">Save</button>
							<button type="button" class="btn btn-warning" id="btn-cancleText1">Cancle</button>
						</div>
						</form>
						<div class="btn-edit">
							<button class="btn btn-success" id="btn-editText1"> <i class="fa fa-edit"></i></button>
						</div>
                	<%} %>
					<!--  -->

					
                    
                    <div id="desc2">
	                     <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</p> -->
		              </div>
		                        <% 
					if(session.getAttribute("SESSION_NAME")!=null){%>
                    	<form id="frm-editText2">
	                    	<textarea rows="" cols="" id="txt2"></textarea>
	                       <br>
	                        <div>
								<button type="button" class="btn btn-success" id="btn-saveText2">Save</button>
								<button type="button" class="btn btn-warning" id="btn-cancleText2">Cancle</button>
							</div>
						</form>
                    	
                        <div class="btn-edit">
							<button class="btn btn-success"  id="btn-editText2" type="button"> <i class="fa fa-edit"></i></button>
						</div>
						
                	<%} %>
						<div class="clearfix"></div>
                       
                    
                </div>
          
          
          
          
            </div>
        </div>
            <div class="dv-child-one-style">
                <div class="dv-child-left">
                    <h3>Tất Cả Tin tức</h3>
                     <div class="cont-tintuc">
                        
             
                            <div id="noidungTongHop" "></div>   
                        </div> 
                        
                        
                        	                
                        <div class="page_break page_break_cus1"></div>
                        <!--  -->
                        <div class="clear"></div>
                         <div id="page-selection_bot" style="text-align: right;margin-right: 15px; margin-bottom: 5px;"></div>
                    </div>
                
                <div class="dv-child-right">
                    <div class="product">
                        <div class="dv_content_leftsp">
                            <a href="" title="" style="text-decoration: none">
                                <h3>TIN TỨC MỚI NHẤT</h3>
                            </a>
                            <div id="newsRight">
                                <c:forEach var="tintuc" items="${tintucganday}">
									 <a href="${pageContext.request.contextPath}tintucdetail?id=${tintuc.idtintuc}" title="">
                                    <img src="https://drive.google.com/uc?export=view&id=${tintuc.linkanh}" width="230" alt="">
                                    <h4>${tintuc.tieude}</h4>
                                    <div class="clear"></div>
                                </a>
								</c:forEach>
                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>

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
        <script src="static/Js_TrangChu.js"></script> 
         <!-- JS -->
    <script type="text/javascript" src="static/js/jquery.bootpag.js"></script>

    <!-- My JS -->
    <script type="text/javascript" src="static/myjs/trangchu.js"></script>
    
   <script type="text/javascript">
    	
    	$(document).ready(function(){
    		AjaxLoadPage();
    		$("#frm-editText1").hide();
    		$("#frm-editText2").hide();
        	CKEDITOR.replace("txt1");
        	CKEDITOR.replace("txt2");
    		$("#btn-editText1").click(function(){
    			editText1();
    		});
    		$("#btn-editText2").click(function(){
    			editText2();
    		});
    		$("#btn-cancleText1").click(function(){
    			$("#frm-editText1").hide();
    			$("#desc1").show();
    			$("#btn-editText1").show();
    		});
    		$("#btn-cancleText2").click(function(){
    			$("#frm-editText2").hide();
    			$("#desc2").show();
    			$("#btn-editText2").show();
    		});
    		$('#btn-saveText1').click(function(){
    			saveContent1();
    		});
    		
    		$('#btn-saveText2').click(function(){
    			saveContent2();
    		})
    	});
    	
    	function AjaxLoadPage(){
    		$.ajax({
    			type: "POST",
    	        contentType: "application/json",
    	        url: "/LoadHomePage",
    	        dataType: 'json',
    	        cache: false,
    	        timeout: 600000,
    	        success: function (result){
    	        	var $content1=$(result[0].content);
    	        	$content1.appendTo($("#desc1"));
    	        	var $content2=$(result[1].content);
    	        	$content2.appendTo($("#desc2"));
    	        }
    		})
    	}
    	
    	function editText1(){
    		var $content1=$("#desc1").html();
    		$("#desc1").hide();
			$("#frm-editText1").show();
			$("#btn-editText1").hide();
    		CKEDITOR.instances.txt1.setData($content1);
    	}
    	
    	function editText2(){
    		var $content2=$("#desc2").html();
    		$("#desc2").hide();
			$("#frm-editText2").show();
			$("#btn-editText2").hide();
    		CKEDITOR.instances.txt2.setData($content2);
    	}
    	function saveContent1(){
    		var $content1=CKEDITOR.instances.txt1.getData();
    		alert($content1);
    		$.confirm({
    			title: 'Xác nhận!',
                content: 'Do you want to save this content in this page?',
                buttons : {
                	Confirm : function(){
                		$.ajax({
                			type: "POST",
                	        data : {
                	        	id : "1",
                	        	content: $content1
                	        },
                	        url: "/SaveHomePage1",
                	        dataType: 'json',
                	        cache: false,
                	        timeout: 600000,
                	        success: function (result){
                	        	if(result!=null){
                	        		$.alert("Home page be saved successfully!");
                	        		$('#desc1').html(result.content);
                	        		$("#frm-editText1").hide();
                	    			$("#desc1").show();
                	    			$("#btn-editText1").show();
                	        	}
                	        	else $.alert("You have an error in this process. Pleases try again!");
                	        }
                		}) 
                	},
                    Cancel : function(){
                    	$.alert("This task can not be save!");
                    }
                }
    		
    		});
    	};
    	function saveContent2(){
    		var $content2=CKEDITOR.instances.txt2.getData();
    		alert($content2);
    		$.confirm({
    			title: 'Xác nhận!',
                content: 'Do you want to save this content in this page?',
                buttons : {
                	Confirm : function(){
                		$.ajax({
                			type: "POST",
                	        data : {
                	        	id : "2",
                	        	content: $content2
                	        },
                	        url: "/SaveHomePage2",
                	        dataType: 'json',
                	        cache: false,
                	        timeout: 600000,
                	        success: function (result){
                	        	if(result!=null){
                	        		$.alert("Home page be saved successfully!");
                	        		$('#desc2').html(result.content);
                	        		$("#frm-editText2").hide();
                	    			$("#desc2").show();
                	    			$("#btn-editText2").show();
                	        	}
                	        	else $.alert("You have an error in this process. Pleases try again!");
                	        },
                	        error : function(){
                	        	$.alert("Error! Try it again!");
                	        },
                	        failure: function(){
                	        	$.alert("Failure! Try it again!");
                	        }
                		}) 
                	},
                    Cancel : function(){
                    	$.alert("This task can not be save!");
                    }
                }
    		
    		});
    	}
    </script>
</body>

</html>