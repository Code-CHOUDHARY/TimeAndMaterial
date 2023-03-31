<%-- <%@page import="java.util.Collections"%>
 --%><%-- <%@page import="com.liferay.sample.service.CommentHistoryLocalServiceUtil"%>
<%@page import="com.liferay.sample.model.CommentHistory"%>
<%@page import="com.liferay.sample.model.CommercialReviewTable"%>
<%@page import="com.liferay.sample.service.CommercialReviewTableLocalServiceUtil"%> --%>
<%-- <%@page import="java.util.List"%> --%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>

<portlet:defineObjects />
<portlet:resourceURL var="commercialReviewForm"></portlet:resourceURL>

<liferay-portlet:renderURL var="permissionToCommencePage">
	<portlet:param name="jspPage" value="/html/commercialreview/permissionToCommencePage.jsp"></portlet:param>
</liferay-portlet:renderURL>

<style>
	.section {
		font-family: serif;
		font-weight: lighter;
	}
	input,textarea{
		outline: 0.1px gray solid; 
	}
	label{
		text-align: right;
	}
	.required{
		color: red;
	}
	.accordion-header,.accordion-header2 {
	  background-color: #e3f2fd;
 	  padding: 10px ; 
	  cursor: pointer;
	  color: #2196f3;
	  outline: 0.1px gray solid;
  	}
  	.commercial-review-head{
  		 padding: 10px 10px 5px 10px; 
  	}
  	.commercial-review-form{
  		margin-bottom: 5px;
  	}
	.accordion-panel,.accordion-panel2 {
	  display: none;
	  outline: 0.1px  gray solid; 
	  padding: 5px 20px 5px 20px;
	}
	.save-btn,.submit-btn,.skip-btn,.reject-btn,.reset-task-btn,.cancel-btn,.delegate-btn{
		padding: 10px;
		border-radius:0px;
		border: none;
		color: white;
	}
	.red-outline{
		outline:0.2px red solid;
	}
	.gray-outline {
		outline:0.2px red solid;
	}
	#border{
		border: 0.2px solid rgba(128,128,128,0.5);
		padding: 5px;
	}
	#backcolor {
	 	background: #f5f5f5  ;
	}
	#grid-container {
		display: grid;
		grid-template-columns : 50% 30% 10% 10%;
		margin-bottom: 1px;
	}
	#grid-item{
		padding: 1px;
		border: 0.2px solid rgba(128,128,128,0.5);
	}
	#grid-items {
		border: none;
	}
	.grid-item4 {
		display: flex;
		justify-content : center;
		align-items: center;
		align-content: center;
		border: 0.2px rgba(128,128,128,0.5) solid;
	}
	.link-to-file-btn-div, .link-to-dropbox-btn-div{
		margin-bottom: 5px;
		
	}
	.link-btn-div{
		margin-top: 40px;
		margin-bottom: 20px;
	}
	.link-to-file-btn, .link-to-dropbox-btn{
		background: #ab47bc;
		padding: 5px;
		border: none;
		color: white;
		margin-bottom: 5px;
	}
	.browse-btn{
		padding: 5px;
		color: #2196f3;
		background: transparent;
		border: 0.2px #2196f3 solid;
	}
	.default-file-input {
		display: none;
	}
	.delegate-btn{
		background-color: #66bb6a;
	}
	.fa-calendar{
	/* 	transform: rotateX(-30deg); */
	}
	
	.comment-timeline{
		padding: 10px;
		display: grid;
		grid-template-columns: min-content 1px max-content;
	}
	.current-user-name {
		text-align: right;
		padding: 0px 15px;
		color: #ab47bc;
		font-weight: bold;
	}
	.comments-on-time{
		padding: 0px 5px 5px 20px;
	}
	.comments-on-time > .operation-and-time{
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
		background: #2196f3;
		height: 12px;
		width: 12px;
		border-radius: 50%;
	}
	.stage{
		color: #2196f3;
	}
	.permmission-to-commencement-page {
		display: none;
	}
