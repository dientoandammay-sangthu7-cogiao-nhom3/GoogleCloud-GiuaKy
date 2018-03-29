$(document).ready(function(){		

	$.ajax({
		type: 'POST',
		contentType:"application/json; charset=utf-8",
		dataType: 'json',
		url: 'Student_LayCauHoiVaCauTraLoi',
		success: function(result){
			var string = "";
			if(4 <= result.length){
			    for(var i = 0; i <  4; i++){
			    	string = string + "<form style='font-size: 20px;'>"
			    				   +"<label>Câu "+ (i+1) + ". " + result[i].QuestionContent +" ?</label>";
			    	for(var j=0;j< result[i].CacCauTraLoi.length;j++){
			    		if(result[i].CacCauTraLoi[j].IsCheck == 0){
				    		string = string + "<div class='radio'>"
				    				   +"<label><input type='radio' name='optradio' value='"+ i + "/" + j +"'>"+ result[i].CacCauTraLoi[j].AnswerContent +"</label>"
				    				   +"</div>";
			    		}
			    		else{
			    			string = string + "<div class='radio'>"
		    				   +"<label><input type='radio' name='optradio' checked value='"+ i + "/" + j +"'>"+ result[i].CacCauTraLoi[j].AnswerContent +"</label>"
		    				   +"</div>";
			    		}
			    	}
			    	string = string + "</form>";
			    }
		    }
		    else{
		    	for(var i = 0; i < result.length; i++){
			    	string = string + "<form style='font-size: 20px;'>"
			    				   +"<label>Câu "+ (i+1) + ". " + result[i].QuestionContent +" ?</label>";
			    	for(var j=0;j< result[i].CacCauTraLoi.length;j++){
			    		if(result[i].CacCauTraLoi[j].IsCheck == 0){
				    		string = string + "<div class='radio'>"
				    				   +"<label><input type='radio' name='optradio' value='"+ i + "/" + j +"'>"+ result[i].CacCauTraLoi[j].AnswerContent +"</label>"
				    				   +"</div>";
			    		}
			    		else{
			    			string = string + "<div class='radio'>"
		    				   +"<label><input type='radio' name='optradio' checked value='"+ i + "/" + j +"'>"+ result[i].CacCauTraLoi[j].AnswerContent +"</label>"
		    				   +"</div>";
			    		}
			    	}
			    	string = string + "</form>";
			    }
		    }
		    $("#content").append(string);
		    
		    $.ajax({
				type: 'POST',
				url: 'ThoiGianThi',
				success: function(thoigianlambai){
					var h = Math.floor(thoigianlambai/60); // Giờ
				    var m = thoigianlambai - h*60; // Phút
				    var s = 0; // Giây
				    start();
				    
				    function start() {
				        var timeout = null; // Timeout
				        /*BƯỚC 1: LẤY GIÁ TRỊ BAN ĐẦU*/


				        /*BƯỚC 1: CHUYỂN ĐỔI DỮ LIỆU*/
				        // Nếu số giây = -1 tức là đã chạy ngược hết số giây, lúc này:
				        //  - giảm số phút xuống 1 đơn vị
				        //  - thiết lập số giây lại 59
				        if (s == -1) {
				            m -= 1;
				            s = 59;
				        }

				        // Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
				        //  - giảm số giờ xuống 1 đơn vị
				        //  - thiết lập số phút lại 59
				        if (m == -1) {
				            h -= 1;
				            m = 59;
				        }

				        // Nếu số giờ = -1 tức là đã hết giờ, lúc này:
				        //  - Dừng chương trình
				        if (h == -1) {
				            alert('Hết giờ !!! Đừng quên nhấn "Nộp bài" nhé !!!');
				            clearTimeout(timeout);
				            var True_Answer = 0;
					    	for(var i=0;i< result.length;i++){
					    		for(var j = 0;j < result[i].CacCauTraLoi.length ; j++){
					    			if(result[i].CacCauTraLoi[j].IsTrue == result[i].CacCauTraLoi[j].IsCheck && result[i].CacCauTraLoi[j].IsTrue == 1)
					    				True_Answer = True_Answer + 1;
					    		}
					    	}
					    	
					    	$.ajax({
					    		type: 'POST',
					    		data: { True_Answer: True_Answer,
					    				Answer_Size: result.length},
					    		url: 'Student_LuuKetQuaLamBai',
					    		success: function(kq){
					    			$("#Xem").css("display","block");
					    			$("#page-selection_bot,#page-selection_top,#content,#btn-nop-bai,#DongHo").css("display", "none");
					    		}
					    	});
				            return;
				        }

				        /*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
				        setInterval(function() {
				            $("#sec").html((s < 10 ? "0" : "") + s);
				        }, 1000);

				        setInterval(function() {
				            $("#min").html((m < 10 ? "0" : "") + m);
				        }, 1000);

				        setInterval(function() {
				            $("#hours").html((h < 10 ? "0" : "") + h);
				        }, 1000);

				        /*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
				        timeout = setTimeout(function() {
				            s--;
				            start();
				        }, 1000);
				    }
				}
			});
		    
		    $("input").change(function(){
		    	var value = $(this).val();
		    	var answernum = value.slice(value.indexOf("/") + 1, value.length);
		    	var questionnum = value.slice(0, value.indexOf("/"));
		    	for(var i=0; i<result[questionnum].CacCauTraLoi.length;i++){
		    		result[questionnum].CacCauTraLoi[i].IsCheck = 0;
		    	}
		    	result[questionnum].CacCauTraLoi[answernum].IsCheck = 1;
		    });
			
			
			var pagenum = result.length/4 + 0.99;
			$('#page-selection_top,#page-selection_bot').bootpag({
			    total: pagenum,
			    page: 1,
			    maxVisible: 5,
			    leaps: true,
			    firstLastUse: true,
			    first: '←',
			    last: '→',
			    wrapClass: 'pagination',
			    activeClass: 'active',
			    disabledClass: 'disabled',
			    nextClass: 'next',
			    prevClass: 'prev',
			    lastClass: 'last',
			    firstClass: 'first'
			}).on("page", function(event, num){
			    $("#content").html(""); // or some ajax content loading...
			    var questionnum = num*4 - 3;
			    var questionloc = num*4 - 4;
			    var question = "";
			    if(questionloc + 4 <= result.length){
				    for(var i = questionloc; i < questionloc + 4; i++){
				    	question = question + "<form style='font-size: 20px;'>"
				    				   +"<label>Câu "+ questionnum + ". " + result[i].QContent +" ?</label>";
				    	for(var j=0;j< result[i].CacCauTraLoi.length;j++){
				    		if(result[i].CacCauTraLoi[j].IsCheck == 0){
					    		question = question + "<div class='radio'>"
					    				   +"<label><input type='radio' name='optradio' value='"+ i + "/" + j +"'>"+ result[i].CacCauTraLoi[j].AnswerContent +"</label>"
					    				   +"</div>";
				    		}
				    		else{
				    			question = question + "<div class='radio'>"
			    				   +"<label><input type='radio' name='optradio' checked value='"+ i + "/" + j +"'>"+ result[i].CacCauTraLoi[j].AnswerContent +"</label>"
			    				   +"</div>";
				    		}
				    	}
				    	questionnum = questionnum + 1;
				    	question = question + "</form>";
				    }
			    }
			    else{
			    	for(var i = questionloc; i < result.length; i++){
				    	question = question + "<form style='font-size: 20px;'>"
				    				   +"<label>Câu "+ questionnum + ". " + result[i].QuestionContent +" ?</label>";
				    	for(var j=0;j< result[i].CacCauTraLoi.length;j++){
				    		if(result[i].CacCauTraLoi[j].IsCheck == 0){
					    		question = question + "<div class='radio'>"
					    				   +"<label><input type='radio' name='optradio' value='"+ i + "/" + j +"'>"+ result[i].CacCauTraLoi[j].AnswerContent +"</label>"
					    				   +"</div>";
				    		}
				    		else{
				    			question = question + "<div class='radio'>"
			    				   +"<label><input type='radio' name='optradio' checked value='"+ i + "/" + j +"'>"+ result[i].CacCauTraLoi[j].AnswerContent +"</label>"
			    				   +"</div>";
				    		}
				    	}
				    	questionnum = questionnum + 1;
				    	question = question + "</form>";
				    }
			    }
			    $("#content").append(question);
			    $("input").change(function(){
			    	var value = $(this).val();
			    	var answernum = value.slice(value.indexOf("/") + 1, value.length);
			    	var questionnum = value.slice(0, value.indexOf("/"));
			    	for(var i=0; i<result[questionnum].CacCauTraLoi.length;i++){
			    		result[questionnum].CacCauTraLoi[i].IsCheck = 0;
			    	}
			    	result[questionnum].CacCauTraLoi[answernum].IsCheck = 1;
			    });
			}); 
			
			$("#btn-nop-bai").click(function(){
		    	var True_Answer = 0;
		    	for(var i=0;i< result.length;i++){
		    		for(var j = 0;j < result[i].CacCauTraLoi.length ; j++){
		    			if(result[i].CacCauTraLoi[j].IsTrue == result[i].CacCauTraLoi[j].IsCheck && result[i].CacCauTraLoi[j].IsTrue == 1)
		    				True_Answer = True_Answer + 1;
		    		}
		    	}
		    	
		    	$.ajax({
		    		type: 'POST',
		    		data: { True_Answer: True_Answer,
		    				Answer_Size: result.length},
		    		url: 'Student_LuuKetQuaLamBai',
		    		success: function(kq){
		    			$("#Xem").css("display","block");
		    			$("#page-selection_bot,#page-selection_top,#content,#btn-nop-bai,#DongHo").css("display", "none");
		    		}
		    	});
		    });
		}
	});
});