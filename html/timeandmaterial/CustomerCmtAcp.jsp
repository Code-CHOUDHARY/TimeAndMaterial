<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />
<%-- <%@page import="javax.portlet.PortletURL"%>
<%@page import="com.liferay.taglib.portlet.ActionURLTag"%>
<%@page import="java.util.List" %> --%>
<%-- <%@page import="com.liferay.sample.model.CCAFunctionTable"%>
<%@page import="com.liferay.sample.service.CCAFunctionTableLocalServiceUtil"%> --%>
<%-- <portlet:resourceURL var="ccafunction"></portlet:resourceURL> --%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="p"%>
<p:renderURL var="appointingKeyStaff">
 		<p:param name="name" value="devkaran"></p:param>
		<p:param name="jspPage" value="/html/timeandmaterial/appointingKeyStaff.jsp"></p:param>
		</p:renderURL>
<style>
.outer {
border: 0.25px solid #b2fff;
border-radius : 3px;
border-collapse: collapse;

}
#flip2,#flip1{
	background-color :#E3FAFF;
}
.filetable{
  border: 1px solid grey;
  border-collapse: collapse;
}
.all-buttons {
  	text-align : right;
}
.red {
  box-shadow: 0px 0px 2px 2px red;
}
.savebtn{
 background-color : #6fb3e0;
}

.droptable{
  border: 1px solid #D3D3D3;
  border-collapse: collapse;
}
.drop-zone {
  height: 20px;
  padding: 25px;
  align-items: center;
  justify-content: center;


  font-size: 20px;
  cursor: pointer;
}

.drop-zone--over {
  border-style: solid;
}

.drop-zone__input {
  display: none;
}

.drop-zone__thumb {
  width: 100%;
  height: 100%;
  border-radius: 10px;
  overflow: hidden;
  background-color: #F0FFFF;
  background-size: cover;
  position: relative;
}

.drop-zone__thumb::after {
  content: attr(data-label);
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  padding: 5px 0;
  color: #89CFF0;
  background: #F0FFFF;
  font-size: 14px;
  text-align: center;
}
.error {
    color: #ff3860;
    font-size: 10px;
   }
.input-control input:focus {
    outline: 0;
}


.input-control.success input {
    border-color: grey;
}

.input-control.error input {
    border-color: #ff3860;
}
.input-control.success select {
    border-color: grey;
}


.input-control.error select {
    border-color: #ff3860; 
}

.input-control.errorLabel select {
    border-color: #ff3860;
}

.input-control.error textarea {
    border-color: #ff3860;
}

/* Timeline Css */
.comment-timeline{
		padding: 10px;
		display: grid;
		grid-template-columns: min-content 1px max-content;
	}
	.current-user-name {
		text-align: right;
		padding: 0px 15px;
		color: #a069c3;
		font-weight: bold;
	}

	.verticle-timeline{
		position:relative;
		background: gray;
	}
	.timeline-point{
		position:absolute;
		top: 0;
		left:50%;
		transform: translateX(-50%);
		text-align:center;
		background: #6fb3e0;
		height: 10px;
		width: 10px;
		border-radius: 50%;
	}

	.comments-on-time{
		padding: 0px 5px 5px 20px;
		font-weight : bold;
	}
	.stage{
	color : #478fca;
	font-weight : bold;
	}

