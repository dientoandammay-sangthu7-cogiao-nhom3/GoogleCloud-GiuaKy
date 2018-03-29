$(document).ready(function() {
	$.ajax({
        type: "POST",
        contentType: "application/json",
        url: "/pagertintuc",
        dataType: 'json',
        cache: false,
        timeout: 600000,
        success: function (data) {
        	var string = "";
        	if(4 <= data.length){
        		for(var i=0; i<4; i++)
        			if(i == 0){
        				string += "<div class='row'>"
	                        +"<div class='col-sm-2 col-md-2 col-xs-2' style='height: 100px;border-top: dashed;" 
	                    +"border-bottom: dashed;border-color: #ABABAB; border-width: 1px'>"
	                    + "<img src='https://drive.google.com/uc?export=view&id="+ data[i].linkanh +"' class='NewsImg' style='padding: 5%' />"
	                        +"</div>"
	                        +"<div class='col-sm-10 col-md-10 col-xs-10' style='height: 100px; width: 80%;border-top: dashed;"
	                     +"border-bottom: dashed;border-color: #ABABAB; border-width: 1px'>"
	                            +"<h4 style='color: black;'><a href='tintucdetail?id="+data[i].idtintuc+"'>"+ data[i].tieude +"</a></h4>"
	                        +"</div>"
	                    +"</div>";
        			}
        			else{
        				string += "<div class='row'>"
	                        +"<div class='col-sm-2 col-md-2 col-xs-2' style='height: 100px;" 
	                    +"border-bottom: dashed;border-color: #ABABAB; border-width: 1px'>"
	                            +"<img src='https://drive.google.com/uc?export=view&id="+ data[i].linkanh +"' class='NewsImg' style='padding: 5%' />"
	                        +"</div>"
	                        +"<div class='col-sm-10 col-md-10 col-xs-10' style='height: 100px; width: 80%;"
	                     +"border-bottom: dashed;border-color: #ABABAB; border-width: 1px'>"
	                            +"<h4 style='color: black;'><a href='tintucdetail?id="+data[i].idtintuc+"'>"+ data[i].tieude +"</a></h4>"
	                        +"</div>"
	                    +"</div>";
        			}
        	}else{
        		for(var i=0; i<data.length; i++)
        			if(i == 0){
        				string += "<div class='row'>"
	                        +"<div class='col-sm-2 col-md-2 col-xs-2' style='height: 100px;border-top: dashed;" 
	                    +"border-bottom: dashed;border-color: #ABABAB; border-width: 1px'>"
	                            +"<img src='"+ data[i].linkanh +"' class='NewsImg' style='padding: 5%' />"
	                        +"</div>"
	                        +"<div class='col-sm-10 col-md-10 col-xs-10' style='height: 100px; width: 80%;border-top: dashed;"
	                     +"border-bottom: dashed;border-color: #ABABAB; border-width: 1px'>"
	                            +"<h4 style='color: black;'><a href='tintucdetail?id="+data[i].idtintuc+"'>"+ data[i].tieude +"</a></h4>"
	                        +"</div>"
	                    +"</div>";
        			}
        			else{
        				string += "<div class='row'>"
	                        +"<div class='col-sm-2 col-md-2 col-xs-2' style='height: 100px;" 
	                    +"border-bottom: dashed;border-color: #ABABAB; border-width: 1px'>"
	                            +"<img src='"+ data[i].linkanh +"' class='NewsImg' style='padding: 5%' />"
	                        +"</div>"
	                        +"<div class='col-sm-10 col-md-10 col-xs-10' style='height: 100px; width: 80%;"
	                     +"border-bottom: dashed;border-color: #ABABAB; border-width: 1px'>"
	                            +"<h4 style='color: black;'><a href='tintucdetail?id="+data[i].idtintuc+"'>"+ data[i].tieude +"</a></h4>"
	                        +"</div>"
	                    +"</div>";
        			}
        	}
        	
        	$(".cont-tintuc").append(string);
        	
        	var pagenum = data.length/4 + 0.99;
        	$('#page-selection_bot').bootpag({
                total: pagenum,
                page: 1,
                maxVisible: 5,
                leaps: true,
                firstLastUse: true,
                wrapClass: 'pagination',
                activeClass: 'active',
                disabledClass: 'disabled',
                nextClass: 'next',
                prevClass: 'prev',
                lastClass: 'last',
                firstClass: 'first'
            }).on("page", function(event, num) {
            	$(".cont-tintuc").html("");
            	var tintucloc = num*4 - 4;
            	
            	var string = "";
            	if(tintucloc+4 <= data.length){
            		for(var i=tintucloc; i<tintucloc+4; i++)
            			string += "<div class='one-news'>"
	                        +" <div class='news-img'>"+
                               "<a href='tintucdetail?id="+data[i].idtintuc+"'>" 	                    
	                            +"<img src='https://drive.google.com/uc?export=view&id="+ data[i].linkanh +"' class='NewsImg' style='padding: 5%' />"
	                        +"</a></div>"
	                        +"<div class='news-view'>"	          
	                            +" <div class='tieude_tintuc'><a href='tintucdetail?id="+data[i].idtintuc+"'>"+ data[i].tieude +"</a></div>"
	                        + " <div class='news-day'>"+data[i].thoigian+"</div>"
	                        +"</div>"
	                        + "<div class='clear'> </div></div>";
            	}else{
            		for(var i=tintucloc; i<data.length; i++)
            			string += " <div class='one-news'>"
	                        +" <div class='news-img'>"+
                               "<a href='tintucdetail?id="+data[i].idtintuc+"'>" 	                    
	                            +"<img src='https://drive.google.com/uc?export=view&id="+ data[i].linkanh +"' class='NewsImg' style='padding: 5%' />"
	                        +"</a></div>"
	                        +"<div class='news-view'>"	          
	                            +" <div class='tieude_tintuc'><a href='tintucdetail?id="+data[i].idtintuc+"'>"+ data[i].tieude +"</a></div>"
	                        + " <div class='news-day'>"+data[i].thoigian+"</div>"
	                        +"</div>"+ "<div class='clear'> </div></div>";
	                    
            	}
            	$(".cont-tintuc").append(string);
            });
        },
        error: function (e) {

            alert("Sai r!!!");

        }
    });

    $("#newsButton").click(function() {
        $("#ThongBao").css("display", "block");
        document.body.scrollTop = 650;
        document.documentElement.scrollTop = 650;
    });

    $("#myBtn").click(function() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
        $("#myBtn").css("display", "none");
    });

    $(window).scroll(function() {
        if (document.body.scrollTop < 600 && document.documentElement.scrollTop < 600)
            $("#myBtn").css("display", "none");
        else
            $("#myBtn").css("display", "block");
    });
});