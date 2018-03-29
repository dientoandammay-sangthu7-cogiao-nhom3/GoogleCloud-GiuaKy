 $(document).ready(function () {
$("#Them").click(function(e){      		       	 
         		var noiDung = $("#NoiDung").val();         		
       	   $.ajax({
         			type: 'POST',
         			data: { 
         				NoiDung:noiDung         				
         				},
         			url: 'QLNHCH_ThemNhomCauHoi',
         			success: function(ketqua){
         				if(ketqua == 1)
         					alert("Có lỗi mời kiểm tra lại");          				
         				if(ketqua != 1 ){       					
         					alert("Thêm câu hỏi thành công !!!");  	         					
           					$("#NoiDung").val("");
         				}
         			}
         		});
         	});
});