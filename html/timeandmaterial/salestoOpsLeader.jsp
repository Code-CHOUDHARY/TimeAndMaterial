
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui"%>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="p"%>
<p:renderURL var="homepage">
 		<p:param name="name" value="devkaran"></p:param>
		<p:param name="jspPage" value="/html/timeandmaterial/homepage.jsp"></p:param>
		</p:renderURL>
<style>
.desc {
	text-align: end;
	
 padding-right: 15px !important;
}
.bodydemo {
font-family:'Segoe UI' !important;
}
</style>
<style>
   
    .table1{
    border-collapse: collapse;
            width: 100%;
            }
      /*  table {
            border-collapse: collapse;
            width: 100%;
        } */


        tr:nth-child(even) {
            background-color: #B7CADB;
        }

        .a {
            text-align: end;
    width: 65%;
        }

        .b {
            text-align: start;
            width: 50%;
        } 
      
    
    .slider.round {
     width: 46px;
    margin-bottom: 11px;
    height: 22px;
    margin-top: -25px;
    margin-left: 213px;
    border-radius: 50px;
}
.slider.round:before {
  border-radius: 50%;
}

.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
  
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
 position: absolute;
content: "";
    height: 20px;
    width: 20px;
    left: 2px;
    bottom: 1px;
background-color: white;
-webkit-transition: .4s;
transition: .4s;
}
    
.hidden {
    opacity: 0;
}
.nohidden{
opacity: 100;
}
input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before 
{post
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}
.wrapper
{
column-count: 2;

}
#Jfile{
  width: 61%;

} 

 .required2
 	{
 	color:red;
 	/* overflow: hidden; */
 	} 

  .name {
            background-color: rgb(240, 237, 237);
            color: rgb(4, 125, 173);
            cursor: pointer;
            padding: 7px;
            width: 98%;
            border: none;
            text-align: left;
            outline: none;
           
            transition: 0.4s;
         
            font-weight: bolder;
            line-height: -10%;
            margin-left: 5px;
            margin-right: 15px;
         
        }
        
         /* this  is  comment history css */
   .timeline {
  	display: grid;
  	grid-template-columns: 10% 3px 50%;
}
.timeline__middle {
  		
  position: relative;
  background: grey;
  width: 1px;
  top: 15px;
}
.timeline__component{
	color: #a069c3;
	margin-top: 15px;
	margin-left: 10%;
	font-weight: bold;
}
.timeline__point {
  position: absolute;
  top: 0;
  left: 55%;
  transform: translateX(-50%);
  width: 15px;
  height: 15px;
  background: #009EFF;
  border-radius: 50%;
}
.timeline__component__right{
	padding: 15px;
}
div.timeline:last-of-type .timeline__middle{
	height:10px;
}

/* .flex-item{
	display: flex;
	flex-direction: row;
	align-items: ;
	
} */

    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script>
    
