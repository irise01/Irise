$(document).on(
			"click",
			".my-account-tab",
			function(e) {
				var sectionId = $(this).attr("id");
				var section = $(this).attr(
						"href");
				$(".my-account-section-setting").css("display",
						"none");
				$(".my-account-tab").removeClass("active").css('text-decoration','none');
				displayHedaerSection(sectionId, section);
				e.preventDefault();
				e.stopPropagation();
			});

	function displayHedaerSection(secid, sec){
		if(secid=="insurance-menu"){
			$(sec).show();
			$("#" + secid).addClass("active").css('text-decoration','underline');
			
					
		}else{
			$(sec).show();
			$("#" + secid).addClass("active");
		}
		}
		
$(document).ready(function(){
	
  getallcourses();
 
});

function getallcourses() {
	var settings = {
		"url": "/admincourse/getallcourses",
		"method": "GET",
		"timeout": 0,

	};

	$.ajax(settings).done(function(response) {
		$.each(response, function(index, data) {
			console.log(response);
			
			$('#AdminCourseInfoId').append("<tr><td>"+data.courseId+"</td><br><td>"+data.courseName+"</td><br><td>"+data.courseFees+"</td><br><td>"+data.duration+"</td><br><td>"+data.startDate+"</td><br><td>"+data.demoDate+"</td><br><td>"+data.gmeetLink+"</td><br><td><a href=''>Update</a></td><br><td><a href='DeleteServlet?courseId=<%=admin.getCourseId()%>' onclick='return confirm('Are you sure you want to delete this Course?');'>Delete</a></td></tr>");
		});

	});
}

function savecourse() {
	
		var settings = {
  "url": "/admincourse/savecourse",
  "method": "POST",
  "timeout": 0,
  "headers": {
    "Content-Type": "application/json"
  },
  "data": JSON.stringify({
    "courseName": $('#courseNameId').val(),
    "courseFees": $('#feesId').val(),
    "duration": $('#durationId').val(),
    "demoDate": $('#demoDateId').val(),
    "gmeetLink": $('#gmeetLinkId').val(),
    "startDate": $('#startDateId').val()
  }),
};

		$.ajax(settings).done(function(response) {
			if (response.status == true) {
				Swal.fire({
					title: "<img src='/images/check.png' style='width:150px;'>",

					text: response.Message,
					confirmButtonText: "Ok",
				}).then(function() {
					window.location = "/admin-dashboard";
				});

			} else {
				Swal.fire({
					title: "<img src='/images/failed.png' style='width:150px;'>",

					text: response.Message,
					confirmButtonText: "Ok",
				}).then(function() {
					window.location = "/admin-dashboard";
				});

			}

		});
	

}