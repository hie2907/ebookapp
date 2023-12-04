<?php include 'include/connection.php';?>
<?php include 'sessions.php';?> 
 
 <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Ebook</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link
      href="http://fonts.googleapis.com/css?family=Open+Sans"
      rel="stylesheet"
      type="text/css"
    />

<script type="text/javascript">
	    $(document).ready(function() {
	        //Asegurate que el id que le diste a la tabla sea igual al texto despues del simbolo #
	        $('#userList').DataTable();
	    } );
	</script>
	<script type="text/javascript">
	    $(document).ready(function() {
	        //Asegurate que el id que le diste a la tabla sea igual al texto despues del simbolo #
	        $('#userList1').DataTable();
	    } );
	</script>
	<script src="assets/ckeditor/ckeditor.js"></script>
	<script>
		$(document).ready(() => {
		let url = location.href.replace(/\/$/, "");
	
		if (location.hash) {
			const hash = url.split("#");
			$('#myTab a[href="#'+hash[1]+'"]').tab("show");
			url = location.href.replace(/\/#/, "#");
			history.replaceState(null, null, url);
			setTimeout(() => {
			$(window).scrollTop(0);
			}, 400);
		} 

		//$('a[data-toggle="tab"]').on("click", function() { this is conflict with jquery, because have type "click"
		//$('a[data-toggle="tab"]').click(function() { this is not conflict because "click" globar function

		$('a[data-toggle="tab"]').click(function() {
			let newUrl;
			const hash = $(this).attr("href");
			if(hash == "#home") {
			newUrl = url.split("#")[0];
			} else {
			newUrl = url.split("#")[0] + hash;
			}
			newUrl += "/";
			history.replaceState(null, null, newUrl);
		});
		});
	</script>



  </head>
  <body>
    
    
    <!-- /. WRAPPER  -->
<div id="wrapper">
  <nav
        class="navbar navbar-default navbar-cls-top"
        role="navigation"
        style="margin-bottom: 0"
      >
        <div class="navbar-header">
          <button
            type="button"
            class="navbar-toggle"
            data-toggle="collapse"
            data-target=".sidebar-collapse"
          >
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">Admin Ebook</a>
        </div>

        <div class="header-right">
         
          <a href="include/logout.php" class="btn btn-danger" title="Logout"
            ><i class="fa fa-sign-out fa-2x"></i
          ></a>
        </div>
      </nav>