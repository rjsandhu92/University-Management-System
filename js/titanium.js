
$(document).ready(function(){
	
	$("body").addClass("JS");
	
	$(".tabs").tabs();	  
	$("input.date").datepicker();
	$.ui.dialog.defaults.bgiframe = true;


	$("#welcome").dialog({ 
		bgiframe: 	true, 
		modal:		true
	});

	$(".features").click(function(){
		$("#features").dialog({ 
			bgiframe: 	true, 
			modal:		true,
			width: 		600 

		});			
	});

	$(".close").click(function(){
		$(this).parents(".message").hide("fast");
		return false;
	});

	$(".tooltip").tooltip({  
		showBody:	" - ",
		showURL:	false
	});	

	$("#postList").tablesorter({ 
		headers: { 
			0: { 
				sorter: false 
			}
		}
	 });

	$("#side-nav li").not(".active").find("ul").hide();
	$("#side-nav .button").click(function(){
		if($(this).parent("li").hasClass("active")){
			$(this).next("ul").hide("fast");
			$(this).parent().removeClass("active").addClass("inactive").find(".expand").removeClass("expanded");
		}else{
			$(this).next("ul").show("fast");
			$(this).parent().removeClass("inactive").addClass("active").find(".expand").addClass("expanded");
		}
	});
	
	/*$("#side-nav li").not(".active").find("ul").hide();
	$("#side-nav .button").click(function(){
		$("#side-nav ul").hide();
		if($(this).parent("li").hasClass("active")){
			$("#side-nav>li").removeClass("active").addClass("inactive").find(".expand").removeClass("expanded");
		}else{
			$("#side-nav>li").removeClass("active").addClass("inactive").find(".expand").removeClass("expanded");
			$(this).next("ul").show();
			$(this).parent().removeClass("inactive").addClass("active");
			$(this).find(".expand").addClass("expanded");
		}
	});*/

});	