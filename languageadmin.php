 <?php include 'include/headeradmin.php' ?>
 <?php include 'include/demo.php' ?>
      <!-- /. NAV TOP  -->
    <?php include 'include/sidebar.php' ?>
      <!-- /. NAV SIDE  -->
 		<div id="page-wrapper">
       <div id="page-inner">
          <div class="row">
            <div class="col-md-12">
              <h1 class="page-head-line">Language</h1>
               <button class="btn btn-inverse" style="margin-bottom: 25px;">
				<i class="glyphicon glyphicon-plus" >
				<a href="addlanguage.php" style="font-size: 20px; text-decoration: none; color: Black "> Add</a>
				</i>
			  </button>
 			<?php
								if (isset($_GET['id_language'])) { 
									$deleteNews = $_GET['id_language'];
									$news_del = "DELETE FROM tbl_language WHERE id_language = '".$deleteNews."'";
									$news_del_path = "SELECT * FROM tbl_language WHERE id_language = '".$deleteNews."'";
									$que_del_path = mysqli_query($conn, $news_del_path);

									$que_del = mysqli_query($conn, $news_del);
									$que_del = mysqli_query($conn, $news_del);
								}
							?>
							<table id="userList" class="table table-bordered table-hover table-striped">
								<thead class="thead-light">
								<tr>
									<th scope="col" style="width: 10%;">#</th>
									<th scope="col" style="width: 70%;">Name</th>
									<th scope="col" style="width: 20%;">Action</th>
								</tr>
								</thead>
								<tbody>
								<?php
									$cat = mysqli_query($conn, "SELECT * from tbl_language");
									$cat_id = mysqli_query($conn, "SELECT * from tbl_language");
									while($row = mysqli_fetch_array($cat))
									{ ?>
										<tr>
										<td><?php echo $row['id_language'] ?></td>
										<td><?php echo $row['name_language'] ?></td>
										<td>
											<?php 
												if ($demoOrLive == "1") { ?>
													<a href="editlanguage.php?id_language=<?php echo $row['id_language'];?>" class="btn btn-success"><i class="fa fa-edit"></i></a>
											<?php } else {?>
													<a href="" class="btn btn-success"><i class="fa fa-edit"></i></a>
											<?php } ?>
											&ensp;&ensp;
											<?php
												if ($demoOrLive == "1") { ?>
													<a href="?id_language=<?php echo $row['id_language'];?>" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this Language?')"><i class="fa fa-trash-o"></i></a>	
											<?php } else {?>
													<a href="" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this Language?')"><i class="fa fa-user-times"></i></a>	
											<?php } ?>
										</td>
										</tr>
									<?php }
								?>
								</tbody>
							</table>
            </div>
          </div>
        </div>
        <!-- /. PAGE INNER  -->
      </div>
      <!-- /. PAGE WRAPPER  -->
<?php include 'include/footeradmin.php' ?> 