</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/datejs/1.0/date.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
<script>

	function callServeResourse(){
	const form = document.getElementById('form');
	const loidoc = document.getElementById('loidoc');
	const orderack = document.getElementById('orderack');
	const loirecevied = document.getElementById('loirecevied');
	const loilimit = document.getElementById('loilimit');
	const loiimposed = document.getElementById('loiimposed');
	const expenditureId = document.getElementById('expenditureId');
	const loivalidity = document.getElementById('loivalidity');


	const loireview = document.getElementById('loireview');
	const loicommencement = document.getElementById('loicommencement');
	const comments = document.getElementById('comments');
	
	const setError = function(element, message) {
	    const inputControl = element.parentElement;
	    const errorDisplay = inputControl.querySelector('.error');
	    errorDisplay.innerText = message;
	    inputControl.classList.add('error');
	    inputControl.classList.remove('success');
	};
	
	const setSuccess = function(element) {
	    const inputControl = element.parentElement;
	    const errorDisplay = inputControl.querySelector('.error');
	    errorDisplay.innerText = '';
	    inputControl.classList.add('success');
	    inputControl.classList.remove('error');
	};
	
	const loidocValue = loidoc.value.trim();
	const orderackValue = orderack.value.trim();
	const loireceviedValue = loirecevied.value.trim();
	const loilimitValue = loilimit.value.trim();
	const loiimposedValue = loiimposed.value.trim();
	const expenditureIdValue = expenditureId.value.trim();
	const loivalidityValue = loivalidity.value.trim();
	const loireviewValue = loireview.value.trim();
	const loicommencementValue = loicommencement.value.trim();
	const commentsValue = comments.value.trim();
	 /* New validation start*/
		if (loireceviedValue === '' && commentsValue === '') {
		   setError(comments,'');
		   setError(loirecevied, '');
		} else if (loireceviedValue === '' && commentsValue != ''){
			setSuccess(comments);
			   setError(loirecevied, '');

		}
		else if (loireceviedValue === 'No' && commentsValue === ''){
			setError(comments,'');
			   setSuccess(loirecevied);
		}
		else if(loireceviedValue === 'Yes'){
			setSuccess(loirecevied);
			loireceviedValueYes();
		}
		else{
			setSuccess(loirecevied);
			setSuccess(comments);
		    AUI().use('aui-io-request', function(A){
		    	
			    A.io.request('', {
			    	method: 'POST',
			    	form: {
			    		id: 'form'
			   	 },
			   	 on: {
			   		 success :function(){
			   			 alert("Successfully Submitted");
			   			window.location.href = "${appointingKeyStaff}";
			   		 },
			   		 error: function(){
			   			 console.log("error");
			   		 }
			   	 }
			    });
			    });
		}
	 
	 
		function loireceviedValueYes(){
			
			if(loilimitValue === '' && loiimposedValue === '' && loivalidityValue ==='' && loireviewValue === '' && loicommencementValue === '' && commentsValue === ''){
				setError(loilimit, '');
				setError(loiimposed, '');
				setError(loivalidity, '');
				setError(loireview, '');
				setError(loicommencement, '');
				setError(comments,'');
				}
			else if(loilimitValue === '' || loiimposedValue === '' || loivalidityValue ==='' || loireviewValue === '' || loicommencementValue === '' || commentsValue === ''){
			
			if (loilimitValue === '') {
				setError(loilimit, '');}
			else{
				setSuccess(loilimit);
			}
			
			if (loiimposedValue === '') {
				setError(loiimposed, '');}
			else if (loiimposedValue === 'No') {
				setSuccess(loiimposed);
				}
			else if (loiimposedValue === 'Yes') {
				 setSuccess(loiimposed);
				 if(expenditureIdValue === ''){
					 setError(expenditureId, '');
				/* Expenditure  */	 
				 }
				 
				 else{
					setSuccess(expenditureId);
					}
			}
			
			if (loivalidityValue === '') {
				setError(loivalidity, '');}
				else{
				setSuccess(loivalidity);}
			
			if (loireviewValue === '') {
				setError(loireview, '');}
			 else {
				setSuccess(loireview);}
			
			if (loicommencementValue === '') {
				setError(loicommencement, '');}
			 else {
				setSuccess(loicommencement);}
			if (commentsValue === '') {
				   setError(comments,'');
			   }
			 else {
				 setSuccess(comments, '');
				 }
			}
		
			else{
			    AUI().use('aui-io-request', function(A){
			    	
				    A.io.request('', {
				    	method: 'POST',
				    	form: {
				    		id: 'form'
				   	 },
				   	 on: {
				   		 success :function(){
				   			 alert("Successfully Submitted");
				   			window.location.href = "${appointingKeyStaff}";
				   		 },
				   		 error: function(){
				   			 console.log("error");
				   		 }
				   	 }
				    });
				    });
			}
		}
	}
	
	/* New validation end*/	

 $(document).ready(function(){  
	 var today = new Date();
	 var date = String(today.getDate()).padStart(2, '0')+'/'+String(today.getMonth()+1).padStart(2, '0')+'/'+today.getFullYear();
	 var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
	 var dateTime = date+' '+time;
   var dateAndTime =   $('#currentdate').val(dateTime);
     console.log(dateAndTime);
	 
	 $('.loireceiveNO').hide();
	 $('.loireceiveYes').hide();
	 $('#loirecevied').change(function(){
		 if($('#loirecevied').val() == 'No'){
			 $('.loireceiveNO').show();
			 $('.loireceiveYes').hide();

		 }
		 
		 else if($('#loirecevied').val() == 'Yes') {
			 $('.loireceiveYes').show();
			 $('.loireceiveNO').hide();

		 }
		 else{ 
			 $('.loireceiveNO').hide();
			 $('.loireceiveYes').hide();
		 }
	 });
	 
	 $('#errorcom').hide();
	 $('#expendituretext').hide();
	 $('#textlabel').hide();
		$('#loiimposed').change(function(){
	    	if ($('#loiimposed').val() == 'Yes'){
	    		$('#expendituretext').show();
	    		$('#textlabel').show();
	    	}
	    	else {
	    		$('#expendituretext').hide();
	    		$('#textlabel').hide();
	    	}
	   
	    	});
		
		$('#drop').show();
			$('#loicommencement').change(function(){
		    	if ($('#loicommencement').val() == 'Yes'){
		    		$('#drop').hide();
		    	}
		    	else {
		    		$('#drop').show();
		    	}
		    	});
		
		$('.dates').hide();
		$('#loivalidity').change(function(){
	    	console.log($('#loivalidity').val());
	    	if ($('#loivalidity').val() == 'No'){
	    		$('#datepicker1').attr("disabled", true);
	    		$('#datepicker2').attr("disabled", true);
/* 	    		document.getElementById("datepicker2").value = "DD/MM/YYYY";
	    		document.getElementById("datepicker1").value = "DD/MM/YYYY"; */
	    		$('.dates').hide();
	    	}
	    	else if($('#loivalidity').val() == 'Yes'){
	    		$('#datepicker1').attr("disabled", false);
	    		$('#datepicker2').attr("disabled", false);
	    		$('.dates').show();
	    	}
	    	else{
	    		$('dates').hide();
	    	}
	    	});
		
		

		$('#enderror').hide();
		$('.arrow-down1').hide();
		$('.arrow-up2').hide();
		$('#panel2').hide();
		$("#flip1").click(function() {
			$('.arrow-up1,.arrow-down1').toggle("slow");
			$("#panel1").slideToggle("slow");
		});
		$("#flip2").click(function() {
			$('.arrow-down2,.arrow-up2').toggle("slow");
			$("#panel2").slideToggle("slow");
		});

		$("#datepicker1").datepicker({
			dateFormat : 'dd/mm/yy',numberOfMonths: 3, showCurrentAtPos:1});
		$('#start').click(function() {
			$("#datepicker1").focus();
		});

		$("#datepicker2").datepicker({
			dateFormat : 'dd/mm/yy',numberOfMonths: 3, showCurrentAtPos:0});
		$('#end').click(function() {
			$("#datepicker2").focus();
		});

		$("#datepicker2").change(function() {
							var startDate = Date.parse($(
									'#datepicker1').val());
							var endDate = Date.parse($(
									'#datepicker2').val());
							console.log(startDate);
							console.log(endDate);
							if (endDate <= startDate) {
								console.log(startDate);
								$("#enderror").show();
								document.getElementById("datepicker2").value = "";
							} else {
								$('#enderror').hide();
							}
						});

		$('#btninput').click(function() {
			$("#fileinput").click();
		});

		document.querySelectorAll(".drop-zone__input").forEach(
						function(inputElement) {
							const dropZoneElement = inputElement.closest(".drop-zone");

							dropZoneElement.addEventListener("click", function(e) {
										inputElement.click();
									});

							inputElement.addEventListener("change",function(e) {if (inputElement.files.length) {
													updateThumbnail(
															dropZoneElement,
															inputElement.files[0]);}
											});

							dropZoneElement.addEventListener("dragover",function(e) {e.preventDefault();
												dropZoneElement.classList.add("drop-zone--over");});

							[ "dragleave", "dragend" ].forEach(function(type) {
										dropZoneElement.addEventListener(type,function(e) {
															dropZoneElement.classList
																	.remove("drop-zone--over");});
									});

							dropZoneElement.addEventListener("drop",function(e) {e.preventDefault();
												if (e.dataTransfer.files.length) {
													inputElement.files = e.dataTransfer.files;
													updateThumbnail(dropZoneElement,e.dataTransfer.files[0]);
												}dropZoneElement.classList.remove("drop-zone--over");
											});
						});

		function updateThumbnail(dropZoneElement, file) {
			let
			thumbnailElement = dropZoneElement.querySelector(".drop-zone__thumb");

			// First time - remove the prompt
			if (dropZoneElement.querySelector(".drop-zone__prompt")) {
				dropZoneElement.querySelector(".drop-zone__prompt").remove();
			}

			// First time - there is no thumbnail element, so lets create it
			if (!thumbnailElement) {
				thumbnailElement = document.createElement("div");
				thumbnailElement.classList.add("drop-zone__thumb");
				dropZoneElement.appendChild(thumbnailElement);
			}

			thumbnailElement.dataset.label = file.name;

			// Show thumbnail for image files
			if (file.type.startsWith("image/")) {
				const
				reader = new FileReader();

				reader.readAsDataURL(file);
				reader.onload = function() {thumbnailElement.style.backgroundImage = "url('${reader.result}')";
				};
			} else {
				thumbnailElement.style.backgroundImage = null;
			}
		}

	});