</style>

	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	  <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>

<%-- 
<%
	List<CommercialReviewTable> com =  CommercialReviewTableLocalServiceUtil.getCommercialReviewTables(-1, -1);
%>

<h2> Companyt name : <%=com.get(0).getCr_company() %></h2> --%>
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
<section class="section">
	<form name="reviewForm" id="reviewForm"  method="post" >
 		<div id="accordion commercial-review-form" class="accordion" style="margin-bottom: 5px;">
 			<div class="accordion-header commercial-review-head">
 				<p style="font-weight: bold;"> <span class="arrow-down">&#9662;</span> <span class="arrow-right">&#9656;</span>&nbsp; Commercial review of Customer Commitment</p>
 			</div>
  			<div class="accordion-panel">
  				<strong>Reminder : enquiry from customer requested work necessary  <span style="color: #f9a825 ;">Weekends</span> </strong>
  				<br><br>
  				<div id="grid-container">
  					<div id="grid-item" style="border:none;text-align: right;">
  						<p style="padding-right: 15px;">
  							The Sales Lead has identified that there are variances between the commitment received form the client and the final quote. 
  							 Please review the notes in the previous section and / or review the proposed terms and conditions received from the client
  							 and prepare a response to the client detailing the variances and proposing revisions acceptable to the company. 
  						<br>
  						<br>
  						Warning : Progressing works without first reaching a demonstrable agreement with the client over the scope timescale terms and conditions 
  						or value may lead to 'acceptable by action' and significantly increase risk to the company<span class="required">*</span>
  						</p>
  					</div>
  					<div id="grid-item">
						
  					</div>
  					<div id="grid-item">
  						<div class="drag-n-drop" style="text-align: center; padding: 10px ;width: fit-content;block-size: fit-content;height: 86%;">
  							<span class="file-upload-icon"><img alt="upload-icon" src="<%= request.getContextPath()%>/img/cloud-computing.png" style="width: 30%;object-fit: contain;"/>  </span>
  							<p >Drag files here <br>or </p>
  							 <span class="browse-files"> <input type="file" class="default-file-input" /> <button type="button" name="browseBtn" class="browse-btn">Browse Files</button></span>
  						</div>
  					</div>
  					<div id="grid-item grid-item4" style="border: 0.2px rgba(128,128,128,0.5) solid; ">
  						<div class="link-btn-div">
  							<div class="link-to-file-btn-div" style="text-align: center; margin-bottom: 5px;"><button type="button" value="" class="link-to-file-btn" style="padding: 5px;width: 90%;">Link to File</button></div>
  							<div class="link-to-dropbox-btn-div" style="text-align: center;"><button type="button" value="" class="link-to-dropbox-btn" style="padding: 5px; width: 90%;">Link to DropBox</button></div>
  						</div>
  					</div>
  				</div>
  				<div  id="grid-container">
  					<div id="grid-items" class="delegate-btn-div" style="text-align: right; margin-top: 1px;border:none;">
	  					<label for="delegateBtn" style="display: inline;">Delegate task to RCC</label>
	  					
	  				</div>
	  				<liferay-portlet:renderURL var="delegatePage">
	  					<portlet:param name="jspPage" value="/html/commercialreview/delegatePage.jsp"></portlet:param>
	  				</liferay-portlet:renderURL>
  					<div  id="grid-items">
  						<a href="<%=delegatePage.toString()%>"><button type="button" id="delegateBtn" class="delegate-btn" style="text-align: left;">Delegate</button></a>
  					</div>
  					<div  id="grid-items"></div>
  					<div  id="grid-items"></div>
  				</div>
  				
  			
 				<fieldset style="border: 0.1px  gray solid;border-top: 0.1px  gray solid; padding: 3px; ">
					<legend style="font-size: 14px; width: fit-content;padding: 0px 3px 0px 3px; " ></legend>
					<div class="container-fluid">
					  <div class="row-fluid">
					    <div class="span8">
					      <table >
					      	<!-- Row 1 -->
					      	<tr >
					      		<td colspan="" style="text-align: left;overflow: hidden;white-space: nowrap;" >
					      			<p>Quote Reference NumberP8141Q<p>
					      		</td>
					      		<td>
					      			
					      		</td>
					      		<td >
									<label style="display: block;" class="lable-name">Date</label>
								</td>
								<td style="overflow:visible; white-space: nowrap;">
									<input type="text" name="date" class="user-birth-date" id="date" placeholder="MM/DD/YYYY" >&nbsp;
									<img class="fa-calendar" alt="calender-icon" src="<%= request.getContextPath()%>/img/calendar-icon-png-4116-Windows.ico" style="width: 20px;"/>
								</td>
					      	</tr>
					      	
					      	<!-- Row 2 -->
					      	<tr>
					      		<td>
					      			<label style="display: block;">Company</label>
					      		</td>
					      		<td>
					      			<input type="text"  name="company" class="company " id="company" placeholder="Company"  style="">
					      		</td>
					      		<td >
					      			<label style="display: block;"   class="lable-name" >Address</label>
					      		</td>
					      		<td style="width: 300px;">
									<textarea rows="4" cols="10" placeholder="Address" name="address" id="address" style="width: 300px;"></textarea>
					      		</td>
					      	</tr>
					      	
					      	<!-- Row 3 -->
					      	<tr>
					      		<td>
					      			<label style="display: block;">Attention of</label>
					      		</td>
					      		<td>
					      			<input type="text"  name="attentionOf" class="attention-of " id="attentionOf" placeholder="Attention of"  style="">
					      		</td>
					      		<td>
					      			<label style="display: block;">Subject</label>
					      		</td>
					      		<td>
					      			<input type="text"  name="subject" class="subject " id="subject" placeholder="Subject"  style="">
					      		</td>
					      	</tr>
					      	
					      	<!-- Row 4 -->
					      	<tr>
					      		<td colspan="" >
					      			<p style="text-align: right;">Project Name econsysV5<p>
					      		</td>
					      		<td>
					      			
					      		</td>
					      		<td >
					      			<label style="display: block;" class="lable-name" >Scope of work</label>
					      		</td>
					      		<td style="width: 300px;">
									<textarea rows="4" cols="20" placeholder="Scope of work" name="scopeOfWork" id="scopeOfWork" style="width: 300px;"></textarea>
					      		</td>
					      	</tr>
					      	
					      	<!-- Row 4 -->
					      	<tr>
					      		<td>
					      			<label style="display: block;">Proposed Order Number</label>
					      		</td>
					      		<td>
					      			<input type="text"  name="proposedOrderNumber" class="proposed-order-number " id="proposedOrderNumber" placeholder="Proposed Order Number"  style="">
					      		</td>
					      		<td colspan="2">
					      			<p style="padding-left: 5px;">Quoted Date 20/10/2022<p>
					      		</td>
					      		<td>
					      			
					      		</td>
					      		
					      	</tr>
					      	
					      	<!-- Row 5 -->
					      	<tr>
					      		<td>
					      			<label style="display: block;">Postal Code</label>
					      		</td>
					      		<td>
					      			<input type="tel"  name="postalCode" class="postal-code " id="postalCode" placeholder="Postal Code" style="" maxlength="5" min="10">
					      		</td>
					      		<td >
					      			
					      		</td>
					      		<td>
					      			
					      		</td>
					      		
					      	</tr>
					      	
					      	<!-- Row 6 -->
					      	<tr>
								<td >
					      		</td>
					      		<td colspan="2" style="text-align: center;">
					      			<a href="#">Preview Document</a>
					      		</td>
		
					      		<td colspan="" style="text-align: left;">
					      			<a href="#">Generate Document</a>
					      		</td>
					      		<td>
					      		
					      		</td>
					      	</tr>
					      	
					      </table>
					    </div>
					    <div class="span4">
					    
					    </div>
					  </div>
					</div>
				</fieldset>
			</div>
  		</div> 
  		
