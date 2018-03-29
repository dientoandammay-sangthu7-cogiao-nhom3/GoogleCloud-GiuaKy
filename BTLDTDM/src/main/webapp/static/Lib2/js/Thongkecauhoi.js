 $(document).ready(function () {	  		
 	var id;
	 $.ajax({
			type : 'POST',				
			url:'DsCauHoi',
			success:function(result){	
				$('tbody').html(result);
				$("#CauHoi tr").on('click', function(){
						$("#CauHoi tr").css("background-color","white");
						$(this).closest("tr").css("background-color","#F2F2F2");						
						$("#ID").val($(this).closest("tr").find("td:eq(0)").text());    						
				}); 	
			}
		});	 		 
 });