//this function code  for the  datecalender jqeary code

    $(document).ready(function() 
    	{
    	
    		$('#datepicker4').hide();
  			$('#calender').hide();
  			$('#appt-time').hide();
  			$('#mAPM').hide(); 
    	/* $('#appt-time').hide(); */
    	  $("#datepicker4").datepicker();
    	  $('#calender').click(function() {
    	    $("#datepicker4").focus();
    	  });
    	  
    	  // this  code for disable  when  the  any  user click on the not  to set  metting
    	  
    	  $('#meet').change(function(event){
  	    	console.log($('#meet').val());
  	    	
  	    	if ($('#meet').val() == 'No'){
  	    		
  	    		$('#datepicker4').attr("disabled", true);
  	    		$('#calender').attr("disabled", true);
  	    		$('#appt-time').attr("disabled", true);
  	    		$('#mAPM').attr("disabled", true);
  	    		/* $('#datepicker4').addClass('hidden');
  	    		$('#appt-time').addClass('hidden');
  	    		 $('#calender').addClass('hidden');
  	    		 $('#mAPM').addClass('hidden'); */
  	    		
  	    		  $('#datepicker4').hide();
  	    		$('#calender').hide();
  	    		$('#appt-time').hide();
  	    		$('#mAPM').hide(); 
  	    		  
  	    		 
  	    		 /*  $("#datepicker4").val(""); 
                  $("#calender").val("No"); 
                  $("#appt-time").val("");
                  $("#mAPM").val(""); */
  	    	}
  	    	 
  	    		
  	    	
  	    	else{
  	    		$('#datepicker4').attr("disabled", false);
  	    		$('#calender').attr("disabled", false);
  	    		$('#appt-time').attr("disabled", false);
  	    		$('#mAPM').attr("disabled", false);
  	    		/* $('#datepicker4').addClass('nohidden');
  	    		$('#appt-time').addClass('nohidden');
  	    		 $('#calender').addClass('nohidden');
  	    		 $('#mAPM').addClass('nohidden'); */
  	    		/*  $('#datepicker4').addClass('hidden');
   	    		$('#appt-time').addClass('hidden');
   	    		 $('#calender').addClass('hidden');
   	    		 $('#mAPM').addClass('hidden'); */ 
  	    		  $('#datepicker4').show();
  	    		$('#calender').show();
  	    		$('#appt-time').show();
  	    		$('#mAPM').show();   
  	    		 $("#datepicker4").val("02/2/2023"); 
   	    	   $("#appt-time").val("00:03"); 
   	    	   $('#mAPM').val("AM");
   	    	   
  	    		
  	    	}
  	    	
  	    	
  	    	
  	    }); 
    	  $('#save').click(function(event){
		    	 var y = $("#cbox").val();
		    	 var x = $("#Jfile").val();
		    	 var select =$('#meet').val();
		  	    		
		    	if (y == "" || x==""){
	  		    	
	  		    	if(y==""){
	  		    		alert("Please Fill the required  filed");
	  		    	document.getElementById("cbox").style.border = ' 1px solid red';
	  		    	event.preventDefault();
	  		    	}
		    	else{
		    		document.getElementById("cbox").style.border = ' 1px solid #eaeaea';
		    	}
	  		    	if(x==""){
	  		    	document.getElementById("Jfile").style.border = ' 1px solid red';
	  		    	
	  		    	}
	  		    	else{
			    		document.getElementById("Jfile").style.border = ' 1px solid #eaeaea';
			    	}
	  		    	if(select == "select"){
	  		    		alert("please select yes or no");
		  	    		event.preventDefault();
	  		    	}
	  		    	else{
			    		alert('ok');
			    	}
	  		    }
		    	else{
		    		document.getElementById("cbox").style.border = ' 1px solid #eaeaea';
		    		document.getElementById("Jfile").style.border = ' 1px solid #eaeaea';
		    	}
		    });     
    	  $("#save").click(function(event){

    		  if( $("#meet option:selected").val()==''){

    		  /* alert("Please select one option at least"); */

    		    /* $("#message").html("Select At least one option"); */
  		    	$('#meet').css("border-color", "red");

    		    event.preventDefault();

    		  }
    		  else{
		    		
		    		document.getElementById("meet").style.border = ' 1px solid #eaeaea';
		    	}


    		  });
  	  
  	    	
  	    	
  	  $('#checkbox').click(function(e) {
  		    if (this.checked) {
  		    	$('#Jfile').attr("disabled", true);
  		    	 $("#datepicker4").val("No"); 
  		        $('#Jfile').hide(); // If checked enable item 
  		      $('#path').hide();
  		    $('#Jfile').removeAttr('required'); 
  		   

  		    } else {
  		    	$('#Jfile').attr("disabled", false);
  		    	 $("#datepicker4").val(""); 
  		    	$('#Jfile').show(); // If checked disable item 
  		    	$('#path').show();
  		    	
  		    	/*  $('#save').click(function(event){
  		    		
  		    	 var x = $("#Jfile").val();
  		    	if (x == "" || x == null){
  	  		    	alert("Please Fill the  job file path in server");
  	  		    document.getElementById("Jfile").style.border = ' 1px solid red';
  	  		    	event.preventDefault();
  	  		    }
  		    	else{
  		    	  document.getElementById("Jfile").style.border = ' 1px solid #eaeaea';
  		    		
  		    		
  		    	}
  		    });  */    
  		    }
  		   
  		});
  	    
  	});
    	// this   function  code  for the togle the  comment  history block

        $(document).ready(function () {
        	 $('.para').hide();
            $(".name").click(function () {
                $(".para").slideToggle();
            });
        });
    	
       /*  function validateForm() {
        	  var x = document.forms["myForm"]["Jfile"].value;
        	  if (x == "" || x == null) {
        		  
        	    alert("Name must be filled out");
        	    return false;
        	  }
        	} */
    
    	//this  code   for  validation  for  job pathe  the  ob path is  onlye  i naming character onlye  not  extra charcter
    	
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
  <div class="bodydemo"> 