</script>
<style> 
      
/*Navbar  */
.nav-bar {
  background-color:rgb(4, 110, 163);
  backdrop-filter: blur(12px);
  left: 0;
  right: 0;
  height: 60px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding-inline: 1rem;
  margin-bottom: 2px
  
}
.nav-l{
  display: flex;
  gap: 2rem;
  list-style: none;
}

.nav-a, #brand {
  
  
  font-size: 1.25rem;
  text-decoration: none;
  color: #fff;
}




.nav-dropdown {
  position: absolute;
  display: none;
  z-index: 1;
 
}
#wrap{
  margin-top: 4px;
  margin-left: 25px;
  
}
.avatar {
	border-radius: 50% 50% 50% 50%;
    width: 40px;
  height: 40px;
}
.nav-bar1{

   
    background: #F0F0F0;
    color: #000;
    z-index: 100;
    top: 70px;
   
}

.navbar-container{
    display: flex;
    justify-content: space-between;
    height: 50px;
    align-items: center;
}

.menu-items{
    order: 3;
    display: flex;
    

}
.logo1{
    order: -2;
}

.menu-items li{
    list-style: none;
    margin-left: .5rem;
    font-size: 15px;
    border: 1px solid black;    
    height: 35px;
    width: 35px;
    
}
.menu-items .hm{
    background-color: #6fb3e0 !important;
    border-color: #6fb3e0;
}
.menu-items .sm{
    background-color: #0044cc !important;
    border-color: #0044cc;
}
.menu-items .tags{
    background-color: #fa9f50 !important;
    border-color: #fa9f50;
}
.menu-items .th{
    background-color: #f1331e !important;
    border-color: #f1331e;
}
.menu-items .cl{
    background-color: #0cc523 !important;
    border-color: #0cc523;
}
.menu-items .info{
    background-color: #006dcc !important;
    border-color: #006dcc
}
.menu-items li i{
margin: 0px; position: relative;top: 50%; 
left: 30%; transform: translate(0,-50%);       align-items: center;
color: white;
}
.nav-bar1 a{
    color: #444;
    text-decoration: none;
    font-weight: 500;
    transition: color 0.3s ease-in-out;
}
/* grid container */
.grid-container{
    
    display: grid;
    grid-template-columns: 25% 25% 25% 25%;
    position: relative;
   
    color: rgb(17, 17, 17);
    left: 20px;

}
.grid-item{
    width: 295px;
    height: 107px; 
    margin-bottom: 25px;
    
}
.grid-item span{
    position: relative;
    top: 40%;
    left: 25px;
    font-size: 25px;
}
.grid-item a{
    position: relative;
    left: 220px;
    top: -60px;
    font-size: 15px;
    text-decoration: underline;
    color: #41adf5;
}
.grid-item p{
    position: relative;
    
    left: 40%;
    font-size: 25px;
    border-radius: 50%;
    border:1px solid #000;
    text-align: center;
}
.task{
    border: 1px solid #0380ae !important;
    border-left: 5px solid #0380ae !important;
    border-radius: 2px;
    box-shadow: 1px 1px #c4f3ff;
}
.task p{
    border:3px solid #0380ae;
}

