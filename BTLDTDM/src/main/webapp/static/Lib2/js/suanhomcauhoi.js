$(document).ready(function(){

	$.ajax({
		type: 'POST',
		data: {},
		dataType: 'json',
		url: 'LoadNoiDungNhomCauHoi',
		success: function(result){			
			$("#ID").val(result.kindId.trim());
			$("#NoiDung").val(result.kindName.trim());			
			
		}
	});
	
});