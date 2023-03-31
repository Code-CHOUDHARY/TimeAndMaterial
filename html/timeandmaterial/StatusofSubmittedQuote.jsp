<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="p"%>

 <script src="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone-min.js"></script>
        <link href="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

<portlet:defineObjects />




		<p:renderURL var="CustomerCmtAcp">
 		<p:param name="name" value="devkaran"></p:param>
		<p:param name="jspPage" value="/html/timeandmaterial/CustomerCmtAcp.jsp"></p:param>
		</p:renderURL> 

<style>
sup 
{
	color: red;
}

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
	
	.inpsize{
	height: 33px !important;
    width: 248px !important;
	
	}

</style>
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
<form  id="project" method="post" name="myForm" >
<div style= "border : 0.25px solid  #D3D3D3 ; background-color:  #F0FFFF; padding:8px;" id="flip1" ><span class="arrow1" ><span class="arrow-up1">&#x25BC;</span><span class="arrow-down1">&#9656;</span></span>Status of Submitted Quote </div>
<div  style="border : 0.25px solid  #D3D3D3 ;" id="panel1">
<br>
	<table style=" margin-left: 10%;">
		<tr>
			<td class="status" style="margin-left: 20%; text-align: right; ">
			<label class="status1"id='s5'>Status of Summited Quote<sup>*</sup></label>
			</td>
			<td style="margin-right: 40%";>
			<select class="inpsize"  id="selectcom" name="<portlet:namespace/>status_of_summited_quote"  >
			<option value="Select" >Select</option>
			<option value="Lost">Lost</option>
			<option value="Amend">Amend Bid</option>
			<option value="Update" selected>Update</option>
			<option value="Withdraw">Withdrawn</option>
			<option value="Customer Commitment Received"> Customer Commitment Received</option>
			
			</select>
			</td>
			
			<!-- extra column -->
			<td style="text-align:end" class="order_date"><label>Anticipated Order Date<sup>*</sup></label></td>
			<td class="order_date"><input type="text" id="inp1"></td>
			<td class="order_date"><span id="calender" style="margin-left: 31%;">&#128197;</span></td>
			<!-- extra column -->
		</tr>
<tr>
<td>
<label class="order_date" id='you'>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp  Win probability<sup>*</sup></label>
			
			<td style="margin-right: 40%"; class="order_date">
			<select  class="inpsize"   id="selectcom" name="<portlet:namespace/>Win_probability" >
			<option value="Select"  >Select</option>
			<option value="50">50</option>
			<option value="60" selected>60</option>
			<option value="75">75</option>
			<option value="85">85</option>
			<option value="100"> 100</option>
			
			</select>
			</td>
			
			<!-- extra column -->
			<td style="text-align:end" class="order_date"><label>Project Programme Start  Date<sup>*</sup></label></td>
			<td class="order_date"><input  type="text" id="inp2"></td>
			<td class="order_date"><span id="calender3" style="margin-left: 31%;">&#128197;</span></td>
			<!-- extra column -->
