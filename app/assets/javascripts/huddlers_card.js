//functions that we will call in huddlers cardZZ

function message(){
	alert("message");

}

function friend_request(){
	alert("added as a friend");
}
$(document).ready(function(){
 
	$('.lightbox').click(function(){
		$('.backdrop, .msg_box').animate({'opacity':'0.00'}, 300, 'linear');
		$('.msg_box').animate({'opacity':'1.00'}, 300, 'linear');
		$('.backdrop, .msg_box').css('display', 'block');
	});
	
	$('.lightbox2').click(function(){
                $('.backdrop, .request_box').animate({'opacity':'0.00'}, 300, 'linear');
                $('.request_box').animate({'opacity':'1.00'}, 300, 'linear');
                $('.backdrop, .request_box').css('display', 'block');
        });

	$('.close').click(function(){
		close_msg_box();
		close_request();
	});
 
	$('.backdrop').click(function(){
		close_msg_box();
		close_request();
	});
});

function close_msg_box()
{
	$('.backdrop, .msg_box').animate({'opacity':'0'}, 300, 'linear', function(){
	$('.backdrop, .msg_box').css('display', 'none');
	});
}

function close_request(){
	$('.backdrop, .request_box').animate({'opacity':'0'}, 300, 'linear', function(){
        $('.backdrop, .request_box').css('display', 'none');
        });	
}

function save_shoutout(){
	var shoutout = $('#shoutout_textarea').val();
	$.ajax({
		url: "/create_post",
		type: "POST",
		data: {testy: shoutout},
	success:function(data){
		alert('success');
	},
	error:function(data){
		alert('error');
	}	
	});
}

function shoutout_update(event){
        hash = event.timeStamp;
        hash = hash.toString();
        var prev_html = $("#wall").html();
        str0 = prev_html;
        str1 = '<div id="new'+hash+'">'+$("#shoutout_textarea").val()+'</div>';
        str2 = '<hr/>';
        str3 = '<a href="#">Like</a><a style="margin-left:10px;" href="#">Comment</a>';
        $('#wall').html(str0 + str1 + str3 + str2);

}
