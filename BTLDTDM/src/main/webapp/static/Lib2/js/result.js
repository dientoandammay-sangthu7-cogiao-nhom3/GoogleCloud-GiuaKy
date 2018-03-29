$(document).ready(function(){
	var maSanPham = 0;	
	var tenSanpham = null;	
	$.ajax({
		type : 'POST',				
		url:'DsResult',
		success:function(result){	
			$("#DiemSo").html(result);
			$("#DiemSo tr").on('click', function(){
				$("#DiemSo tr").css("background-color","white");
				$(this).closest("tr").css("background-color","#F2F2F2");
				maSanPham = $(this).closest("tr").find("td:eq(0)").text();					
				
			}); 	
				
		}   
	});	
});