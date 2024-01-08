<?php include 'include/headeradmin.php' ?>
<?php include 'include/demo.php' ?>
<!-- /. NAV TOP  -->
<?php include 'include/sidebar.php' ?>
<div id="myTab" role="tablist">
	<div id="page-wrapper">
		<div id="page-inner">
			<div class="row">
				<div class="col-md-12">
					<h1 class="page-head-line">Book</h1>
					<button class="btn btn-inverse" style="margin-bottom: 25px;">
						<i class="glyphicon glyphicon-plus">
							<a href="addebook.php" style="font-size: 20px; text-decoration: none; color: Black ">
								Add</a>
						</i>
					</button>
					<?php
					if (isset($_GET['news_id'])) {
						$deleteNews = $_GET['news_id'];
						$news_del = "DELETE FROM tbl_ebook WHERE id_ebook = '" . $deleteNews . "'";
						$news_del_path = "SELECT * FROM tbl_ebook WHERE id_ebook = '" . $deleteNews . "'";
						$que_del_path = mysqli_query($conn, $news_del_path);
						$datas = mysqli_fetch_assoc($que_del_path);

						if ($datas['pdf'] != "") {
							unlink('ebook/' . $datas['pdf']);
						}

						if ($datas['photo'] != "") {
							unlink('image/' . $datas['photo']);
						}
						$que_del = mysqli_query($conn, $news_del);
						?>
						<script>
							window.location = 'comicadmin.php';
						</script>
						<?php
					}
					?>
					<table id="userList" class="table table-bordered table-hover table-striped">
						<thead class="thead-light">
							<tr>
								<th scope="col">#</th>
								<th scope="col">Name</th>
								<th scope="col">Image</th>
								<th scope="col">Date</th>
								<th scope="col">Status</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$employee = mysqli_query($conn, "SELECT * from tbl_ebook JOIN tbl_category ON tbl_ebook.cat_id = tbl_category.cat_id ORDER BY id_ebook DESC");
							while ($row = mysqli_fetch_array($employee)) { ?>
								<tr>
									<td>
										<?php echo $row['id_ebook'] ?>
									</td>
									<td>
										<?php
										$countText = strlen($row['title']);
										if ($countText > 50) {
											echo substr($row['title'], 0, 50) . '...';
										} else {
											echo $row['title'];
										}
										?>
									</td>
									<td><a href="<?php include 'image/baseurl.php'; ?><?php echo "image/" . $row['photo']; ?>"
											id="example1" title="<?php echo $row['title'] ?>">
											<img src="<?php include 'image/baseurl.php'; ?><?php echo "image/" . $row['photo']; ?>"
												height=130 width=100 id=myImg>
										</a>
									</td>
									<td>
										<?php echo $row['date']; ?>
									</td>
									<td>
										<?php
										if ($row['status_ebook'] == "1") { ?>

											<span class="badge badge-success-lighten"
												style="color: #0acf97; background-color: rgba(10,207,151,.18);">Approved </span>
										<?php } else { ?>

											<span class="badge badge-dark-lighten"
												style="color: #ef042f; background-color: rgba(49,58,70,.18);">Coming Soon</span>

										<?php }
										?>
									</td>
									<td>
										<?php
										if ($demoOrLive == "1") { ?>
											<a href="editbook.php?news_id=<?php echo $row['id_ebook']; ?>"
												class="btn btn-success"><i class="fa fa-edit"></i></a>
										<?php } else { ?>
											<a href="#view/" class="btn btn-success"><i class="fa fa-edit"></i></a>
										<?php } ?>
										&ensp;
										<?php
										if ($demoOrLive == "1") { ?>
											<a href="?news_id=<?php echo $row['id_ebook']; ?>" class="btn btn-danger"
												onclick="return confirm('Are you sure you want to delete this news?')"><i
													class="fa fa-trash"></i></a>
										<?php } else { ?>
											<a href="" class="btn btn-danger"
												onclick="return confirm('Are you sure you want to delete this Ebook?')"><i
													class="fa fa-trash"></i></a>
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
</div>

<?php include 'include/footeradmin.php' ?>