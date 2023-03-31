
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
 
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="p"%>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui"%>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>
<%@page import="java.util.List" %>
<%@page import="com.liferay.sample.model.TimeAndMaterialTable"%>
<%@page import="com.liferay.sample.service.TimeAndMaterialTableLocalServiceUtil"%>

<portlet:defineObjects />
<%-- <portlet:actionURL var="action" name="actionSample"></portlet:actionURL> --%>
<p:renderURL var="StatusofSubmittedQuote">
 		<p:param name="name" value="devkaran"></p:param>
		<p:param name="jspPage" value="/html/timeandmaterial/StatusofSubmittedQuote.jsp"></p:param>
		</p:renderURL> 



<head>
 <script src="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone-min.js"></script>
        <link href="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/fontawesome.min.css" integrity="sha512-SgaqKKxJDQ/tAUAAXzvxZz33rmn7leYDYfBP+YoMRSENhf3zJyx3SBASt/OfeQwBHA1nxMis7mM3EV/oYT6Fdw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
.a *{
font-size:14px;
font-family:'Segoe UI' !important;
}
.t1{
    margin:0 0 0 60px;
     width:90%;
}
.t1 tbody{

    border-color: inherit;
}
.t1 tr td {
	vertical-align: baseline;
	width:fit-content;
    margin-top:10px;
    padding-top:10px;
}
td{
vertical-align: baseline;
}

.desc {
	text-align: end;
	
 padding-right: 15px !important;
}


.ta {
	/* resize:none; */
}
.aui .ta{
 width: 75%;
 height: 50px; 
}


.t3 td{
padding-top: 10px;
  padding-bottom: 10px;
}
.bi-chat-dots{
margin-left:2px;
cursor:pointer;
}
.text{
color: #478fca;
}

  .t1{
border-collapse: separate;
  border-spacing: 50px 0;
}
 .t1 td{
  padding: 10px 0;
 /*  background: #ccc;  */
}  

.t4 th,td{
 text-align:start;
 vertical-align:center;
}
.t4 td{
padding:10px 0;

}






   .drop {
     width:96%;

      overflow: hidden;
    position: relative;
      font-family: "Open Sans", sans-serif;
      font-weight: 300;
      /* background: #f3f4f5; */
      color: #646c7f;
      text-rendering: optimizeLegibility;
     display: flex;
     justify-content:space-between;
    flex-direction: row;
    align-items: center;
      border: 1px solid gray;
      padding:0 5px;
    }
    
    .drop .items1{
      width:45%;
      margin: 15px 20px;
      padding:2px;
      display:flex;
      flex-direction: column;
      overflow-y:wrap;
      overflow-x:hidden;
    }
    .items2{
    width:55%;
    }
    .frm1{
     border-top:none;
      border-bottom:none;
      border-radius:none !important;
    }
    .drop .cntrl{
    /*   border:1px solid black; */
     
      width:70%;  
      display:flex;
      justify-content:center;
      text-align:center;
    }
    
    .browsebtn{
        background:#fff;
        text-align:center;
        color:#146da9;
         border:1px solid #146da9; 
        border-radius:5px;
        font-weight:bold;
        font-size:20px;
        padding:5px;
        cursor:pointer;
    }
   .drop #btns{
        display:flex;
        flex-direction:column;
       
        margin:0 10px;
    }
    
    .dz-filename{
		    overflow: hidden;
		    white-space: nowrap;
		    text-overflow: ellipsis;
		    max-width: 85%;
    }
    .dz-message{
        height:100%;
       
        margin-top:0px !important;
        
    }
