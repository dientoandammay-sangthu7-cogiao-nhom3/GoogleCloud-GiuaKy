  $(document).ready(function () {	  		
	  var cauTraLoi;       		
 		var DapAn = 0;
 		var bool;
 		var stt; 		
	  $("#ThemCauTraLoi").click(function(e){       		
       		cauTraLoi = $("#CauTraLoi").val();      		     		
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
       				dapAn:DapAn       				     				
       				},
       			url: 'KiemTraCauTraLoi',
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
       						$("#STT").val($(this).closest("tr").find("td:eq(0)").text());
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
          		if($("#option").is(':checked'))
          			{
          				DapAn=1;
          			}
          		else{
          			DapAn=0;
          		}
          		stt = $("#STT").val();
        	   $.ajax({
          			type: 'POST',
          			data: { CauTraLoi: cauTraLoi,
          				dapAn:DapAn,
          				STT:stt
          				},
          			url: 'QLNHCH_CapNhatCauTraLoi',
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
          						$("#STT").val($(this).closest("tr").find("td:eq(0)").text());
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
          		stt = $("#STT").val();
        	   $.ajax({
          			type: 'POST',
          			data: { 
          				STT:stt
          				},
          			url: 'QLNHCH_XoaCauTraLoi',
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
          						$("#STT").val($(this).closest("tr").find("td:eq(0)").text());
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
           $("#ThemCau").click(function(e){      		       	 
         		var noiDung = $("#NoiDung").val();
         		var loaiCauHoi = $("#LoaiCauHoi").val();
       	   $.ajax({
         			type: 'POST',
         			data: { 
         				NoiDung:noiDung,
         				MaLoai:loaiCauHoi
         				},
         			url: 'ThemCauHoi',
         			success: function(ketqua){
         				if(ketqua == 1)
         					alert("Có lỗi mời kiểm tra lại");          				
         				if(ketqua != 1 ){       					
         					alert("Thêm câu hỏi thành công !!!");  	
         					$("#DSCauTraLoi").html("");
         					$("#CauTraLoi").val("");
           					$( "#option" ).prop( "checked", false );
           					$("#NoiDung").val("");
         				}
         			}
         		});
         	});
  });