<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['bpmsaid']==0)) {
  header('location:logout.php');
  } else{

if(isset($_POST['submit']))
  {
    $sername=$_POST['sername'];
    $cost=$_POST['cost'];
   

     
    $query=mysqli_query($con, "insert into  tblservices(ServiceName,Cost) value('$sername','$cost')");
    if ($query) {
    	echo "<script>alert('Service has been added.');</script>"; 
    		echo "<script>window.location.href = 'add-services.php'</script>";   
    $msg="";
  }
  else
    {
    echo "<script>alert('Something Went Wrong. Please try again.');</script>";  	
    }

  
}
  ?>
<!DOCTYPE HTML>
<html>
<head>
<title>Út Khờ Salon | Thêm dịch vụ</title>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		 <?php include_once('includes/sidebar.php');?>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
	 <?php include_once('includes/header.php');?>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="jumbotron">
					<div class="container">
						<h1 style="color:#5dc1bd; font-size: 36px;">Thêm dịch vụ</h1>
						<p>Điền thông tin bên dưới để thêm các dịch vụ hiện có và sắp có. </p>
						<p><a class="btn btn-primary btn-md" href="../services.php" role="button">Tìm hiểu thêm &raquo;</a></p>
					</div>
				</div>
				<div class="forms">
					<div class="form-grids row widget-shadow" data-example-id="basic-forms" style="margin-top: -5%; border-radius: 20px;"> 
						<div class="form-title">
							<h4>Dịch vụ:</h4>
						</div>
						<div class="form-body">
							<form method="post">
								<p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>

  
							 <div class="form-group"> <label for="exampleInputEmail1">Tên dịch vụ</label> <input type="text" class="form-control" id="sername" name="sername" placeholder="Dịch vụ" value="" required="true"> </div> <div class="form-group"> <label for="exampleInputPassword1">Giá tiền</label> <input type="text" id="cost" name="cost" class="form-control" placeholder="Giá tiền" value="" required="true"> </div>
							
							  <button type="submit" name="submit" class="btn btn-success btn-lg" style="margin-left: 90%;">Thêm</button> </form> 
						</div>
						
					</div>
				
				
			</div>
		</div>
	</div>
	<!-- FOOOTER -->
		<?php include_once('includes/footer.php');?>

	<!-- Classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.js"> </script>
</body>
</html>
<?php } ?>