</style>
<script>
$(document).ready(function() {
	var todayDate = new Date(Date.now()).toLocaleString().split(',')[0];
	/* alert("Date"+new Date(Date.now()).toLocaleString().split(',')[0]); */
	  $("#bidP").val(todayDate);
	  $("#pp1").val();
      $("#pp2").val();
      $("#qso").val();
	  //1 date field
	  $("#qso").datepicker({dateFormat: 'dd/mm/yy',numberOfMonths: 3, showCurrentAtPos:0,minDate: 0});
  	  	$('#calender').click(function() {
  	  
  	    $("#qso").focus();
  	  	});
      $("#bidP").datepicker({dateFormat: 'dd/mm/yy',numberOfMonths: 3, showCurrentAtPos:0,minDate: 0});
  	  	$('#calender').click(function() {
  	  
  	    $("#bidP").focus();
  	  	});
      //2,3 dateField
      /* $("#pp1").val($('#bidP').val());
      $("#pp2").val($('#bidP').val()); */
      
      $("#pp1").datepicker({dateFormat: 'dd/mm/yy',numberOfMonths: 3, showCurrentAtPos:0,minDate: 0});
      $('#2').click(function() {
      	  
    	    $("#pp1").focus();
    	  	});
      
      $("#pp2").datepicker({dateFormat: 'dd/mm/yy',numberOfMonths: 3, showCurrentAtPos:0,minDate: 0});
      $('#3').click(function() {
      	  
  	    $("#pp2").focus();
  	  	});
      
      $("#bidP").change(function(){
    	  
    	  $("#pp1").val($("#bidP").val());
          $("#pp2").val($("#bidP").val());
    	  
    	  /* 
           var d1=$("#bidP").val();
     	 var dt1=d1.match(/^(\d{1,2})\/(\d{1,2})\/(\d{4})$/);
     	   console.log("date:"+new Date(dt1[3],dt1[2]-1,dt1[1]));
     	   diffDays=((new Date(dt1[3],dt1[2]-1,dt1[1]).getTime())-(new Date(todayDate).getTime()))/(1000 * 60 * 60 * 24);
     	   console.log("days:"+diffDays);
     	   $("#pp1").datepicker({min:[dt1[3],dt1[2],dt1[1]]}); 
     	    */
     	   
      });
      //4date Field
      $('#aod').datepicker({dateFormat: 'dd/mm/yy',numberOfMonths: 3, showCurrentAtPos:0,minDate: 0});
      $('#4').click(function() {
      	  
    	    $("#aod").focus();
    	  	});
      //5date Field
      $('#dsq').datepicker({dateFormat: 'dd/mm/yy',numberOfMonths: 3, showCurrentAtPos:0,minDate: 0});
      $('#5').click(function() {
      	  
  	    $("#dsq").focus();
  	  	});
     
      
      
      
      //toDAY S UPDATE
    /*  $('.bi-chat-dots').click(function(){
    	  this.parentElement.parentElement.querySelector(".desc").style.color="red";
      }); */
});
Window.onload =setTimeout(function(){
		countWeek();
	},2000);
