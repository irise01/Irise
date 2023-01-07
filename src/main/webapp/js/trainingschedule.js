$(document).ready(function(){
	
  getallcourses();
 
});
function getallcourses() {
	var settings = {
		"url": "/trainingschedule/getallcourses",
		"method": "GET",
		"timeout": 0,

	};

	$.ajax(settings).done(function(response) {
		$.each(response, function(index, data) {
			console.log(response);
			
			$('#trainingschesuleID').append("<tr><td data-label='S.No'> <span class='mbl-left'>"+data.srNo+"</span></td><td data-label='Course'><span class='mbl-left'><a href=''>"+data.courseName+"</a></span></td><td data-label='Trainer'> <span class='mbl-left'>"+data.trainer+"</span></td><td data-label='From'><span class='mbl-left'>"+data.date+"</span></td><td data-label='Time'> <span class='mbl-left'>"+data.time+"</span></td><td data-label='Link'><span class='mbl-left'><a href='#' target='_blank' type='submit' style='color: green;'>"+data.gmeetLink+"</a><td class='text-md-center text-right'><button type='button' class='btn btn-secondary white-color' ><a href='/course-application/101'>Register Now</a></button></td></tr>");
		});

	});
}