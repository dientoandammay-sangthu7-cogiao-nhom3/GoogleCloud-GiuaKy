<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">   
      <link rel="stylesheet"  href="static/jquery-confirm-v3.3.0/jquery-confirm-master/css/jquery-confirm.css">
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


    <!--/slider-->

    <section>
        <div class="">
            <div class="page-content">
                <div class="row margin-top-20" style="margin: 0px">
                    <div class="col-md-12">
                        <div class="profile-content">
                            <div class="row">
                                <div class="col-md-8" style="margin-left:16.33% ">
                                
		
			<h1 style="text-align: center; color: red">THÊM TIN TỨC</h1>
		
                                    
                                    <div class="portlet light">
                                        <div class="portlet-title tabbable-line">
                                            <div class="caption caption-md">
                                            </div>
                                        </div>
                                        <div class="portlet-body">
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab_1_1">
                                                   
                                                    <div class="formtopic">
                       
                        <div class="row space-fiels">
                          <div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
                            <label for="newstitle">Tiêu đề tin tức/sự kiện </label><span class="require">*</span>
                          </div>
                          <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" name="newstitle" id="newstitle" required="" class="form-control">
                          </div>
                        </div>
                        <br>
                        <div class="clearfix"></div>

                        <div class="row space-fiels">
                          <div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
                            <label for="newscontent">Nội dung </label><span class="require">*</span>
                          </div>
                          <div class="col-md-9 col-sm-9 col-xs-12">
                            <textarea rows="" id="newscontent" required=""></textarea>
                          </div>
                        </div>
                        <div class="clearfix"></div>
						<br>
                        <div class="row space-fiels">
                          <div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
                            <label for="nametopic">Hình ảnh mô tả </label><span class="require">*</span>
                          </div>
                          <div class="col-md-9 col-sm-9 col-xs-12">
                          	<div class="row">
								<div class="col-md-8 col-xs-12">
									<div class="imgnew">
		                              	<img id="imgnewsup" src="static/images/hinhtri.jpg" class="img-rounded file-upload-image" width="100%">
		                              	<input type="hidden" name="FileImage" id="FileImageNews" value="">
		                            </div>
								</div>
								<div class="col-md-4 col-xs-12" style="text-align=center; padding-top=10px;">
									
		                              <div class="row">
		                              <form id="taianhlenDr"  enctype="multipart/form-data">
		                                <div class="col-md-12 col-xs-12">
		                                  <input type="file" name="file" value="" id="img-new" accept="image/*">
		                                </div>
		                                </form>
		                                 <div class="clearfix"></div>
		                                <br>
		                                <div class="col-md-12 col-xs-12">
		                                  <button class="btn btn-default" type="submit" id="taianhlen">Tải ảnh lên</button>
		                                </div>
		                              </div>
		                            
								</div>
							</div>
                          </div>
                        </div>
                        <br>
                        <div class="row space-fiels">
                          <div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
                            <label for="nametopic">Tệp đính kèm </label><span class="require">*</span>
                          </div>
                          <div class="col-md-9 col-sm-9 col-xs-12">
                            
                              <div class="row">
                                <div class="col-md-8 col-xs-12">
                                <form  enctype="multipart/form-data" id="taifilelenDr">
                                  <div class="addfile">
                                    <div class="space-fileup" style="margin-top: 0px;">
                                      <label class="input-label" for="file">
                                        <i class="fa fa-upload"></i>
                                        	<span class="label-span" id="FileNamess">Tải lên tệp</span></label>
	                                        <input type="file" name="file" id="file" accept=".pdf" value="">
	                                        <input type="hidden" id="FileName" name="" value=""> 
                                    	</div>
                                  	</div>
                                  </form>
                                </div>
                                <div class="col-md-4 col-xs-12">
                                  <button class="btn btn-default" type="submit" id="tailentep">Tải lên tệp</button>
                                </div>
                              </div>
                            
                          </div>
                        </div>
                        <div class="clearfix"></div>
                        <hr>
                      
                       <div style="text-align: center;">
                        <small class="sttus-er" id="stter">Vui lòng điền đầy đủ thông tin *</small><br>
                         <button class="btn btn-danger" id="creatnews" style="border-radius: 0px;"> Thêm mới <i class="fa fa-send"></i></button>
                       </div>
                     </div>
                                                   
                                                   
                          </div>
                        </div>
                      
                        <div class="clearfix"></div>
                        <hr>
                      
                                                 	                                                    
                                                    </form>
                                                    
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
        <script src="static/Js_TrangChu.js"></script> 
        
         <script type="text/javascript">
    CKEDITOR.replace('newscontent');
    $(document).ready(function(){
        $("#creatnews").click(function(){
        	CreateNews();
        })
    	
        $("#tailentep").click(function(){
        	UploadFile();
        })
        
        $("#taianhlen").click(function(){
        	UploadImage();
        })
    	
        //uploadfile
        $("#file").on("change",function(e){
          var files=$(this)[0].files;
          if(files.length>=2){
            $(".label-span").text(files.length +" file ready to upload");
          }
          else if(files.lenth==0){

          }else
            {
              var filename=e.target.value;
              $(".label-span").text(filename);
              
            }

        })
    })
    
    function UploadImage(){
			var file = $('#img-new').get()[0].files[0];
			
			if(!file){
				$("#imgnewsup").attr('src','static/images/hinhtri.jpg')
				alert("Vui lòng chọn file");
				return;
			} 
			
			$.ajax({
				url: 'uploadImage',
				type: 'POST',
				dataType: 'json',
				data: new FormData($('#taianhlenDr')[0]),
				processData: false,
				contentType: false
			}).done(function (result) {
				 
				$("#imgnewsup").attr({'src':result[0]});
				$("#FileImageNews").val(result[1])
			}).fail(function(result) {
			    alert("Tải ảnh lên không thành công");
			});
		}
    
    function UploadFile(){
		var file = $('#file').get()[0].files[0];
		
		if(!file){
			alert("Vui lòng chọn file");
			return;
		} 
		$.ajax({
			url: 'uploadFile',
			type: 'POST',
			dataType: 'json',
			data: new FormData($('#taifilelenDr')[0]),
			processData: false,
			contentType: false
		}).done(function (result) {
			$("#FileNamess").text(result[0])
			$("#FileName").val(result[1])
		}).fail(function(result) {
		    alert("Tải tệp lên không thành công");
		});
	}
    
    function CreateNews(){
    		$("#stter").hide();
    		var newstitle = $.trim($("#newstitle").val());
    		var newscontent = $.trim(CKEDITOR.instances.newscontent.getData());
    		var ImageID = $.trim($("#FileImageNews").val());
    		var FileID = $.trim($("#FileName").val());

    		if(newstitle==""||newscontent==""||ImageID==""||FileID==""){
    			$("#stter").show();
    		}else{
    			$.ajax({
    				url: "create-news",
	                method: "POST",
	                data:{
	                	newstitle : newstitle,
	                	newscontent : newscontent,
	                	ImageID : ImageID,
	                	FileID : FileID
	                },
	                error: function() {
	                    $.alert("Tạo mới không thành công!");
	                },
	                success: function() {
	                    $.alert("Tạo mới thành công!");
// 	                    window.location.href="managernews"
	                },
    			})
    		}

    	}
    
  </script>
  
  
</body>
</html>