//it will generate random text based on parameter 
function generateChar1(len){
	var digits='0123456789';
	var chars='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
	let char1='';
	for(i=0;i<len;i++){
		char1+=chars[Math.floor(Math.random()*10)];
	}
	return char1;
	}
	//Generate Quote reference number
	function generate() {
		var A = new AUI();
		var pObject = A.one("#<portlet:namespace/>qrn");
		var button=document.getElementById("btn1")
		 var projectName=document.getElementById("pname");
		if(!(isNaN(projectName.value)) || projectName.value=="" || projectName.value==null ){
			 alert("pls...enter project Details...");
			 seterror(projectName,"Enter Valid Project Name");
			 setTimeout(function(){
				 removeError(projectName);
	          	}, 3000);
		}else{
		/* pObject.get("value"); */
		/* pObject.set("value", Math.floor(Math.random() * 100) + 1000);
		pObject.setAttribute('readonly', true);
		button.style.display = "none"; */
		
		/* pObject.set("value",generateChar1(2)+(Math.floor(Math.random() * 100) + 1000)+"-"+generateChar1(1)); */
		pObject.set("value","SW"+(Math.floor(Math.random() * 100) + 1000)+"-"+generateChar1(1));
		pObject.setAttribute('readonly', true);
		button.style.display = "none";
		/* button.disabled=true; */
		}

	}
	function pop() {
		/* var qno = document.getElementById("<portlet:namespace/>demo").value;
		alert(qno) */
		 let text = "Are you sure want to cancel the process..!"+"\n"+"You will not able Recover Previously filled Data";
		  if (confirm(text) == true) {
		    window.location.reload();
		  }else{
			  alert("Your Data Still Presents in Form");
		  }
	}
	
	function countWeek(){
		var ppStart=document.getElementById("pp1").value;
	    var ppEnd=document.getElementById("pp2").value;
	    var ppDuration=document.getElementById("pp3");
	    
	    var date1 = new Date(ppStart.split('/')[2],ppStart.split('/')[1],ppStart.split('/')[0]);
        var date2 = new Date(ppEnd.split('/')[2],ppEnd.split('/')[1],ppEnd.split('/')[0]);
        var time_difference = date2.getTime() - date1.getTime();
       /*  var result = ((time_difference / (1000 * 60 * 60 * 24))/7).toFixed(1); */
        var result = Math.ceil(time_difference / (1000 * 60 * 60 * 24*7));
	    /* alert("date:"+ppDuration.value); */
	    ppDuration.setAttribute("value", result); 
	    /* console.log("time1:"+date1.getTime()+"time2:"+date2.getTime()+"Time:"+time_difference);
	    console.log("val:"+result);
	    console.log("d1:"+date1+"-"+ppEnd); */
	}
	
	
	 function seterror(tagname,errormsg) {
           tagname.style.border="1px solid red";
       /*   alert(tagname.parentElement); */
         /* tagname.parentElement.parentElement.querySelector(".desc").style.color="red"; */
          /*  tagname.focus();
           alert(errormsg);
            setTimeout(function(){
          	 tagname.style.border="";
          	}, 3000);  */
		/* tagname.querySelector('.error').innerHTML=errormsg; */
		
     }
	 
	 function removeError(tagname){
		 tagname.style.border="1px solid #cbcbcb";
	 }
	
	 function validate(){
			/* var date = document.getElementById("<portlet:namespace/>demo").value; */
		  event.preventDefault();
		validQuoteNo=true;
		ValidProjectName=true;
		validCustomer=true;
		validcAddress=true;
		 validpCode = true;
		validsmType=true;
		validsName=true;
		validProductSpec=true;
		validLocation=true;
		validWorkDesc=true;
		validEndUser=true;
		
		validConName=true;
		validMobile=true;
		validEmail=true;
		
		validBidStartDate=true;
		validpStartDate=true;
		validpEndDate=true;
		validAODate=true;
		
		validQuote=true;
		validProjectCost=true;
		validDate=true;
		validProjectsell=true;
		validTimeDuration=true;
		returval=true;
		var todayDate =new Date(Date.now()).toLocaleString().split(',')[0];
				var quoteNo = document.forms["<portlet:namespace/>myfrm"]["<portlet:namespace/>qrn"];
				 var projectName=document.getElementById("pname");
				 var customer=document.getElementById("cname");
				    var cAddress=document.getElementById("cadd");
				    var pCode=document.getElementById("pcode");
				    
				    var chek1=document.forms["<portlet:namespace/>myfrm"]["<portlet:namespace/>chek1"];
				    var smType=document.getElementById("smType");
				    var sName=document.getElementById("sna");
				    var lsName=document.getElementById("ls");
				    var lsData=document.getElementById("lscd");
				    var pType=document.getElementById("ptype");
				    var loc=document.getElementById("loc");
				    var wDesc=document.getElementById("pds");
				    var eUser=document.getElementById("una");
				    
				    var conName=document.forms["<portlet:namespace/>myfrm"]["<portlet:namespace/>conName"];
				    var phNO=document.forms["<portlet:namespace/>myfrm"]["<portlet:namespace/>ph"];
				    var mail=document.forms["<portlet:namespace/>myfrm"]["<portlet:namespace/>email"];
			    
				    var bidStart=document.getElementById("bidP");
					   /*  var bid=document.forms["<portlet:namespace/>myfrm"]["<portlet:namespace/>bidSp"]; */
					    var ppStart=document.getElementById("pp1");
					    
					    var ppEnd=document.getElementById("pp2");
					    var ppDuration=document.getElementById("pp3");
					   
					    var aoDate=document.getElementById("aod"); 
					    
			   
			     
			    
				  var qof=document.getElementById("qof");
				 var opc=document.getElementById("opc");
				 var dsq=document.getElementById("dsq");
				 var ops=document.getElementById("ops");
		         var comments=document.getElementById("comments");
		          var rea=document.getElementById("<portlet:namespace/>rea");
/* 		          if( quoteNo.value=="" || quoteNo.value==null){
				    	
				    	  seterror(quoteNo,"Enter valid Quote Ref Number");
				    	 returnval = false;
				    	 validQuoteNo = false;
				     }else{
				    	 removeError(quoteNo);
				     } */
			/* 	      if(!(isNaN(projectName.value)) || projectName.value=="" || projectName.value==null ){
					    	
					    	 seterror(projectName,"Enter Valid Project Name");
					    	 returnval = false;
					    	 ValidProjectName = false;
					     }else{
					    	 removeError(projectName);
					     } */
				      /*  if(!(isNaN(customer.value))|| customer.value=="" || customer.value==null){
				    	  seterror(customer,"Enter Valid Customer Name");
					    	 returnval = false;
				    	  validCustomer = false;
				      }else{
					    	 removeError(customer);
					     } */
				       /* if(cAddress.value=="" || cAddress.value==null || !(isNaN(cAddress.value))){
				    	  seterror(cAddress,"Enter Customer Address Valid Address");
					    	 returnval = false;
				    	  validcAddress = false;
				      }else{
					    	 removeError(cAddress);
					     } */
				      /* if(pCode.value==null || pCode.value=="" || !(pCode.value.match('^([A-Z][A-HJ-Y]?[0-9][A-Z0-9]? ?[0-9][A-Z]{2}|GIR ?0A{2})$'))){
				    	  seterror(pCode,"Enter Valid pinCode of 6 digits");
					    	 returnval = false;
					    	 validpCode = false;
				      }else{
					    	 removeError(pCode);
					     } */
				      /* if(smType.value=="select"){
				    	  seterror(smType,"Choose Valid Option in Small Work Type");
					    	 returnval = false;
				    	  validsmType = false;
				      }else{
					    	 removeError(smType);
					     } */
				      /*  if(sName.value=="" || sName.value==null || !(isNaN(sName.value))==true){
				    	  seterror(sName,"Enter Valid Small Work Name");
					    	 returnval = false;
				    	  validsName = false;
				      }else{
					    	 removeError(sName);
					     } */
				       /* if(pType.value=="select" || pType.value=="" || pType.value==null){
				    	  console.log("pstype:"+pType.value);
				    	  seterror(pType,"Choose Valid Option in ProductSpecification Field");
					    	 returnval = false;
				    	  validProductSpec = false;
				      }else{
					    	 removeError(pType);
					     }
				       if(loc.value=="select"){
				    	  console.log("loctype:"+loc.value);
				    	  seterror(loc,"Choose Valid Location");
					    	 returnval = false;
				    	  validLocation= false;
				      }else{
					    	 removeError(loc);
					     } */
				     /*  if(wDesc.value=="" || wDesc.value==null || !(isNaN(wDesc.value))){
				    	  seterror(wDesc,"Enter Valid Work Description");
					    	 returnval = false;
				    	  validWorkDesc = false;
				      }else{
					    	 removeError(wDesc);
					     }
				      if(eUser.value=="" || eUser.value==null || !(isNaN(eUser.value))){
				    	  seterror(eUser,"Enter Valid End User Name");
					    	 returnval = false;
				    	  validEndUser = false;
				      }else{
					    	 removeError(eUser);
					     } */
				      
				      
				      /* contactDetails Validation */
				     /*  if(conName.value=="" || conName.value==null || !(conName.value.match(/^[A-Za-z\s]+$/)) ){
				    	  console.log("nsme:"+conName.value);
				    	  seterror(conName,"Enter Valid Conatact Name");
					    	 returnval = false;
				    	  validConName = false;
				      }else{
					    	 removeError(conName);
					     } */
				      /* if(phNO.value=="" || phNO.value==null || !(phNO.value.match(/^[6789][0-9]{9}$/))){
				    	  console.log(phNO.value)
				    	  seterror(phNO,"Enter valid phone Number");
				    	  returnval = false;
				    	  validMobile = false;
				      } else{
				    	  removeError(phNO);
				      }
				     if(mail.value=="" || mail.value==null || !(mail.value.match(/^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/))){
				    	  seterror(mail,"Enter valid Email");
				    	  returnval = false;
				    	  validEmail = false;
				      } else{
					    	 removeError(mail);
					     } */
				      
				      /* if(bidStart.value=="" ||  bidStart.value==null){
				    	 console.log("date:"+bidStart.value);
				    	  seterror(bidStart,"Choose valid Bid Start date");
				    	  returnval = false;
				    	  validBidStartDate=false;
				      }else{
					    	 removeError(bidStart);
					     }
				     if(bidStart.value<todayDate){
				    	  seterror(bidStart," Bid Start Date Connot be Before than Today's Date");
				    	  returnval = false;
				    	  validBidStartDate=false;
				      }else{
					    	 removeError(bidStart);
					     } */
				     /*  if( ppStart.value=="" ||  ppStart.value==null){
				    	  seterror(ppStart,"Choose valid Project Start Date date");
				    	  returnval = false;
				    	  validpStartDate=false;
				      }else{
					    	 removeError(ppStart);
					     }
				      if(ppStart.value<todayDate){
				    	  seterror(ppStart," Project Start Date Connot be Before than Today's Date");
				    	  returnval = false;
				    	  validpStartDate=false;
				    	  
				      }else{
					    	 removeError(ppStart);
					     } */
				       /* if( ppEnd.value=="" ||  ppEnd.value==null){
				    	  seterror(ppEnd,"Choose valid Project End date");
				    	  returnval = false;
				    	  validpEndDate=false;
				      }else{
					    	 removeError(ppEnd);
					     }
				       if(ppDuration.value=="" || ppDuration.value==null || ppDuration.value<0){
				    	  seterror(ppDuration,"Choose valid Date Ranges of Project Start-End");
				    	  returnval = false;
				    	  validTimeDuration=false;
				      }else{
					    	 removeError(ppDuration);
					     }
				      if( aoDate.value=="" ||  aoDate.value==null){
				    	  seterror(aoDate,"Choose valid Anticipated Order Date");
				    	  returnval = false;
				    	  validAODate=false;
				      }else{
					    	 removeError(aoDate);
					     } */
				       /* if(aoDate.value<todayDate){
				    	  seterror(aoDate,"Anticipated Order Date Connot be Before than Today's Date");
				    	  returnval = false;
				    	  validAODate=false;
				      }else{
					    	 removeError(aoDate);
					     } */

				     /*   if(qof.value==="select"){
				    	  seterror(qof,"Please Specify Valid option in Quote Format");
				    	  returnval = false;
				    	  validQuote=false;
				      }else{
					    	 removeError(qof);
					     }
				       if(opc.value=="" || opc.value==null || isNaN(opc.value) || opc.value<0){
				    	  seterror(opc,"enter valid Project Cost Amount");
				    	  returnval = false;
				    	  validProjectCost=false;
				      }else{
					    	 removeError(opc);
					     }
				       if(dsq.value=="" || dsq==null){
				    	  seterror(dsq,"Choose valid Option in Date shown Quote field");
				    	  returnval = false;
				    	  validDate=false;
				      }else{
					    	 removeError(dsq);
					     }
				      if(ops.value=="" || ops.value==null || ops.value<0){
				    	  seterror(ops,"enter valid Project Sell Amount");
				    	  returnval = false;
				    	  validProjectsell=false;
				      }else{
					    	 removeError(ops);
					     } */
				      /*  if(ops.value<opc.value){
				    	  seterror(ops,"Project Sell Amount Must be Higher Than Project Cost");
				    	  returnval = false;
				    	  validProjectsell=false;
				      }else{
					    	 removeError(ops);
					     } */
				     /*  if(returnval!=true){
				    	  event.preventDefault();
				          alert("Please fix the errors which are marked in red");
				      }
				      */
				       if(validQuoteNo==true && ValidProjectName==true && validCustomer==true && validcAddress==true && validpCode==true && validsmType==true && validsName==true && validProductSpec==true && validLocation==true && validWorkDesc==true && validEndUser==true && validConName==true && validMobile==true && validEmail==true && validBidStartDate==true && validpStartDate==true && validpEndDate==true && validTimeDuration==true && validAODate==true && validQuote==true && validProjectCost==true && validDate==true && validProjectsell==true){
	 					 
	 					  
	 					 AUI().use('aui-io-request', function(A){
	 						A.io.request('', {
	 						    method: 'post',
	 						   form: {
	 					    		id: 'frm'
	 					   	 },
	 						   
	 						    on : {
	 						    success: function() {
	 						    alert("success");
	 						   /*  alert("date:"+bidStart.value+"-"+ppStart.value); */
/* 	 						    console.log("date:"+bidStart.value+"-"+ppStart.value); */
	 						   window.location.href = "${StatusofSubmittedQuote}";
	 						    },
	 						    error: function () {
	 			                      alert("Unable to  order...pls try agian After Some time");
	 			               	      }
	 						    }
	 						    });
	 						    }); 
	 			      
						  
	 				  }else{
	 					  returnval=false;
	 					  event.preventDefault();
	 					 alert("Please fix the errors which are marked in red");
	 					  /* alert("Enter valid Data in Below Red bodered Fields...") */
	 				  }
				    	 
		
		
		  };
		
		  
		  
		  
		  
		
