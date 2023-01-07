function savestudent() {
	if (validate()) {
		var settings = {
			"url": "/student/savestudent",
			"method": "POST",
			"timeout": 0,
			"headers": {
				"Content-Type": "application/json"
			},
			"data": JSON.stringify({
				"studFirstName": $('#firstNameId').val(),
				"studLastName": $('#lastNameId').val(),
				"studEmail": $('#emailId').val(),
				"studPassword": $('#passwordId').val(),
				"studMobileNo": $('#mobileNoId').val(),
				"date": new Date(),

				"isDeleted": false,
				"role": "USER"
			}),
		};

		$.ajax(settings).done(function(response) {
			if (response.status == true) {
				Swal.fire({
					title: "<img src='/images/check.png' style='width:150px;'>",

					text: response.Message,
					confirmButtonText: "Ok",
				}).then(function() {
					window.location = "/login";
				});

			} else {
				Swal.fire({
					title: "<img src='/images/failed.png' style='width:150px;'>",

					text: response.Message,
					confirmButtonText: "Ok",
				}).then(function() {
					window.location = "/signup";
				});

			}

		});
	} else {
		validate();
	}

}


function login() {
	if (validate1()) {
		var email = $('#stdemailId').val();
		var password = $('#stdpasswordId').val();
		var settings = {
			"url": "/student/signInstudent?email=" + email + "&password=" + password,
			"method": "GET",
			"timeout": 0,
		};

		$.ajax(settings).done(function(response) {
			if (response.status == true) {
				if(response.data.role=='USER'){
					Swal.fire({
					title: "<img src='/images/check.png' style='width:150px;'>",

					text: response.Message,
					confirmButtonText: "Ok",
				}).then(function() {
					window.location = "/dashboard";
				});
				}else{
					Swal.fire({
					title: "<img src='/images/check.png' style='width:150px;'>",

					text: response.Message,
					confirmButtonText: "Ok",
				}).then(function() {
					window.location = "/admin-dashboard";
				});
					
				}
				

			} else {
				Swal.fire({
					title: "<img src='/images/failed.png' style='width:150px;'>",

					text: response.Message,
					confirmButtonText: "Ok",
				}).then(function() {
					window.location = "/login";
				});

			}

		});
	} else {
		validate1();
	}

}

function validate() {
	var isvalidated = true;

	var firstname = $('#firstNameId').val();
	var lastname = $('#lastNameId').val();
	var email = $('#emailId').val();
	var mobileno = $('#mobileNoId').val();
	var mobileNo = /^[6789]\d{9,9}$/;
	var password = $('#passwordId').val();
	var emailpattern = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/;
	var passwordpattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$/;

	if (mobileNo.test(mobileno) && mobileno != '') {
		$('#mobileNoValidId').css()('display', 'none');
		isvalidated = true;
	} else {
		$('#mobileNoValidId').css('display', 'block')
		isvalidated = false;
		alert("Mobile Number must follow  \nex. 9876543210");
		return false;
	}


	if (firstname != null && firstname != '') {
		$('#firstNameValidId').css('display', 'none');
		isvalidated = true;
	} else {
		$('#firstNameValidId').css('display', 'block')
		isvalidated = false;
		return false;
	}

	if (lastname != null && lastname != '') {
		$('#lastNameValidId').css('display', 'none');
		isvalidated = true;
	} else {
		$('#lastNameValidId').css('display', 'block')
		isvalidated = false;
		return false;
	}

	if (emailpattern.test(email) && email != '') {
		$('#emailValidId').css('display', 'none');
		isvalidated = true;
	} else {
		$('#emailValidId').css('display', 'block')
		isvalidated = false;
		alert("Email must follow  \nex.example@abc.com");
		return false;
	}

	if (passwordpattern.test(password) && password != '') {
		$('#passwordValidId').css('display', 'none');
		isvalidated = true;
	} else {
		$('#passwordValidId').css('display', 'block')
		isvalidated = false;
		alert("Password must be at least 8 character \nex.Pass@123");
		return false;
	}

	return isvalidated;

}

function validate1() {
	var isvalidated = true;

	var email = $('#stdemailId').val();
	var emailpattern = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/;
	var password = $('#stdpasswordId').val();
	var passwordpattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$/;

	if (emailpattern.test(email) && email != '') {
		$('#emailValidId').css('display', 'none');
		isvalidated = true;
	} else {
		$('#emailValidId').css('display', 'block')
		isvalidated = false;
		alert("Email must follow  \nex.example@abc.com");
		return false;
	}

	if (passwordpattern.test(password) && password != '') {
		$('#passwordValidId').css('display', 'none');
		isvalidated = true;
	} else {
		$('#passwordValidId').css('display', 'block')
		isvalidated = false;
		alert("Password must be at least 8 character \n ex. Pass@123");
		return false;
	}

	return isvalidated;
}
