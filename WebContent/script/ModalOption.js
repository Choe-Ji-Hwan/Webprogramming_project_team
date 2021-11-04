// x버튼 클릭시 모달 창 없애기

$('.cancelButton').click(function(e) {
	$("#backScreen").css("display", "none"); 
	$(".modalScreen").css("display", "none"); 
	$("body").removeAttr("class");		
});

//미완성
