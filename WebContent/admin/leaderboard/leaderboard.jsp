﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Leaderboad</title>

<link href="admin/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/css/datepicker3.css" rel="stylesheet">
<link href="admin/css/bootstrap-table.css" rel="stylesheet">
<link href="admin/css/styles.css" rel="stylesheet">
<link href="admin/css/table.css" rel="stylesheet">
<link href="admin/css/font-awesome.min.css" rel="stylesheet">


<!--Icons-->
<script src="admin/js/lumino.glyphs.js"></script>

 <!-- library -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
      <!-- CSS -->
      <!-- <link href="lib/css/compiled.min.css" rel="stylesheet"> -->
      <!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script> -->
      <!-- Bootstrap core CSS -->
      <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
      <!-- Material Design Bootstrap -->
      <link href="admin/lib/css/mdb.min.css" rel="stylesheet">
      <!-- Your custom styles (optional) -->
      <link href="admin/lib/css/style.css" rel="stylesheet">
      
      <!-- JQuery -->
      <script type="text/javascript" src="lib/js/jquery-3.1.1.min.js"></script>
      <!-- Bootstrap tooltips -->
      <script type="text/javascript" src="lib/js/tether.min.js"></script>
      <!-- MDB core JavaScript -->
      <script type="text/javascript" src="lib/js/mdb.min.js"></script>
 <!--/libary -->

</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> User <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="login.html"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg>Login</a></li>
							<li><a href="#"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<ul class="nav menu" style="padding-top:30px;font-size:20px;font-family:myFirstFont">
			<li><a href="/"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg>Trang chủ</a></li>
			<li><a href="/FPT/list-user.do"><svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"></use></svg>User</a></li>
			<li><a href="/FPT/list-categories.do"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg>Category</a></li>
			<li><a href="/FPT/list-menu.do"><svg class="glyph stroked line-graph"><use xlink:href="#stroked-line-graph"></use></svg>Menu</a></li>
			<li><a href="/FPT/list-subject.do"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Subject</a></li>
			<li><a href="/FPT/list-problem.do"><svg class="glyph stroked app-window"><use xlink:href="#stroked-app-window"></use></svg>Problem</a></li>
			<li><a href="/FPT/list-editorial.do"><svg class="glyph stroked star"><use xlink:href="#stroked-star"></use></svg>Editorial</a></li>
			<li><a href="/FPT/list-tutorial.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>Tutorial</a></li>
			<li><a href="/FPT/list-testcase.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>Testcase</a></li>
			<li><a href="/FPT/list-tutorialcode.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>TutorialCode</a></li>
			<li><a href="/FPT/list-submit.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>Submit</a></li>
			<li><a href="/FPT/list-code.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>Code</a></li>
			<li><a href="/FPT/list-status.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>Status</a></li>
			<li class="active"><a href="/FPT/list-leaderboard.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>Leaderboad</a></li>
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Leaderboad</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						    <thead>
						    <tr>
						    
						        <th data-field="leadId"  data-sortable="true">leadId</th>
						        <th data-field="subId"  data-sortable="true">subId</th>
						         <th data-field="userId"  data-sortable="true">userId</th>
						        <th data-field="codeId"  data-sortable="true">CodeID</th>
								<th data-field="process" data-sortable="true" class="chucnang">function</th>
						    </tr>
							
						    </thead>
							<tbody>
									<logic:iterate id="leaderboard" name="leaderBoardForm" property="leaderBoardList">
							<tr>
								
								<td><jsp:getProperty name="leaderboard" property="leadId"/> </td>
								<td><jsp:getProperty name="leaderboard" property="subId"/> </td>
								<td><jsp:getProperty name="leaderboard" property="userId"/> </td>
								<td><jsp:getProperty name="leaderboard" property="codeId"/> </td>
								
								
								
							</tr>
							</logic:iterate>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
	
	</div><!--/.main-->

	<script src="admin/js/jquery-1.11.1.min.js"></script>
	<script src="admin/js/bootstrap.min.js"></script>
	<script src="admin/js/chart.min.js"></script>
	<script src="admin/js/chart-data.js"></script>
	<script src="admin/js/easypiechart.js"></script>
	<script src="admin/js/easypiechart-data.js"></script>
	<script src="admin/js/bootstrap-datepicker.js"></script>
	<script src="admin/js/bootstrap-table.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>