.review{
    border: 1px solid #f38425 !important;
    border-left: 5px solid #f38425 !important;
    border-radius: 2px;
    box-shadow: 1px 1px #ffdebb;
}
.review p{
    border:3px solid #f38425;
}
.approvals{
    border: 1px solid #87b87f !important;
    border-left: 5px solid #87b87f !important;
    border-radius: 2px;
    box-shadow: 1px 1px #a2c99c;
}
.approvals p{
    border:3px solid #87b87f;
}
.buddytask{
    border: 1px solid #27abc3 !important;
    border-left: 5px solid #27abc3 !important;
    border-radius: 2px;
    box-shadow: 1px 1px #c3f4f8;
}
.buddytask p{
    border:3px solid #27abc3;
}


</style>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-1.12.3.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/fontawesome.min.css" integrity="sha512-SgaqKKxJDQ/tAUAAXzvxZz33rmn7leYDYfBP+YoMRSENhf3zJyx3SBASt/OfeQwBHA1nxMis7mM3EV/oYT6Fdw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-1.12.3.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.js"></script>  
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<p:renderURL var="Quoteform">
 		<p:param name="name" value="devkaran"></p:param>
		<p:param name="jspPage" value="/html/timeandmaterial/Quoteform.jsp"></p:param>
		</p:renderURL> 

