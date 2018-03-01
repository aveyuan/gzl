<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8"> 
   <title>流程详细页面</title>
   <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
   <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<h1 align="center" class="text-danger">OA工作流管理系统</h1>
<br><br>
	
<div class="container">
   <div class="row" >
			<form class="bs-example bs-example-form" role="form" action="" method="get">
				<div class="row">
					<div class="col-lg-12">
						<div class="input-group">
							<input type="text" value="<?php 
								 if(!empty($_GET['keys'])){
								  echo $_GET['keys'];
								 }else{
								 
								 }
								?>" placeholder="请输入公司、流程类别、流程名称查询" class="form-control" name="keys">
							<span class="input-group-btn">
								<button class="btn btn-default"  type="submit" name="subs">
									查询
								</button>
							</span>
						</div><!-- /input-group -->
					</div><!-- /.col-lg-6 -->
				</div><!-- /.row -->
			</form>  
			<br> 	
			<?php
			include "config.php"; 
			 if(!empty($_GET['keys'])){
			 $w="`流程类别` like '%".$_GET['keys']."%' or  `流程名称` like '%".$_GET['keys']."%' or  `公司` like '%".$_GET['keys']."%'";	
			 }else{
			 $w=1;
			 }
			$sql="select * from oa_lcb where $w ";  
			$result=mysql_query($sql); 
			
			 ?>
			 	<p class="text-info text-center"> <?php  echo '共有'.mysql_num_rows($result).'条记录'; ?> </p>	
			 <table class="table" width="100%" border="1">
			   <thead>
			      <tr align="left">
			     <th >ID</th>
			     <th>流程类别</th>
			      <th>流程名称</th>
			     <th>主责部门</th>
			     <th>流程状态</th>			     
			     <th>操作</th>    
			      </tr>
			   </thead>
			   <tbody>
			 <?php  while($rs=mysql_fetch_assoc($result)){ 
			?> 
			      <tr align="left">
			    <td><?php echo $rs['ID']?></td>
			

			    <td><?php echo $rs['流程类别']?></td>
			    <td>
			    	<a target=_blank href="detail.php?id=<?php echo $rs['ID']?>"><?php echo $rs['流程名称']?></a>			    				    	
			    </td>
			    <td><?php echo $rs['主责部门']?></td>
			    <td><?php echo $rs['流程状态']?></td>			    
			    <td><a target=_blank href="detail.php?id=<?php echo $rs['ID']?>">显示流程</a></td>              
			      </tr>
			 <?php 
			}
			?>  
			   </tbody>
			</table> 
   </div> 
</div>


</body>
</html>
