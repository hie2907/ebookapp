 <?php include 'include/headeradmin.php' ?>
 <?php include 'include/demo.php' ?>
      <!-- /. NAV TOP  -->
    <?php include 'include/sidebar.php' ?>
<div id="page-wrapper">
       <div id="page-inner">
          <div class="row">
            <div class="col-md-12">
              <h1 class="page-head-line">Publisher</h1>
              <button class="btn btn-inverse" style="margin-bottom: 25px;">
				<i class="glyphicon glyphicon-plus" >
				<a href="addpublisher.php" style="font-size: 20px; text-decoration: none; color: Black "> Add</a>
				</i>
			  </button>
    <?php
								if (isset($_GET['id_publisher'])) { 
									$deleteNews = $_GET['id_publisher'];
									$news_del = "DELETE FROM tbl_publisher WHERE id_publisher = '".$deleteNews."'";
									$news_del_path = "SELECT * FROM tbl_publisher WHERE id_publisher = '".$deleteNews."'";
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
									$cat = mysqli_query($conn, "SELECT * from tbl_publisher");
									$cat_id = mysqli_query($conn, "SELECT * from tbl_publisher");
									while($row = mysqli_fetch_array($cat))
									{ ?>
										<tr>
										<td><?php echo $row['id_publisher'] ?></td>
										<td><?php echo $row['name_publisher'] ?></td>
										<td>
											<?php 
												if ($demoOrLive == "1") { ?>
													<a href="editpublisher.php?id_publisher=<?php echo $row['id_publisher'];?>" class="btn btn-success"><i class="fa fa-edit"></i></a>
											<?php } else {?>
													<a href="" class="btn btn-success"><i class="fa fa-edit"></i></a>
											<?php } ?>
											&ensp;&ensp;
											<?php
												if ($demoOrLive == "1") { ?>
													<a href="?id_publisher=<?php echo $row['id_publisher'];?>" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this Publisher?')"><i class="fa fa-trash-o"></i></a>
											<?php } else {?>
													<a href="" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this Publisher?')"><i class="fa fa-user-times"></i></a>	
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
    <?php include 'include/footeradmin.php' ?> 