<div><div class="nav-bar">
<h1>
<img src="https://rcc-test.econsys.io/ace-theme/images/LogoForHubPage.png">

</h1>
<ul class="nav-l" >
      <!-- Link 1 !-->
      <li class="nav-item" style="margin-top: 20px; ">
        <a class="nav-a" href="#" style="color:#fff;">My site</a>
        <ul class="nav-dropdown">
            <li>
              <a href="#!">Web Design</a>
            </li>
        </ul>
      </li>
     
      <!-- Link 3 !-->
      <li class="nav-item" style="width: 200px; background-color:#00aaff; margin-top:10px; border: 1px solid #00aaff;">
        <a class="nav-a" href="#" >
            
            <div style="color:#fff;">
                <div id="wrap" style="float: left; ">
                    <img class="avatar" src="https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png" />
                </div>
                <div style="float: right; font-size: 16px;  margin-right: 8px;"> 
                    Welcome <br>
                    Devkaran
                </div>
            </div>
        </a>
      </li>
    </ul>
</div>
<div class="nav-bar1">
 
    <div class="navbar-container">
        
       
        <ul class="menu-items">
            <li class="hm"><i class="fa-solid fa-house-user"></i></li>
            <li class="sm"><i class="fa-solid fa-sitemap"></i></li>
            <li class="tags"><i class="fa-solid fa-tags"></i></li>
            <li class="th"><i class="fas fa-th"></i></li>
            <li class="cl"><i class="fa-regular fa-clock"></i></li>
            <li class="info"><i class="fa-solid fa-circle-info"></i></li>
        </ul>
        <h3 class="logo1"> <i class="fa-solid fa-bars"></i> Menu <span style="font-size: 15px; color: #00aaff;"><i class="fa-solid fa-house-user"></i> RCC Limited > Home</span></h3>
    </div>

