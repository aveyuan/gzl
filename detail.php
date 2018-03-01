<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="cn">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>工作流详情列表</title>
		<link rel="stylesheet" href="css/cs1.css" />
	</head>
	<body>		
		<?php		
			include "config.php";
					if (!empty($_GET['id'])){
					$d=$_GET['id'];
					$sql="select * from `oa_lcb` where `id`='$d'";
					$result=mysql_query($sql); 	
					while($sj=mysql_fetch_assoc($result)){
						echo '<h2>流程名称：'.$sj["流程名称"].'</h2>';
						echo '<p> 流程类别：'.$sj["流程类别"].'&nbsp;&nbsp;&nbsp;&nbsp;'.'主责部门：'.$sj["主责部门"].'&nbsp;&nbsp;&nbsp;&nbsp;'.'流程状态：'.$sj["流程状态"].'<br><br>'.'抄送：'.$sj["抄送"].'</p>';
							foreach($sj as $key=>$value){
								if($value==null||$value==$sj['流程类别']||$value==$sj['流程状态']||$value==$sj['重复参与人策略']||$value==$sj['分支']||$value==$sj['抄送']||$value==$sj['流程名称']||$value==$sj['公司'] || $value==$sj['主责部门'] || $value==$sj['ID']){
									continue;
								}				
						else{
								if($value=="分支1"){								
										//$fz_sql="SELECT * FROM `oa_gxb1` where `关联流程ID`=$d";	
										$fz_sql="select * from `oa_gxb1` WHERE find_in_set($d,`关联流程ID`)";								
										$fz_result=mysql_query($fz_sql);
										$cont1=mysql_num_rows($fz_result);
										$hrcsum=$cont1*156;
										$hrflsum=$cont1*2;										
										$boxsum=$cont1*156;
										$hrhrsum='style="margin-left:'.$hrflsum.'px;"';									
										$hrwidth='style="width:'.$hrcsum.'px;"';
										$hrboxwidth='style="width:'.$boxsum.'px;"';																	
										echo '<div class="container"'.$hrwidth.'>';	
										echo'	<hr '.$hrhrsum.' />';	
										echo '</div>';
																					
											echo '<div class="container"'.$hrboxwidth.'>';
											//分支内信息

													while($fz_sj=mysql_fetch_assoc($fz_result)){
													echo'<div class="hrbox">';														
														echo '<div class="hrfzlfet">';
															echo $fz_sj['分支名称'];	
														echo '</div>';
														
															foreach($fz_sj as $fz_key=>$fz_value){ //开始
															if($fz_value==null||$fz_value==$fz_sj['ID']||$fz_value==$fz_sj['关联流程ID']||$fz_value==$fz_sj['分支名称']){
																continue;
															}
															else{
																echo'	<div class=" hrboxleft">';
																echo'		<div class="contbox">';
																echo $fz_value;
																echo'		</div>';
																echo'		<div class="contline"></div>';
																echo'	</div>';											
															}
															
															}
															
														
														echo'</div>';																												
													}
													echo'</div>';
													echo '<div class="flclear"></div>';													
													echo '<div class="container"'.$hrwidth.'>';	
													echo'	<hr '.$hrhrsum.' />';
													echo'		<div class="contline"></div>';		
													echo '<div>';									
										}

								else if($value=="分支2"){
								//$fz_sql="SELECT * FROM `oa_gxb1` where `关联流程ID`=$d";
								$fz_sql="select * from `oa_gxb2` WHERE find_in_set($d,`关联流程ID`)";																		
								$fz_result=mysql_query($fz_sql);
								$cont1=mysql_num_rows($fz_result);
								$hrcsum=$cont1*156;
								$hrflsum=$cont1*2;										
								$boxsum=$cont1*156;
								$hrhrsum='style="margin-left:'.$hrflsum.'px;"';									
								$hrwidth='style="width:'.$hrcsum.'px;"';
								$hrboxwidth='style="width:'.$boxsum.'px;"';																	
																											
								echo '<div class="container"'.$hrwidth.'>';	
								echo'	<hr '.$hrhrsum.' />';	
								echo '</div>';
																			
									echo '<div class="container"'.$hrboxwidth.'>';
									//分支内信息

											while($fz_sj=mysql_fetch_assoc($fz_result)){
											echo'<div class="hrbox">';														
												echo '<div class="hrfzlfet">';
													echo $fz_sj['分支名称'];	
												echo '</div>';	
													foreach($fz_sj as $fz_key=>$fz_value){ //开始
													if($fz_value==null||$fz_value==$fz_sj['ID']||$fz_value==$fz_sj['关联流程ID']||$fz_value==$fz_sj['分支名称']){
														continue;
													}
													else{
														echo'	<div class=" hrboxleft">';
														echo'		<div class="contbox">';
														echo $fz_value;
														echo'		</div>';
														echo'		<div class="contline"></div>';
														echo'	</div>';											
													}
													}
														echo'</div>';																												
													}
													echo'</div>';
													echo '<div class="flclear"></div>';													
													echo '<div class="container"'.$hrwidth.'>';	
													echo'	<hr '.$hrhrsum.' />';
													echo'		<div class="contline"></div>';		
													echo '<div>';									
										}
										else{
										echo'		<div class="contbox">';
										echo $value;
										echo'		</div>';
										echo'		<div class="contline">';		
										echo'		</div>';											
											}													
										}

										}

										}
										echo'		<div class="contbox">';
										echo '结束';
										echo'		</div>';
										}
					else{
						echo'<h1>没有数据，请检查</h1>';
					}																								
		?>
	</body>
</html>
