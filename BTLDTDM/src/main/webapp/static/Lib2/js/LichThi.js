$(document).ready(function(){
			$.ajax({
				type: 'POST',
				data: { maKH: 1},
				url: 'Student_LichThi',
				success: function(result){
					$("#table-lich-thi").html(result);
				}
			});
});