</tr>
	
		
		

		<!-- Pre-Order Information -->
		<tr>
			<td class="status" style="margin-left: 20%; text-align: right;">
			<label style=" font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;  font-size: 14px;">Pre-Order Information</label>
		  <td><i class="fa-solid fa-circle-plus" style="color: rgb(135, 42, 221);" ></i></td>
			
			
			
			<!-- extra column -->
			<td class="order_date"><label style="margin-left: 178px;">Project Program End Date<sup>*</sup></label></td>
			<td class="order_date"><input type="text" id="inp3"></td>
			<td class="order_date"><span id="calender4" style="margin-left: 31%;">&#128197;</span></td>
			<!-- extra column -->
			
		</tr>
		


		<!-- Customer Commitment Type Details -->
		<tr  class="selectdrop">
			<td  style="margin-left: 20%; text-align: right;">
			<label id="s6">Customer Commitment Type<sup>*</sup></label>
			</td>
			<td>
			<select  id="comtype" name="<portlet:namespace/>customer_commitment_type" required style="height: 37px;width: 250px;
}">
		 	<option  value="" selected>Select</option>
		 	<option value="LOI Received - Under Review">LOI  Received - Under Review</option>
		 	<option  value="PO Received - Under Review">PO Received - Under Review</option> 
			<option value="Verbal Commitment Received - Under Review">Verbal Commitment Received - Under Review</option>
			<option value="Email Received - Under Review">Email Received - Under Review</option>
			<option value="Sub-Contract Received - Under Review">Sub-Contract Received - Under Review</option>
			</select>
			</td>
		    </tr>
		    <tr>
		    <td  class ="attr"style="text-align: end">
		  <!--  Update LOI  -->
		    </td>
		    </tr>
		    
		<!-- Proposed Order Number & Value of the Commitment Details -->
		
		   <tr class="drop">
			 <td  style="margin-left: 20%; text-align: right;">
			<label id="s1">Proposed Order Number<sup>*</sup></label> 
			</td>
			 <td>
			<input type="text" name="<portlet:namespace/>proposed_order" placeholder="" id="p_order"    onkeypress="validate1()" >
			</td> 
			
			<td  style="margin-left: 80%; text-align: right;">
			<label  style="padding-left: 20px;" id="s2">Value of the Commitment(£)<sup>*</sup></label>
			</td>
			<td>
		 <input type="number" name="<portlet:namespace/>value_of_commitment" placeholder="" id="v_commit"  onkeypress="validate2()">
			</td>
		    </tr>
		  
		
		<!-- Receipt Method & Receipt Date Details -->
		
		    <tr class="drop">
			<td  style="margin-left: 20%; text-align: right;">
			<label>Receipt Method</label>
			</td>
			<td>
			<input type="text" name="<portlet:namespace/>receipt_method" id='r'  placeholder="" >
			</td>
			<td>
			<label  style="padding-left: 197px;" id="s3">Receipt Date<sup>*</sup></label>
			</td>
			<td>
			
			<input style="width: 83%;" type = "text" id="datepicker1" name="<portlet:namespace/>receipt_date" placeholder="DD/MM/YYYY"    >
							 <span id="calender1">&#128197; </span>
			</td>
		    </tr>

		<!-- customer deemed creditworthy for this project  Details -->
		
		  <tr class="drop">
		<td>
		<label id="s4">Is the proposed customer deemed creditworthy for this project<sup>*</sup></label>
		</td>
		<td>
		<select name="<portlet:namespace/>creditworthy_project"  style="height: 37px; width: 250px;}" id="credit">
		<option  value=""  selected >Select</option>
		<option>Yes</option>
		<option>No</option>
		</select>
		</td>
		</tr>
	    </table>

	 <!-- Order Acknowlege Documents-Po Received  Details -->
	 
	 <fieldset style="border: 2px groove #ffffffb6;  margin: 15px;" class="drop">
	<legend style="font-size: 13px; width: fit-content; margin: 9px; color: #64a9ce;">
	Order Acknowlege Documents-PO Received 
	</legend>
	
	<table>
		<tr>
		<td  style="margin-left: 20%; text-align: right;">
		<label>Quote Reference Number PQ8493-P &nbsp; &nbsp; &nbsp;</label>
		</td>
		<td>
		</td>
		<td style="margin-left: 20%; text-align: right;">
		<label>Date</label>
		</td>
		<td>
		<input type="text" name="<portlet:namespace/>date" placeholder="DD/MM/YYYY" id="dateofBirth1"  min="2023-01-01" max="2023-12-31">
		 <span id="calender2">&#128197; </span>
		</td>
		</tr>

			<!-- Company And Addresss   Details -->
			
		<tr>
		<td  style="margin-left: 20%; text-align: right;">
		<label>Company</label>
		</td>
		<td>
		<input type="text" name="<portlet:namespace/>company" placeholder="" id='company'  >
		</td>
		<td  style="margin-left: 20%; text-align: right;">
		<label>Address</label>
		</td>
		<td>
		<textarea id='address'  name="<portlet:namespace/>address"></textarea>
		</td>
		</tr>
		<tr>
		<td  style="margin-left: 20%; text-align: right;">
		<label>Attention of</label>
		</td>
		<td>
		<input type="text" name="<portlet:namespace/>attention_of" placeholder="" id='attention' >
		</td>
		<td  style="margin-left: 20%; text-align: right;">
		<label>Subject</label>
		</td>
		<td>
		<input type="text" name="<portlet:namespace/>subject" placeholder="" id='subject' >
		</td>
		</tr>

			<!-- Project Name Setting Panel for Teerth Techonospace & Scope of works   Details -->
			
		<tr>
		<td  style="margin-left: 20%; text-align: right;">
		<label>Project Name Setting Panel for Teerth Techonospace &nbsp; &nbsp; &nbsp;</label>
		</td>
		<td></td>
		<td  style="margin-left: 20%; text-align: right;">
		<label>Scope of works</label>
		</td>
		<td>
		<textarea  id='sow'  name="<portlet:namespace/>scope_of_works" placeholder=""></textarea>
		</td>
		</tr>

			<!-- Quoted Date & Proposed Works at Quadwave -->
			
		 <tr>
		<td style="margin-left: 20%; text-align: right;">
		<label>Quoted Date 13/03/2023 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</label>
		</td>
		<td></td>
		<td  style="margin-left: 20%; text-align: right;">
		<label>Proposed Works at Quadwave</label>
		</td>
		</tr>

			<!-- advise and Postal Code -->
			
		<tr>
		 <td  style="margin-left: 20%; text-align: right;">
		<label>We will advise you</label>
		</td>
		<td>
		<input type="text" name="<portlet:namespace/>we_will_advise" placeholder="" id='advice' >
		</td>
		<td  style="margin-left: 20%; text-align: right;">
		<label>Postal Code</label>
		</td>
		<td>
		<input type="text" name="<portlet:namespace/>postal_code" placeholder="" id='postcode' >
		</td>
		</tr>

			<!-- Correspond with role and name details -->
			
		<tr>
		<td  style="margin-left: 20%; text-align: right;">
		<label>Correspond with Role</label>
		</td>
		<td>
		<select name="<portlet:namespace/>correspond_with_role" style="height: 25px; width: 250px;" id="owner">
		<option value="">select</option>
		<option>Head of Sales</option>
		<option>Sales Leader</option>
		<option>Engineering Leader</option>
		<option>Commercial Leader</option>
		<option>Operations Leader</option>
		<option>Project Leader</option>
		<option>Admin</option>
		<option>Design Lead</option>
		<option>Project Lead</option>
		<option>External Consultant</option>
		<option>Sales Director</option>
		<option>Econsys National</option>
		<option>Account Lead</option>
		<option>Project Delegator</option>
		
		</select>
		</td>

		<td  style="margin-left: 20%; text-align: right;">
		<label>Correspond with name</label>
		</td>
		<td>
		<select name="<portlet:namespace/>correspond_with_name"  style="height: 25px; width: 250px;" id="co-owner">
		<option value="" selected>select an option</option>
		<option>Pradeep</option>
		<option>Rahul Singh</option>
		<option>Sanket</option>
		<option>Prakash</option>
		<option>Vinit</option>
		<option>Devkaran</option>
		
		</select>
		</td>
		</tr>

			<!-- Correspond with Email -->
			<tr>
		    <td  style="margin-left: 20%; text-align: right;">
		    <label>Correspond with Email</label>
		    </td>
			<td>
			<input type="email" name="<portlet:namespace/>email"	placeholder="">
			</td>
			</tr>
		  </table>
	    </fieldset>