<aui:form>
	<liferay-ui:panel id="panel-c4" title="Sales to Operations Handover" collapsible="true"
			extended="true" >
<div>
            <p style="padding-left: 1%; padding-top: 24px;" >Instruction - Please upload any further relevant documentation for the Project Lead. If there is nothing to upload - leave blank</p>
        </div>
    <div class="wrapper" style="padding-left: 60px;"><label style="">
    Has the job file set up on the server?<span class = "required2" >*</span></label><label class="switch" >
<input type="checkbox" id="checkbox"  title="This check-box is reqired">
  <span class="slider round">
  
  </span>
</label>

 <label for="Jfile"></label>
 <span id="path">Job file path in server</span>  &nbsp;&nbsp; <input  type="text" id="Jfile"  name="<portlet:namespace/>JobPath"  required  ><br>
   <span style="color:red; margin-left:28%" id ="e"></span>
  </div>

	     <table class="tableb">
    
            <tr class="tr2" style="background: white;">
                <td> <label style = "margin-bottom: 10%;margin-top: 10%;padding-left: 129px;">
        Schedule meting with operatonal<span class = "required2">*</span>
        <select  name="<portlet:namespace/>MettingSchedul" id="meet" style = "width:29%;"  onkeyup="validatemeet">
          <option value="" selected >-select-</option>
          <option value="yes" >Yes</option>
          <option value="No" >No</option>
        </select>
      </label></td>
     
              
                <td> <input  name="<portlet:namespace/>Meeting_date"  type="text"  id="datepicker4" style = " margin-left: 10%; margin-top: 1%;width: 32%;display: inline-block;"  > 
                 <span id="calender">&#128197; </span></td>
                 
                 

                <td>
                    <label
                     for="appt-time">
                    <select  name="<portlet:namespace/>Meeting_time"   id="appt-time" type="text" name="appt-time" style= "   margin-left: -126%;margin-top: 6.5%; width: 100%;" >
                           
              
                          <option >01:00</option>
                          <option >02:00</option>
                          <option selected value="03:00">03:00</option>
                          <option >04:00</option>
                           <option >05:00</option>
                          <option >06:00</option>
                          <option >07:00</option>
                           <option >08:00</option>
                          <option >09:00</option>
                          <option >10:00</option>
                           <option >11:00</option>
                           <option >12:00</option>
                           
                          
                        </select>
                     </label>
                     </td>
                <td>
                    <label>
                        <select   name="<portlet:namespace/>Meridiem" id="mAPM" style = "width: 100%; margin-left: -135%; margin-top: -2%; display: inline-block; " >
                   
                          <option value="Am" selected >Am</option>
                          <option >Pm</option>
                        </select>
                      </label>

                </td>
                 
            </tr>
           
           
           
            
            
		 <tr class="tr2" style="background: white;">
                <td> <label style=" margin-left: 3%; margin-top: -6%; " >
                    Deligating outstanding final Agreement task to project <br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;leader <span class = "required2">*</span>
                     <label>
                        <select   name="<portlet:namespace/>Final_agreement" style = "width: 17%;margin-left: 80%; margin-top: -13%;" required>
                          <option></option>
                          <option value="yes"  selected>Yes </option>
                          <option value="No" >No</option>
                        </select>
                      </label>
                  </label>
               </td>
               </tr>
   </table>
					
	</liferay-ui:panel>
	<liferay-ui:panel id="panel-c5" title="Comments History" collapsible="true"
			extended="true" >
			

	
					
	</liferay-ui:panel>
	
				<div style="display: grid; float: right; text-align: end;">
					
					<div>

<input type="submit" class="" style="background-color : #6fb3e0 ;padding : 10px 25px; color : white; border: none; margin-bottom: 7px;
    margin-top: 6px;"  Value="Save">
    <a type="button" style="background-color : #87b87f!important ;padding : 10px 25px; color : white; border: none;" id="quotecall" href="${homepage}" class="btn btn-sm btn-warning">Submit</a>
<!-- 	<input type="button" class="" style="background-color : #87b87f ;padding : 10px 25px; color : white; border: none;" onClick="validate()" value="Submit"> -->
    <input type="reset" class="" style="background-color : #d15b47 ;padding : 10px 25px; color : white; border: none;" Value="Cancel">
					</div>
				</div>
			</aui:form>
			</div> 