# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

window.formValidate = () ->
	if usrValidate() and pwdValidate() and cnfmpwdValidate() and fnameValidate() and lnameValidate() and propicValidate() and dobValidate() and hobbyValidate() and countryValidate() and phnumValidate()
		alert "You Successfully Filled the Form........."
		true
	else
		false

usrValidate = () ->	
	letters = /^[a-z A-Z 0-9]{5,8}$/;
	namevalue = $("#myname").val()
	if namevalue==null or namevalue==''
		$("#username_msg").text("Please Enter UserName").css("color","red")
		$("#myname").focus()
		false
	else if namevalue.match(letters) 
		$("#username_msg").text ""
		true
	else
		$("#username_msg").text("UserName Should be AlphaNumeric and length between 5 to 8 ").css("color","red")
		$("#myname").focus()
		false
		

pwdValidate = () ->
	pwdmatch = /^[a-z A-Z 0-9]{8,32}$/;
	@pwdvalue = $("#mypwd").val()
	if @pwdvalue==null or @pwdvalue==''
		$("#pwd_msg").text("Please Enter Password").css("color","red")
		$("#mypwd").focus()
		false
	else if @pwdvalue.match(pwdmatch)
		$("#pwd_msg").text ""
		true
	else
		$("#pwd_msg").text("Password Between 8 and 32 Char's and Should be Alpha Numeric").css("color","red")
		$("#mypwd").focus()
		false

cnfmpwdValidate = () ->
	cpwdval = $("#mycpwd").val()
	#alert @pwdvalue
	if @pwdvalue==cpwdval
		$("#cpwd_msg").text ""
		true
	else
		$("#cpwd_msg").text("Password and Confirm Password Should be Same....").css("color","red")
		$("#mycpwd").focus()
		false
		
fnameValidate = () ->
	fname = $("#fname").val()
	if fname==null or fname==''
		$("#fname_msg").text("First Name should not be Empty").css("color","red")
		$("#fname").focus()
		false
	else if fname.length <=2 or fname.length >=6
		$("#fname_msg").text("First Name Length Minimum 3 Characters and Maximum 6 Characters").css("color","red")
		$("#fname").focus()
		false
		
	else
		$("#fname_msg").text ""
		true

lnameValidate = () ->
	lname = $("#lname").val()
	if lname==null or lname==''
		$("#lname_msg").text("Last Name should not be Empty").css("color","red")
		$("#lname").focus()
		false
	else if lname.length <=1 or lname.length >=12
		$("#lname_msg").text("Last Name Length Minimum 2 Characters and Maximum 12 Characters").css("color","red")
		$("#lname").focus()
		false
		
	else
		$("#lname_msg").text ""
		true

propicValidate = () ->
	extension=$("#propic").val().split('.').pop('.');
	if extension == "jpg" or extension == "png" or extension == "gif"
		$("#propic_msg").text ""
		true
	else
		$("#propic_msg").text("Profile Picture Format should be .jpg or .png or .gif only...").css("color","red")
		false

dobValidate = () ->
	day = $("#day").val()
	month = $("#mon").val()
	year = $("#year").val()
	if day == "sel"
		$("#dob_msg").text("Please Select Day").css("color","red")
		false
	else if month == "sel"
		$("#dob_msg").text("Please Select Month").css("color","red")
		false
	else if year == "sel"
		$("#dob_msg").text("Please Select Year").css("color","red")
		false
	else
		$("#dob_msg").text ""
		true

hobbyValidate = () ->
	if ($('#optionsRadios1').is(':checked')) or ($('#optionsRadios2').is(':checked')) or ($('#optionsRadios3').is(':checked')) or ($('#optionsRadios4').is(':checked')) or ($('#optionsRadios5').is(':checked')) or ($('#optionsRadios6').is(':checked'))
		$("#hobby_msg").text ""
		true
	else
		$("#hobby_msg").text("Please Select Any One Hobby").css("color","red")
		false

countryValidate = () ->
	cval = $("#country").val()
	if cval == null or cval == ''
		$("#country_msg").text("Please Select any one Contry").css("color","red")
		false
	else
		$("#country_msg").text ""
		true
	
phnumValidate = () ->
	phone_pattern = /^(\+)(\d{2})(\s)(\({1})(\d{3})(\){1})(\-{1})(\d{3}-)(\d{4})$/
	phval = $("#phone").val()
	if phval.match(phone_pattern)
		$("#phone_msg").text ""
		true
	else
		$("#phone_msg").text("Phone Format should be +91 (990)-824-7888").css("color","red")
		false