</div>
<div class="outer">
<form id="form">
<div class="outer" id="flip1" style="color : #739ac7; font-weight: bold;"><span class="arrow1" ><span class="arrow-up1">&#x25BC;</span><span class="arrow-down1">&#9658;</span></span>Customer Commitment Acceptance</div>
 <div id="panel1">
      <div style="margin-left: 25%;">Customer commitment LOI Received</div>
	<table class="myTable3" style="width: 100%;">

      
        <tr class="myTable3">
      <td class="myTable" style="text-align: right;" width="30%">LOI Document</td>
      <td class="myTable input-control" width="70%"><input type="text" name="loi-doc" id="loidoc"  style=" width: 50%;" ><span class="error"></span></td>
      </tr>
              <tr class="myTable3">
      <td class="myTable" style="text-align: right;" width="30%">Upload Order acknowledgement</td>
      <td class="myTable input-control" width="70%"><input type="text" name="order-ack" id="orderack" style=" width: 98%;" ><span class="error"></span></td>
      </tr>
              <tr class="myTable3">
      <td class="myTable" style="text-align: right;" width="30%">is the proposed customer deemed creditworthy for this project</td>
      <td class="myTable" width="70%"><div style=" width: 30%; background-color : yellow;" >No</div></td>
      </tr>
              <tr class="myTable3">
      <td class="myTable" style="text-align: right;" width="30%">record proposed course at action to protect company</td>
      <td class="myTable" width="70%">ok</td>
      </tr>
              <tr class="myTable3 ">
      <td class="myTable labelError" style="text-align: right;" width="30%">Does LOI Received Specially request for commencement of work? <span style="color: red;">*</span> </td>
      <td class="myTable input-control"><select name="loi-recevied" id="loirecevied" >
      						<option value=""  selected>select</option>
  							<option value="Yes" >Yes</option>
  							<option value="No">No</option>
							</select><span class="error"></span></td>
      									</tr>
              <tr class="myTable3 loireceiveYes" >
      <td class="myTable" style="text-align: right;" width="30%">Does LOI limit the extent of scope of the final quotation?<span style="color: red;">*</span></td>
      <td class="myTable input-control" width="70%"><select name="loi-limit" id="loilimit" >
      						<option value=""  selected>select</option>
  							<option value="Yes">Yes</option>
  							<option value="No">No</option>
							</select><span class="error"></span></td>
      </tr>
              <tr class="myTable3 loireceiveYes">
      <td class="myTable" style="text-align: right;">Does the LOI imposed the a limit to expenditure?<span style="color: red;">*</span><br><br><span id="textlabel">Please Specify Expenditure Limit(&euro;)</span></td>
      <td class="myTable input-control"><select name="loi-imposed" id="loiimposed">
      						<option value=""  selected>select</option>
  							<option value="Yes">Yes</option>
  							<option value="No">No</option>
							</select><span class="error"></span><br><div id="expendituretext" class="input-control"><input type="text" id="expenditureId" name="expenditure"/><span class="error"></span></div></td>
      </tr>
              <tr class="myTable3 loireceiveYes">
      <td class="myTable" style="text-align: right;" width="30%">Does the LOI received a time limit on its validity?<span style="color: red;">*</span> </td>
      <td class="myTable input-control" width="70%"><select name="loi-validity" id="loivalidity">
      						<option value=""  selected>select</option>
  							<option value="Yes">Yes</option>
  							<option value="No">No</option>
							</select><span class="error"></span></td>
      </tr>
              <tr class="myTable3 dates">
      <td class="myTable" style="text-align: right;" width="30%">Proposed Start Date<span style="color: red;">*</span></td>
      <td class="myTable input-control"><input type="text" class="form-control" id="datepicker1"  placeholder="DD/MM/YYYY" name="start-date" style=" width:10%;" value="DD/MM/YYYY"  ><span  id="start">&#128197;</span></td>
      </tr>
              <tr class="myTable3 dates">
      <td class="myTable" style="text-align: right;" width="30%">Proposed End Date<span style="color: red;">*</span></td>
      <td class="myTable input-control" width="70%"><input type="text" class="form-control" id="datepicker2" placeholder="DD/MM/YYYY" name="end-date" style=" width:10%;"  value="DD/MM/YYYY" ><span  id="end">&#128197;</span><span id="enderror" style="color: red;">End date should be greater than Start date*</span></td>
      </tr>
              <tr class="myTable3 loireceiveYes">
      <td class="myTable" style="text-align: right;" width="30%">Does LOI received any other items you believe need attention or further review? <span style="color: red;">*</span> </td>
      <td class="myTable input-control" width="0%"><select name="loi-review" id="loireview" >
      						<option value="" selected>select</option>
  							<option value="Yes">Yes</option>
  							<option value="No">No</option>
							</select><span class="error"></span></td>
      </tr>
              <tr class="myTable3 loireceiveYes	">
      <td class="myTable" style="text-align: right;" width="30%">Does the LOI introduce any Terms and Conditions your believe need reviewing before any commencement?<span style="color: red;">*</span></td>
      <td class="myTable input-control" width="70%"><select name="loi-commencement" id="loicommencement" >
      						<option value=""  selected>select</option>
  							<option value="Yes">Yes</option>
  							<option value="No">No</option>
							</select><span class="error"></span></td>
      </tr>
         <tr class="myTable3 loireceiveNO">
      <td colspan="2" style="text-align: left;">Yours selection above indicate that the LOI received requests that you commence work but limits the scope, expenditure or the duration in some way, or introduce terms and conditions that you would like to reviewed before commencement. please input or upload any details of the limitations to scope or items you believe need further attention or further review to enable the CL to prepare a response to the client that projects the company position.</td>
      </tr>