</div>
	<!-- --Comment history-->
	<!-- -Comment history start -->
	
 		
	<div style="border : 0.25px solid  #D3D3D3 ; background-color: #F0FFFF; margin-top: 3px; padding:8px;"  id="flip2" >
	<span class="arrow2" ><span class="arrow-up2">&#x25BC;</span>
	<span class="arrow-down2">&#9656;</span></span>Comment History</div>
	<div style="border : 0.25px solid  #D3D3D3 ;" id="panel2" >

					
	</div>
	<!-- -Comment history end -->



	<!-- --Comment section- details--->
	   <div>
		<label id="s7">Comment<sup>*</sup></label></label>
		<textarea columns="10"  id ="comment" style="width: 99%; height: 79px; "  name="<portlet:namespace/>comment"  onkeypress="validate3()">
		</textarea>
	   </div>

	  <!-- --Button section- details--->
	  
	   <div style="float: right;">
	  <span><a class="btn btn-primary" href=""> New Link</a> </span> 
	   <span>
	   <button class="btn btn-primary" type="button" style="text-align: right;">Link Project</button>
	   </span> 
	   <span>
	   <input class="btn btn-info" type="button" value="Save">
	   </span> 
	   		<a type="button" href="${CustomerCmtAcp}" class="btn btn-sm btn-success">Submit</a>
	   <span> <input class="btn btn-danger" type="button" value="Cancel"></span>
	 </div>
	 <br>
   </form>
   
    <!--  Validation part---->
    
    <script>
    $(document).ready(function()
    {	
              $("#inp1").datepicker();
			  $('#calender').click(function() {
				  $("#inp1").focus();
			    
			  });
			  
			  $("#inp2").datepicker();
			  $('#calender3').click(function() {
				  $("#inp2").focus();
			    
			  });
    	
			  $("#inp3").datepicker();
			  $('#calender4').click(function() {
				  $("#inp3").focus();
			    
			  });
    	
			 
    	$('.drop').hide();
    	$('#comtype').change(function(){
    		
    		 var temp =$('#comtype').val();
    		console.log(temp);
    			switch(temp){
    			case "LOI Received - Under Review":$(".attr").html("Upload LOI");
				$('.drop').show();
    			break;
    			case "PO Received - Under Review":$(".attr").html("Upload PO");
				$('.drop').show();
    			break;
    			case "Email Received - Under Review":$(".attr").html("Upload email");
				$('.drop').show();
    			break;
    			case "Sub-Contract Received - Under Review":$(".attr").html("Upload sub_contract");
				$('.drop').show();
    			break;
    			default:$(".attr").html("");
    			}
    		 

    	});
    	
    	$('.selectdrop').hide();
    	$('#selectcom').change(function(){
    	
    		if($('#selectcom').val() == "Customer Commitment Received")
    		{
    			$('.selectdrop').show();
    			$('.order_date').hide();
    			$('.status1').css("margin-left","200px");
    			
    		}
    		else if($('#selectcom').val() == "Lost" ||$('#selectcom').val() == "Withdraw"||$('#selectcom').val() == "Select"||$('#selectcom').val() == "Amend" ){
    			$('.order_date').hide();
    			$('.status1').css("margin-left","363px");
    			$('.selectdrop').hide();
    		}
    		else if($('#selectcom').val() == "Update"){
    			$('.order_date').show();
    			$('.status1').removeAttr("style")
    			/* $('.selectdrop').hide(); */
    		}
    		else 
    		{
    			$('.selectdrop').hide();
    			$('.drop').hide();
    		}	
    	  });
    	
    	 $('.arrow-down1').hide();
		  $('.arrow-down2').hide();
	  $("#flip1").click(function(){
		      $('.arrow-up1,.arrow-down1').toggle();
	    $("#panel1").slideToggle("slow");
	  });
	  $("#flip2").click(function(){
	      $('.arrow-up2,.arrow-down2').toggle();
   $("#panel2").slideToggle("slow");
 });
    	  $("#datepicker1").datepicker();
    	  $('#calender1').click(function() 
    	{
    	    $("#datepicker1").focus();
    	  });
    	  
    	  $("#dateofBirth1").datepicker();
    	  $('#calender2').click(function() 
    	{
    	    $("#dateofBirth1").focus();
    	  });
    		
    	    
    
    	  
    	 
    	  $(function() {

    	  // Generic logic
    	  var toggleDropdown = function(owner) {
    	  // hasOwner is a boolean store
    	  var hasOwner = typeof owner !== typeof undefined && owner;

    	  // Use boolean to decide whether to disable/enable co-owner field
    	  $('#co-owner').prop('disabled', !hasOwner).val('');
    	  }

    	  // Trigger logic when #owner is updated
    	  $('#owner').on('change', function() {
    	  toggleDropdown($(this).val());
    	  });

    	  // Trigger logic on DOM ready
    	  toggleDropdown();
    	  });
    
    	});
    /*proposed order  // ar strUser = e.options[e.selectedIndex].value; */

    function validate1(){
   	var p_order=document.getElementById('p_order').value;
   	var regex = /^[a-zA-Z0-9]+$/;
   	 if(!regex.test(p_order))
   	 {
   		 alert("Input can only contain letters and digits");
   }
   }
    
    /*value of  commitment  */
    function validate2(){
   	var v_commit=document.getElementById('v_commit').value;
   	var regex=/^[0-9]+$/;
   	 if(!regex.test(v_commit))
   	 {
  		 alert("Enter only numbers");
   }
   }
    
    /*comment  */
    function validate3(){
   	var comment=document.getElementById('comment').value;
   	var regex1=/^[A-Za-z0-9 ]+$/;
   	 if(!regex.test(v_commit))
   	 {
  		 alert("only Alphabet and Number are allowed..");
   }
   }
      
 
    
    function Validate(event)
    {
        var e = document.getElementById("credit");
        var strUser = e.options[e.selectedIndex].value;
        var strUser1 = e.options[e.selectedIndex].text;
        var p_order=document.getElementById('p_order').value;
        var v_commit =document.getElementById('v_commit').value;
        var datepicker1=document.getElementById('datepicker1').value;
        var p_order=document.getElementById('p_order').value;
        var p_order=document.getElementById('p_order').value;
        
        if(strUser==0 || p_order=="" || v_commit == "" || datepicker1 == "")
        {
            alert("Please fix the errors which are marked in red");
            event.preventDefault();
        }
        else  if(p_order != "")
        {
            alert("Please fix the errors which are marked in red");
        }
    	}
    	
    
    </script>
    
    