</script>
</head>
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
<body>
<% List<TimeAndMaterialTable> tablelist = TimeAndMaterialTableLocalServiceUtil.getTimeAndMaterialTables(-1,-1);
int numRecords = tablelist.size()-1;


	TimeAndMaterialTable lastRecord = tablelist.get(numRecords);

%>
 <div class="container-fluid a" >
			<aui:form id="frm" name="myfrm">
 <liferay-ui:panel-container id="panel-container-1" extended="true"
		accordion="true">
		<liferay-ui:panel id="panel-c1" title="Quote Form" collapsible="true" extended="true" >

	
					<liferay-ui:panel id="panel-c2" title="Project Info"
						collapsible="true" extended="true">
						 
						<table class="t1">
				
							<tr>
							 <!-- <sub  class='far'>&#xf4ad;</sub> -->
								<td class="desc">Requester Name<b style="color:red">*</b><span hidden><input name="qrn" id="qrn" type="text" cssClass="ips" value="<%=lastRecord.getQuoteno() %>" readonly ></input></span></td>
								<td><lable><%=lastRecord.getCustomer_name() %></lable><i class="bi bi-chat-dots"></i>
								</td>
								<td></td>
								<td></td>
								<td ></td>
								<td class="desc" style="margin-right:350px">Request Date
													<b style="color:red">*</b></td>
								<td><lable>27/03/2023</lable> <i class="bi bi-chat-dots"></i></td>
							</tr>
							<tr>
								<td class="desc">Project Name<b style="color:red">*</b></td>

								<td colspan="2"><%=lastRecord.getProject_Name() %></td>
								<td></td>
								<td ></td>
								
								<td class="desc">Customer<b style="color:red">*</b></td>
								<td><input type="text" name="pcode"  id="pcode" disabled="disabled" value="<%=lastRecord.getCustomer_name() %>"/><i class="bi bi-chat-dots"></i></td>
							</tr>
							
							<tr>
								<td class="desc">Customer Address</td>
								<td colspan="2">
								<textarea rows="3" cols="4" readonly><%=lastRecord.getCustomerAddress() %></textarea>
								</td>
								<td></td>
								<td ></td>
								<td class="desc">Postal Code<b style="color:red">*</b></td>
								<td><input type="text" name="pcode"  id="pcode" disabled="disabled" value="<%=lastRecord.getPincode() %>"/><i class="bi bi-chat-dots"></i></td>
							</tr>
							
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td ></td>
								<td class="desc">Time & Material<b style="color:red">*</b></td>
								<td>
									<input type="text" name="" disabled="disabled" value="<%=lastRecord.getWorktype() %>"/>
									<!-- <select > 
									<option value="Select">Select</option>
									 <option value="Labour Only" selected="selected">Labour Only</option> 
									 <option value="Supply Only">Supply Only</option> 
									 <option value="Supply and Labour">Supply and Labour</option>
									  <option value="Supply, Sub Contract and Labour">Supply, Sub Contract and Labour</option> 
									  <option value="Sub Contract Only">Sub Contract Only</option> </select>
									  <i class="bi bi-chat-dots"></i> --></td>
							</tr>
							<tr>
								<td class="desc">Site Name</td>
								<td><input type="text" value="<%=lastRecord.getSiteName() %>" disabled="disabled"> <i class="bi bi-chat-dots"></i></td>
								<td></td>
								<td></td>
								<td></td>
								<td class="desc">Product Specified</td>
								<td>
								<input type="text" value="<%=lastRecord.getProduct() %>" disabled="disabled">
								
								<%-- <select name="<portlet:namespace/>ptype"  id="ptype">
										<option disabled selected value="select">Select</option>
										<option value="Trend">Trend</option>
										<option value="Centra Line">Centra Line</option>
										<option value="Tyrrell">Tyrrell</option>
										<option value="Schneider">Schneider</option>
										<option value="Delta">Delta</option>
										<option value="ALC(Automated Logic)">ALC(Automated Logic)</option>
										<option value="Open">Open</option>
										<option value="Tridium">Tridium</option>
										<option value="North">North</option>
										<option value="Easy i/o">Easy i/o</option>
								</select> --%><i class="bi bi-chat-dots"></i></td>
							</tr>
							<tr>
								<td class="desc">Lead Source<b style="color:red">*</b></td>
								<td>
								<input type="text" value="<%=lastRecord.getLeadsource() %>" disabled="disabled">
								<%-- <select name="<portlet:namespace/>ptype"  id="ptype">
										<option disabled selected value="select">Select</option>
										<option value="Trend">Trend</option>
										<option value="Centra Line">Centra Line</option>
										<option value="Tyrrell">Tyrrell</option>
										<option value="Schneider">Schneider</option>
										<option value="Delta">Delta</option>
										<option value="ALC(Automated Logic)">ALC(Automated Logic)</option>
										<option value="Open">Open</option>
										<option value="Tridium">Tridium</option>
										<option value="North">North</option>
										<option value="Easy i/o">Easy i/o</option>
								</select> --%><i class="bi bi-chat-dots"></i></td>
								<td></td>
								<td></td>
								<td></td>
								<td class="desc">Lead Source Contextual Data<b style="color:red">*</b></td>
								<td>
								<textarea
										name="pds" class="ta"  id="pds" readonly><%=lastRecord.getLeaddata() %></textarea>
								<i class="bi bi-chat-dots"></i></td>
							</tr>
							<tr>
								<td class="desc">Description of Works<b style="color:red">*</b></td>
								<td colspan="2"><textarea
										name="pds" class="ta"  id="pds" readonly><%=lastRecord.getDescOfWork() %></textarea><i class="bi bi-chat-dots"></i></td>
								<td></td>
								<td></td>
								<td class="desc">End User<b style="color:red">*</b></td>
								<td><input type="text" name="una"  id="una" value="<%=lastRecord.getEndUser() %>" disabled="disabled"/><i class="bi bi-chat-dots"></i></td>
							</tr>
						</table>


						<fieldset style="border:1px solid #cbcbcb;width:96%;margin:0 auto;">
						
							<legend style="width: fit-content; margin: 9px; border: none;color: #478fca">Contact
								Details</legend>
							<div class="" >
								<aui:column columnWidth="70" first="true">
								
																		<table class="" style="margin:0 0 0 130px;">
										<tr>
											<td class="desc">Contact Name<b style="color:red">*</b></td>
											<td><input name="conName"  type="text" value="<%=lastRecord.getContactName() %>" id="conName"
													readonly/></td>
										</tr>
										<tr>
											<td class="desc">Phone<b style="color:red">*</b></td>
											<td><input name="ph" type="text" id="ph" value="<%=lastRecord.getPhone() %>" maxlength="10" readonly></input></td>
										</tr>
									</table>

								</aui:column>

								<aui:column columnWidth="30" first="true" class="second" >
								
									<aui:input inlineLabel="true" name="email" id="email" value="<%=lastRecord.getEmail() %>" disabled="true" label='Email<span style="color:red">*</span>' />
							
								</aui:column>
							</div>
							
						</fieldset>

						<div style="display: flex; width: 100%;">
							<fieldset
								style="border: 1px solid #cbcbcb; width: 100%; margin-right: 5px; padding: 0 30px;">
								<legend
									style="width: fit-content; margin: 9px; border: none; color: #478fca">Estimated</legend>
								<div style="margin: 12px;">
									<table style="padding: 0 120px" class="t4">
										<thead>
											<tr>
												<th></th>
												<th>Start Date</th>
												<th style="padding: 0 50px;">End Date</th>
												<th>Weeks</th>
											</tr>
										</thead>
										<tbody>
										
											<tr>
												<td class="desc">Bid Programme<b style="color: red">*</b></td>
												<td></td>
												<td style="padding: 0 50px;"><input type="text"
													name="bidP" class="dt input-mini" id="bidP"
													autocomplete="off" value="<%=lastRecord.getBidEnd() %>" disabled="true"/><!-- <span id="calender"
													style="cursor: pointer">&#128197;</span> --></td>
												<td></td>
											</tr>
											<tr>
												<td class="desc">Project Programme<b style="color: red">*</b></td>
												<td><input type="text" name="pp1" id="pp1"	class="dt input-mini" value="<%=lastRecord.getProjStart() %>" disabled="true"/>
													<!-- <span id="2" style="cursor: pointer">&#128197;</span >--></td>
												<td style="padding: 0 50px;"><input type="text"
													name="pp2" id="pp2" class="dt input-mini" value="<%=lastRecord.getProjEnd() %>"
													 disabled="true"/><!-- <span id="3"
													style="cursor: pointer">&#128197;</span> --></td>
												<td><input name="pp3" type="text" id="pp3"
													style="width: 30px" readonly /><i class="bi bi-chat-dots"></i>
												</td>
											</tr>
											<tr>
												<td class="desc">Anticipated Order Date<b
													style="color: red">*</b></td>
												<td><label><%=lastRecord.getAnticipateDate() %></label> </td>
												<td style="padding: 0 50px;"></td>
												<td></td>
											</tr>
											
										</tbody>
									</table>
								</div>
							</fieldset>

							
						</div>


					</liferay-ui:panel>
					<liferay-ui:panel id="panel-c3" title="Quote Info"
						collapsible="true" extended="true">
						
									<table style="width:100%;" class="t3">
									<tbody style="">
								<tr>
									<td width="19%" style="text-align: end;padding-right: 15px">Quotation on Our Format<b style="color:red">*</b></td>
									<td width="26%">
											<lable>Yes</lable>
									</select></td>
									<td width="16%" style="text-align: end;padding-right: 15px">Quote Reference Number<b style="color:red">*</b></td>
									<td><lable>QS08649</lable></td>
								</tr>
								<tr >
									<td width="19%" style="text-align: end;padding-right: 15px">OverAll Project Cost(<span>&#163;</span>)<b style="color:red">*</b></td>
									<td width="26%">
									<lable>400</lable>
									</td>
									<td width="16%" style="text-align: end;padding-right: 15px">OverAll Project Sell(<span>&#163;</span>)<b style="color:red">*</b></td>
									<td>
										<lable>400</lable>
									</td>
								</tr>
                                 </tbody>
							</table>
							
                            
					</liferay-ui:panel>
				
				

		</liferay-ui:panel>
	</liferay-ui:panel-container>
	<liferay-ui:panel id="panel-c4" title="Submit Form" collapsible="true"
			extended="true" >
			<table class="" style="margin:0 0 0 130px;">
										<tr>
											<td class="desc">Quote Submitted On<b style="color:red">*</b></td>
											<td><input type="text"
													name="qso" class="dt" id="qso"
													autocomplete="off" /><span id="calender"
													style="cursor: pointer">&#128197;</span></td>
										</tr>
										<tr>
											<td class="desc">% Win Probability<b style="color:red">*</b></td>
											<td><aui:input name="winp" label="" type="text" id="winp" ></aui:input></td>
										</tr>
									</table>

	
					
	</liferay-ui:panel>
	<liferay-ui:panel id="panel-c5" title="Comments History" collapsible="true"
			extended="true" >
			

	
					
	</liferay-ui:panel>
		<div>
					<span>Comments<b style="color:red">*</b></span><br>
					<textarea class="ta" name="comments" id="comments" style="width:100%" ></textarea>
					
				</div>
	
				<div style="display: grid; float: right; text-align: end;">
					
					<div>
											<input type="submit" class="" style="background-color : #6fb3e0 ;padding : 10px 25px; color : white; border: none; margin-bottom: 7px;
    margin-top: 6px;" onclick="generate()"  Value="Save">
	<input type="reset" class="" style="background-color : #ffb752 ;padding : 10px 25px; color : white; border: none;" Value="Reset">
	<input type="button" class="" style="background-color : #87b87f ;padding : 10px 25px; color : white; border: none;" onClick="validate()" value="Submit">
    <input type="reset" class="" style="background-color : #d15b47 ;padding : 10px 25px; color : white; border: none;"  onclick="pop()" Value="Cancel">

<%-- 						<aui:button-row>
							<aui:button cssClass="btn btn-primary" type="button"
								id="mySubButton" onclick="generate()" name="saveButton" value="save" />
							<aui:button cssClass="btn btn-warning" id="Button1"
								type="button" onclick=" window.location.reload()" value="Reset" />
							<aui:button cssClass="btn btn-success" id="submitBtn"
								type="button" value="Submit" onclick="validate()"/>
							<aui:button cssClass="btn btn-danger" id="myCanButton"
								onclick="pop()" type="button" value="Cancel" />
						</aui:button-row> --%>
					</div>
				</div>
			</aui:form>
 </div>
<script>


Dropzone.autoDiscover = false;

	function setup(id) {
		let options = {
            url:"/upload",
			maxFilesize : 500 / 1024,
			maxFiles : 1,
			dictResponseError : "Server not Configured",
			dictFileTooBig : "File too big ({{filesize}}MB). Must be less than {{maxFilesize}}MB.",
			dictCancelUpload : "",
			// DragEvent:function(){
		//   document.getElementById('btns').style.backgroundColor="green";
			//   console.log("dragging..");
			// },
			acceptedFiles : ".txt,.xlsx,.xls",
			init : function() {
				var self = this;
				//New file added
				self.on("addedfile", function(file) {
					console.log("new file added ", file);
					
				});
				// Send file starts
				self.on("sending", function(file) {

					console.log("upload started", file);
				});

				self.on("complete", function(file, response) {
					if (file.name !== "442343.jpg") {
						//this.removeFile(file);
					}
					//else{
					//   alert("uploaded Successfully");
					// }

				});
				
				self.on("maxfilesreached", function(file, response) {
					//alert("too big");
				});

				self.on("maxfilesexceeded", function(file, response) {
					this.removeFile(file);
				});

				// self.on("addedfile", function(file) {
				//   const pattern = /\d{6}(\.)(jpg|jpeg|png)/;

				//   if (!pattern.test(file.name)) {
				//     //   this.removeFile(file);
				//   }
				// });

				

				self.on("sendingmultiple", function() {
					alert("files submitted..");
					// Gets triggered when the form is actually being sent.
					// Hide the success button or the complete form.
				});
			},
			accept : function(file, done) {
				// alert("file added successfully");
				console.log("one file is added");
				 var reader = new FileReader();
			        reader.addEventListener("loadend", function(event) { console.log("data1"+event.target.result);});
			       reader.readAsText(file);
				// const pattern = /\d{6}(\.)/;

				// if (pattern.test(file.name)) {
				//   done();
				// } else {
				//   done("File name not a valid admission number");
				//   return false;
				// }
			},

			previewsContainer : '#items',
			previewTemplate : '<div class="dz-preview dz-file-preview">'
					+ '<div class="" style="display:flex;justify-content:space-between;padding:0 5px;width:75%">'
					+ '<div class="dz-filename"><span data-dz-name></span></div>'
					+ '<div class="dz-remove">'
					+ '<a href="javascript:undefined;" data-dz-remove=""><i class="bi bi-trash" style="color:black"></i></a>'
					+ '</div></div>'
					+ '<div class="dz-error-message" style="color:red"><i class="fa fa-warning">&nbsp;</i><span data-dz-errormessage></span></div>'
					+ '<div class="dz-progress">'
					+ '<span class="dz-upload" data-dz-uploadprogress></span></div></div>'

		};

		var myDropzone = new Dropzone('#' + id, options);
	}
	//calling a function by passing form id
	
	Window.onload =setTimeout(function(){
	setup('zone');

	},2000);
</script>
</body>