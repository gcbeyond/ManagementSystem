<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="include.jsp" %>



<html>
  <head>
    
    <title>调休查询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    	
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">调休查询</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">调休查询</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">调休信息</div>
					<div class="panel-body">
						<table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						    <thead>
						    <tr>
						    	<th>申请人</th>
						        <th>申请时间</th>
				   				<th>调休时间（起）</th>
				   				<th>调休时间（讫）</th>
				   				<th>未休时长</th>
				   				<th>调休时长</th>
				   				<th>调休原因</th>
				   				<th>状态</th>
				   				<th>审批人</th>
						    </tr>
						    </thead>
						    
						    <s:iterator id="t" value="txList">
				   				<tr>
				   					<td>${t.sqr }</td>
				   					<td>${t.sqrq }</td>
					   				<td>${t.kssj }</td>
					   				<td>${t.jssj }</td>
					   				<td>${t.wxsc }</td>
					   				<td>${t.txsc }</td>
					   				<td>${t.txyy }</td>
					   				<td>
					   					<s:if test='#t.zt=="待审批" || #t.zt=="不同意"'>
					   						<a style="color: red">${t.zt }</a>
					   					</s:if>
					   					
					   					<s:else>
					   						<a style="color: green">${t.zt }</a>
					   					</s:else>
					   				</td>
					   				<td>${t.spr }</td>
				   				</tr>
				   			</s:iterator>
						    
						    
						</table>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
		
			
		
		
	</div><!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/bootstrap-table.js"></script>
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
