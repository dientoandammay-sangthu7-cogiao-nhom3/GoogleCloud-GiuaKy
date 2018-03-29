$(document).ready(function(){
	$.ajax({
		type: 'POST',
		data: { maKH: 1},
		url: 'Student_XemDiem',
		success: function(result){
			$("#table-xem-diem").html(result);
		}
	});		
});