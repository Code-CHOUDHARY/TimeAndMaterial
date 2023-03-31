
<%@page import="java.util.List" %>
<%@page import="com.liferay.sample.model.TimeAndMaterialTable"%>
<%@page import="com.liferay.sample.service.TimeAndMaterialTableLocalServiceUtil"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="p"%>

 <% List<TimeAndMaterialTable> tablelist = TimeAndMaterialTableLocalServiceUtil.getTimeAndMaterialTables(-1,-1); %>
<style>
table{
border: 1px solid #E1ECF7;
border-radius: 5px;
}
      th{
        background: #E1ECF7;
      }
  #quotecall {
  background: none!important;
	color: #0af !important;
	border: none!important;
	padding: 0!important;
	font: inherit!important;
	cursor: pointer!important;
	outline: inherit!important;
  
  }    
<!-- </style>

    <style> -->
      
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
    left: 238px;
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
<body>

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

    <div class="grid-container">
        <div class="grid-item task">
            <span>Task</span>
            <p style="width: 54px; height: 54px;line-height: 54px; margin-left: 15%; ">45</p>
            <a href="#">Now</a> <br>
            <a href="#">Later</a>
        </div>
        <div class="grid-item review">
            <span>Reviews</span>
            <p style="width: 54px; height: 54px;line-height: 54px; margin-left: 15%;">45</p>
            <a href="#">Now</a> <br>
            <a href="#">Later</a>
        </div>
        <div class="grid-item approvals">
            <span>Approvals</span>
            <p style="width: 54px; height: 54px;line-height: 54px; margin-left: 15%;">45</p>
            <a href="#">Now</a> <br>
            <a href="#">Later</a>
        </div>
        <div class="grid-item buddytask">
            <span>Buddy Tasks</span>
            <p style="width: 54px; height: 54px;line-height: 54px;     margin-left: 17%;">45</p>
            <a href="#">Now</a><br>
            <a href="#">Later</a>
        </div>
    </div></div>
    
      
<table id="MyTable" class="display" cellspacing="0" width="100%">  
        <thead>  
            <tr>  
                <th >Quote Ref</th>  
                <th>Job Reference</th>  
                <th>Customer</th>  
                <th>Site Name</th>  
                <th>Project</th>  
                <th>Task</th>
                <th>Anticipated Date Order</th>
                <th>Receipt Date</th>
                <th>Type</th>
                <th>Action</th>
            </tr>  
        </thead>   
        <tbody>  
        <%for(TimeAndMaterialTable form : tablelist)
      {%>
            <tr>  
                <td><%=form.getQuoteno() %></td>  
                <td>-</td>  
                <td><%=form.getCustomer_name() %></td>  
                <td><%=form.getSiteName() %></td>  
                <td><%=form.getProject_Name()%></td>  
                <td>
		<a id="quotecall" href="${Quoteform}" class="btn btn-sm btn-warning">RTQ</a></td>  
                <td><%=form.getAnticipateDate() %></td>  
                <td>-</td>  
                <td><img title="Time &amp; Material" src="https://rcc-test.econsys.io/ace-theme/images/icons/t-and-m-icon.png"></td>  
                <td><!-- <liferay-ui:search-container-column-jsp
align="right"
path="/html/portlet/enterprise_admin/user_action.jsp"
/> --></td>  
            </tr> 
            <%} %>             
        </tbody>  
    </table>  
    </body>	
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.js"></script>  
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script>
$(document).ready(function() {  
    $('#MyTable').DataTable( {  
        initComplete: function () {  
            this.api().columns().every( function () {  
                var column = this;  
                var select = $('<select><option value=""></option></select>')  
                    .appendTo( $(column.footer()).empty() )  
                    .on( 'change', function () {  
                        var val = $.fn.dataTable.util.escapeRegex(  
                            $(this).val()  
                        );  
                //to select and search from grid  
                        column  
                            .search( val ? '^'+val+'$' : '', true, false )  
                            .draw();  
                    } );  
   
                column.data().unique().sort().each( function ( d, j ) {  
                    select.append( '<option value="'+d+'">'+d+'</option>' )  
                } );  
            } );  
        }  ,
    scrollY: '50vh',
    scrollCollapse: true
    } );  
} ); 
</script>