<%--   		<%
  			List<CommercialReviewTable> commercialReview = CommercialReviewTableLocalServiceUtil.getCommercialReviewTables(-1, -1);
  		/* CommentHistory commentHis =  (CommentHistory)resourceRequest.getAttribute("commentHis"); */
  			List<CommentHistory> commentHis = CommentHistoryLocalServiceUtil.getCommentHistories(-1, -1);
  			/* Collections.reverse(commentHis); */
  			
  		%> --%>
 		
		<div class="accordion" style="margin-top: 0px; margin-bottom: 5px">
			<div class="accordion-header2" style="font-weight: bold;padding: 10px 10px 5px 10px; ">
				<p><span class="arrow-down2">&#9662;</span><span class="arrow-right2">&#9656;</span>&nbsp; Comment History</p>
			</div>
			<div class="accordion-panel2">
		
			<div class="comment-timeline">
<%-- 				<%
					for(CommentHistory com : commentHis) {
				%> --%>
				<div class="current-user-name">
					<p ></p>
				</div>
				<div class="verticle-timeline">
					<div class="timeline-point"></div>
				</div>
				<div class="comments-on-time">
					<p class="operation-and-time"> <span class="stage"></span> on</p>
					<p></p>
				</div>
			</div>
			
				<%-- <table style="border: 0.2px gray solid; width: 190%; padding: 10px;" >
					<tr style="background: #0288d1;color: white;border: 0.2px gray solid;">
						<th id="border">No.</th>
						<th id="border">Company</th>
						<th id="border">Comments</th>
					</tr>
					<%
						int i = 0;
						for(CommercialReviewTable cr : commercialReview){
							i++;
					%>
					<tr style="text-align: center;border: 0.2px gray solid;" id="backcolor">
						<td id="border" >
							<%=i %>
						</td>
						<td id="border">
							<%=cr.getCr_company() %>
						</td>
						<td id="border">
							<%=cr.getComment() %>
						</td>
					</tr>
					<%
						}
						i=0;
					%>
				</table> --%>
			</div>
		</div>
		
		<div class="comment-section" style="margin-top: 0;">
			<label style="display: block; text-align: left;" class="comment-label" >Comments<span class="required">*</span></label>
			<textarea rows="4" style="width: 99%;" name="comments" id="comments"></textarea>
		</div>
		
		<div id="buttons" style="float: right; " class="mt-2">
			<button type="button" value="Save" class="save-btn" style=" background-color: #039be5 ;">Save</button>
			<button type="button" value="Submit" id="submitBtn" class="submit-btn" style="background-color: #66bb6a;">Submit</button>
			<button type="button" value="Skip" id="skipBtn" class="skip-btn" style=" background-color: #f9a825;">Skip</button>
			<a class="permmission-to-commencement-page" id="permmissiontocommencementpage" href="<%=permissionToCommencePage.toString()%>">hello</a>
			<button type="button" value="Reject" class="reject-btn" style="background-color: #f4511e;">Reject</button>
			<button type="reset" value="Reset Task" class="reset-task-btn" style="background-color: #f4511e;">Reset Task</button>
			<button type="button" value="Cancel" class="cancel-btn" style="background-color: #f4511e;">Cancel</button>
		</div>
	</form>
</section>


<script>
$(document).ready(function() {

	var currentdate = new Date();  
	var datetime = currentdate.getDate() + "/"
	                + (currentdate.getMonth()+1)  + "/" 
	                + currentdate.getFullYear() + "  "  
	                + currentdate.getHours() + ":"  
	                + currentdate.getMinutes() + ":" 
	                + currentdate.getSeconds();
	
	console.log(datetime);

	
	$(".arrow-down").hide();
	$(".arrow-down2").hide();
	 $('.accordion-header').click(function() {
		  $(".arrow-right, .arrow-down").toggle();
		    $(this).next('.accordion-panel').slideToggle();
		    
		     $(this).toggleClass('active'); 
		  });
	 
	 $('.accordion-header2').click(function() {
		  $(".arrow-right2, .arrow-down2").toggle();
		    $(this).next('.accordion-panel2').slideToggle();
		    
		     $(this).toggleClass('active'); 
		  });
	 
	 $(".browse-btn").on("click",function(){
		 $(".default-file-input").click();
	 });
	
	  $("#date").datepicker();
	  $('.fa-calendar').click(function() {
	    $("#date").focus();
	  });
	  
	  
	 
	  /*error alert box*/
	  function errorMessage(){
		  
		  alert("Please enter valid details");
		  //event.preventDefault();
	  }
	  /*change border color*/
	  function borderColor(id, color){
		  //console.log("id and color : "+id+" , "+color);
			 $("#"+id).css("outline","0.2px "+color+" solid");
		}
	  
	  
	  function sendDataToBackend(storeInDatabase,saveAndSkipToNextStage) {
			var comments = document.forms["reviewForm"]["comments"].value;
			
	        if(comments == ""){
				 /* $("#comments").css("outline","0.2px red solid"); */
          	    borderColor("comments", "red");
          	    errorMessage();
              }
    	    else {
    		    borderColor("comments", "gray");
    		    /* $("#comments").css("outline","0.2px gray solid"); */
                    AUI().use('aui-io-request', function(A){
                            A.io.request('<%=commercialReviewForm.toString()%>', {
                                method: 'post',
                                data: {
                                      <portlet:namespace />currentDate: datetime,
                                      <portlet:namespace />storeInDatabase: storeInDatabase,
                                      <portlet:namespace />saveAndSkipToNextStage: saveAndSkipToNextStage,
                                  },
                                form :{
                                    id: 'reviewForm'
                                },
                                on : {
                                        success: function() {
                                    	    var response = this.get('responseData')
                                            /* alert(this.get('responseData')); */
                                            if(response == "redirect"){
                                          	 /*  $("#permmissiontocommencementpage").click(); */
											/* alert("redirected" +response);  */
											window.location.href = "<%=permissionToCommencePage.toString()%>";
                                            }else {
                                          	  alert("same : "+response);
                                          	  document.location.reload();
                                            }
                                          
                            	}
                        	}
                    	});
                	});
                }
	}
	  
	  $("#submitBtn").on("click",function(){
		  sendDataToBackend(true,false);
	  });
	  
	  $("#skipBtn").on("click",function(){
		  sendDataToBackend(false,true);
	  });
	  
	<%--   $("#submitBtn").on("click",function(){
		  
			var date = document.forms["reviewForm"]["date"].value;
			var company = document.forms["reviewForm"]["company"].value;
			var address = document.forms["reviewForm"]["address"].value;
			var attentionOf = document.forms["reviewForm"]["attentionOf"].value;
			var subject = document.forms["reviewForm"]["subject"].value;
			var scopeOfWork = document.forms["reviewForm"]["scopeOfWork"].value;
			var proposedOrderNumber = document.forms["reviewForm"]["proposedOrderNumber"].value;
			var postalCode = document.forms["reviewForm"]["postalCode"].value;
			var comments = document.forms["reviewForm"]["comments"].value;
			if(date ==  "" && company ==  "" && address ==  "" && attentionOf ==  "" && subject ==  "" && scopeOfWork ==  "" && proposedOrderNumber ==  "" && postalCode ==  "" && comments == "" ){
				errorMessage();
				$("input,textarea").css("outline","0.2px red solid");
			}
			else {
				$("input,textarea").css("outline","0.2px gray solid");
	            if(!date.match("[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}")){
	                /* $("#date").css("outline","0.2px red solid"); */
	                borderColor("date", "red");
	                errorMessage();
	            }
	            else {
	            	 borderColor("date", "gray");
	                if(!company.match(/^[A-Za-z\s]+$/)){
	                   /*  $("#company").css("outline","0.2px red solid"); */
	                    borderColor("company", "red");
		                errorMessage();
	                }
	                else {
	            	    /* $("#company").css("outline","0.2px gray solid"); */
	            	    borderColor("company", "gray");
	                    if(!address.match(/^[a-zA-Z0-9\s,/:.'-]{3,}$/)){
	                        /* $("#address").css("outline","0.2px red solid"); */
	                        borderColor("address", "red");
	  	                	errorMessage();
	                    }
	                    else {
	                  	  /* $("#address").css("outline","0.2px gray solid"); */
	                  	  borderColor("address", "gray");
	                        if(!attentionOf.match(/^[A-Za-z\s]+$/)){
	                           /*  $("#attentionOf").css("outline","0.2px red solid"); */
	                            borderColor("attentionOf", "red");
	                            errorMessage();
	                        }
	                        else{
	                        	borderColor("attentionOf", "gray");
	                            if(!subject.match(/^[A-Za-z\s]+$/)){
	                                /* $("#subject").css("outline","0.2px red solid"); */
	                                borderColor("subject", "red");
	                                errorMessage();
	                            }
	                            else {
	                        	    borderColor("subject", "gray");
	                        	    /* $("#subject").css("outline","0.2px gray solid"); */
	                                if(!scopeOfWork.match(/^[A-Za-z\s]+$/)){
	                                    /* $("#scopeOfWork").css("outline","0.2px red solid"); */
	                                    borderColor("scopeOfWork", "red");
	                                    errorMessage();
	                                }
	                                else {
	                              	  borderColor("scopeOfWork", "gray");
	                              	  /* $("#scopeOfWork").css("outline","0.2px gray solid"); */
	                                    if(!proposedOrderNumber.match(/^[A-Z0-9]+$/)){
	                                        /* $("#proposedOrderNumber").css("outline","0.2px red solid"); */
	                                        borderColor("proposedOrderNumber", "red");
	                                        errorMessage();
	                                    }
	                                    else {
	                                    	 borderColor("proposedOrderNumber", "gray");
	                                    	/* $("#proposedOrderNumber").css("outline","0.2px gray solid"); */
	                                        if(!postalCode.match(/^[0-9]+$/)){
	                                           /*  $("#postalCode").css("outline","0.2px red solid"); */
	                                            borderColor("postalCode", "red");
	                                            errorMessage();
	                                        }
	                                        else {
	                                    	    /* $("#postalCode").css("outline","0.2px gray solid"); */
	                                    	    borderColor("postalCode", "gray");
	                                    	    if(comments == ""){
			                                            /* $("#comments").css("outline","0.2px red solid"); */
		                                    	    borderColor("comments", "red");
		                                    	    errorMessage();
		                                        }
	                                    	    else {
	                                    		    borderColor("comments", "gray");
	                                    		    /* $("#comments").css("outline","0.2px gray solid"); */
	  	                                            AUI().use('aui-io-request', function(A){
	  	                                                    A.io.request('<%=commercialReviewForm.toString()%>', {
	  	                                                        method: 'post',
	  	                                                        form :{
	  	                                                            id: 'reviewForm'
	  	                                                        },
	  	                                                        on : {
	  	                                                                success: function() {
	  	                                                                    alert(this.get('responseData'));
	  	                                                                  document.location.reload();
	  	                                                    	}
	  	                                                	}
	  	                                            	});
	  	                                        	});
	  	                                        }
	                                        }
	                                    }
	                                }
	                            }
	                        }
	                    }
	                }
	            }
			}
			
	  }); --%>
	  
	  
	});
	
	</script>