<tr class="myTable3 loireceiveNO">
      <td class="myTable" style="text-align: right;" width="30%"></td>
      <td class="myTable" width="70%">
      <table style="width:80%;" id="drop">
      <tr class="droptable" >
      <td class="droptable" Style="width: 60%;"><div class="drop-zone">
    <span class="drop-zone__prompt"></span>
    <input type="file" name="myFile" class="drop-zone__input">
  </div></td>
      <td class="droptable" style="item-align: center;text-align: center; height: 9em;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cloud-upload" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M4.406 1.342A5.53 5.53 0 0 1 8 0c2.69 0 4.923 2 5.166 4.579C14.758 4.804 16 6.137 16 7.773 16 9.569 14.502 11 12.687 11H10a.5.5 0 0 1 0-1h2.688C13.979 10 15 8.988 15 7.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 2.825 10.328 1 8 1a4.53 4.53 0 0 0-2.941 1.1c-.757.652-1.153 1.438-1.153 2.055v.448l-.445.049C2.064 4.805 1 5.952 1 7.318 1 8.785 2.23 10 3.781 10H6a.5.5 0 0 1 0 1H3.781C1.708 11 0 9.366 0 7.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383z"/>
  <path fill-rule="evenodd" d="M7.646 4.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V14.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3z"/>
</svg><br>Drop file here
  <input id="fileinput" type="file" style="display: none;" /> <br>OR<br>
  <button type="button" id="btninput" style="border: 1px solid #4682B4; background-color: transparent; color:#4682B4;">Browse Files</button>
  </td>
      <td class="droptable"><div>
  							<div style="text-align: center; padding-bottom: 3px;"><button type="button" style="padding: 2px;width: 60%; background-color: #6A5ACD; border: 1px solid #6A5ACD; color: white;">Link to File</button></div>
  							<div style="text-align: center;"><button type="button" style="padding: 2px;width: 60%; background-color: #6A5ACD; border: 1px solid #6A5ACD; color: white;">Link to DropBox</button></div>
      </div></td>

      </tr>
      <tr><td style="text-align: center;">OR</td>
      </tr>
      <tr><td colspan="3"><textarea rows="5" name="files" style="width : 98%;"></textarea>
      
      </table></td>
      </tr>
      </table>
 <%--      <% List<CCAFunctionTable> commentList = CCAFunctionTableLocalServiceUtil.getCCAFunctionTables(-1,-1); %>
       --%>
	</div>
	<div class="outer" id="flip2" style="color : #739ac7; font-weight: bold;"><span class="arrow"><span class="arrow-up2">&#x25BC;</span><span class="arrow-down2">&#9658;</span></span>Comment History</div>
	<div class="outer" id="panel2">
      <div class="comment-timeline">
<%-- 				<%for(CCAFunctionTable form : commentList)
      {%> --%>
				<div class="current-user-name">
					<p>Devkaran</p>
				</div>
				<div class="verticle-timeline">
					<div class="timeline-point">.</div>
				</div>
<%-- 				<div class="comments-on-time">
					<p class="operation-and-time">Submitted<span class="stage"> Customer Commitment Acceptance</span> on <%= form.getCurrentDateAndTime()%></p>
					<p style="font-weight : normal;"><%=form.getComments() %></p>
				</div>
				<%
					}
				%> --%>
			</div>
	</div>
	<div style="font-weight: bold; color : #739ac7;">Comments<span style="color : red;">*</span></div><!-- <span id="errorcom" style="color: red;">required field*</span> -->
	<div class="input-control"><textarea id="comments"  name="comments"  rows="5" style=" width : 98%;" ></textarea><span class="error"></span><br><input type="text" id="currentdate" name="currentDateAndTime" style="display : none;"></input></div>
	<div class="all-buttons">
	<input type="submit" class="" style="background-color : #6fb3e0 ;padding : 10px 25px; color : white; border: none; margin-bottom: 7px;
    margin-top: 6px;"  Value="Save">
	<input type="button" class="" style="background-color : #87b87f ;padding : 10px 25px; color : white; border: none;" onClick="callServeResourse()" value="Submit">
	<input type="reset" class="" style="background-color : #d15b47 ;padding : 10px 25px; color : white; border: none;" Value="Reset Task">
    <input type="reset" class="" style="background-color : #d15b47 ;padding : 10px 25px; color : white; border: none;" Value="Cancel">
	</div>
</form>
</div>