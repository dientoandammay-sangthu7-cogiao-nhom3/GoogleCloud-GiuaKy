$(document).ready(function(){
	 var cauTraLoi;       		
		var DapAn = 0;
		var bool;
		var id;
	$.ajax({
		type : 'POST',				
		url:'DsLoaiCauHoi',
		success:function(result){	
			$('#LoaiCauHoi').html(result);
			$.ajax({
				type: 'POST',
				data: {},
				dataType: 'json',
				url: 'LoadNoiDungCauHoi',
				success: function(result){			
					$("#ID").val(result.QuestionId);
					$("#NoiDung").val(result.QuestionContent.trim());
					$("#LoaiCauHoi").val(result.KindId).prop("selected",true);	
					$.ajax({
						type : 'POST',				
						url:'LoadNoiDungCauTraLoi',
						success:function(kq){	
							$("#DSCauTraLoi").html(kq);
							$("#DSCauTraLoi tr").on('click', function(){
	       						$("#DSCauTraLoi tr").css("background-color","white");
	       						$(this).closest("tr").css("background-color","#F2F2F2");
	       						bool = $(this).closest("tr").find("td:eq(2)").text();		
	       						$("#IDCauTraLoi").val($(this).closest("tr").find("td:eq(0)").text());
	       						$("#CauTraLoi").val($(this).closest("tr").find("td:eq(1)").text());     
	       						if(bool=="True")
	       							{
	       								$( "#option" ).prop( "checked", true );
	       							}
	       						else
	       							{
	       								$( "#option" ).prop( "checked", false );
	       							}
	       					}); 	
						}
					});
				}
			});
		}
	});		
	 $("#ThemCauTraLoi").click(function(e){       		
    		cauTraLoi = $("#CauTraLoi").val(); 
    		id = $("#ID").val();
    		if($("#option").is(':checked'))
    			{
    				DapAn=1;
    			}
    		else{
    			DapAn=0;
    		}
    		$.ajax({
    			type: 'POST',
    			data: { CauTraLoi: cauTraLoi,
    				dapAn:DapAn,
    				ID : id
    				},
    			url: 'QLNHCH_CapNhatThemCauTraLoi',
    			success: function(ketqua){
    				if(ketqua == 1)
    					alert("Mời nhập câu trả lời");
    				if(ketqua == 2)
    					alert("Đã có Đáp án đúng, Một câu hỏi chỉ có 1 đáp án đúng")      				      				
    				if(ketqua != 1 && ketqua != 2){       					
    					$("#DSCauTraLoi").html(ketqua);
    					$("#CauTraLoi").val("");
    					$( "#option" ).prop( "checked", false );
    					$("#DSCauTraLoi tr").on('click', function(){
    						$("#DSCauTraLoi tr").css("background-color","white");
    						$(this).closest("tr").css("background-color","#F2F2F2");
    						bool = $(this).closest("tr").find("td:eq(2)").text();		
    						$("#IDCauTraLoi").val($(this).closest("tr").find("td:eq(0)").text());
    						$("#CauTraLoi").val($(this).closest("tr").find("td:eq(1)").text());     
    						if(bool=="True")
    							{
    								$( "#option" ).prop( "checked", true );
    							}
    						else
    							{
    								$( "#option" ).prop( "checked", false );
    							}
    					}); 	
    				}
    			}
    		});
    	});
        $("#CapNhatCauTraLoi").click(function(e){       		
     	   cauTraLoi = $("#CauTraLoi").val(); 
     	  id = $("#ID").val();
     	  idCauTraLoi = $("#IDCauTraLoi").val();
       		if($("#option").is(':checked'))
       			{
       				DapAn=1;
       			}
       		else{
       			DapAn=0;
       		}       		
     	   $.ajax({
       			type: 'POST',
       			data: { CauTraLoi: cauTraLoi,
       				dapAn:DapAn,
       				ID : id,
       				IDCauTraLoi : idCauTraLoi
       				},
       			url: 'QLNHCH_CapNhatLaiCauTraLoi',
       			success: function(ketqua){
       				if(ketqua == 1)
       					alert("Mời nhập câu trả lời");
       				if(ketqua == 2)
       					alert("Chưa có dữ liệu")   
       				if(ketqua == 3)
       					alert("Đã có Đáp án đúng, Một câu hỏi chỉ có 1 đáp án đúng")   
       				if(ketqua != 1 && ketqua != 2 && ketqua != 3){       					
       					$("#DSCauTraLoi").html(ketqua);
       					alert("Cập nhật thành công");
       					$("#CauTraLoi").val("");
        					$( "#option" ).prop( "checked", false );
       					$("#DSCauTraLoi tr").on('click', function(){
       						$("#DSCauTraLoi tr").css("background-color","white");
       						$(this).closest("tr").css("background-color","#F2F2F2");
       						bool = $(this).closest("tr").find("td:eq(2)").text();		
       						$("#IDCauTraLoi").val($(this).closest("tr").find("td:eq(0)").text());
       						$("#CauTraLoi").val($(this).closest("tr").find("td:eq(1)").text());     
       						if(bool=="True")
       							{
       								$( "#option" ).prop( "checked", true );
       							}
       						else
       							{
       								$( "#option" ).prop( "checked", false );
       							}
       					}); 	
       				}
       			}
       		});
       	});
      $("#XoaCauTraLoi").click(function(e){      		       	 
    	  idCauTraLoi = $("#IDCauTraLoi").val();
    	  id = $("#ID").val();
     	   $.ajax({
       			type: 'POST',
       			data: { 
       				IDCauTraLoi : idCauTraLoi,
       				ID : id
       				},
       			url: 'QLNHCH_CapNhatXoaCauTraLoi',
       			success: function(ketqua){
       				if(ketqua == 1)
       					alert("Mời nhập câu trả lời");          				
       				if(ketqua != 1 ){       					
       					$("#DSCauTraLoi").html(ketqua);
       					alert("Xóa thành công");
       					$("#CauTraLoi").val("");
        					$( "#option" ).prop( "checked", false );
       					$("#DSCauTraLoi tr").on('click', function(){
       						$("#DSCauTraLoi tr").css("background-color","white");
       						$(this).closest("tr").css("background-color","#F2F2F2");
       						bool = $(this).closest("tr").find("td:eq(2)").text();		
       						$("#IDCauTraLoi").val($(this).closest("tr").find("td:eq(0)").text());
       						$("#CauTraLoi").val($(this).closest("tr").find("td:eq(1)").text());     
       						if(bool=="True")
       							{
       								$( "#option" ).prop( "checked", true );
       							}
       						else
       							{
       								$( "#option" ).prop( "checked", false );
       							}
       					}); 	
       				}
       			}
       		});
       	});
       $("#CapNhatCauHoi").click(function(e){      		       	 
      		var noiDung = $("#NoiDung").val();
      		var loaiCauHoi = $("#LoaiCauHoi").val();
      		 id = $("#ID").val();
    	   $.ajax({
      			type: 'POST',
      			data: { 
      				NoiDung:noiDung,
      				MaLoai:loaiCauHoi,
      				ID:id
      				},
      			url: 'QLNHCH_CapNhatCauHoi',
      			success: function(ketqua){
      				if(ketqua == 1)
      					alert("Có lỗi mời kiểm tra lại");          				
      				if(ketqua != 1 ){       					
      					alert("Cập nhật câu hỏi thành công !!!"); 	     					
      					$("#CauTraLoi").val("");
        					$( "#option" ).prop( "checked", false );
        					
      				}
      			}
      		});
      	});
});