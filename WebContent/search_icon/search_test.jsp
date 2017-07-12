<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="./search.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<!-- Design inspired by: https://dribbble.com/shots/1992789 -->
<form class="search_form">
  <input class="search_icon" type="text" />
  <div class="after"></div>
  <input class="search_icon" type="submit" />
</form>
</body>
<script>
var s = $('.search_icon'),
f  = $('.search_form'),
a = $('.after'),
    m = $('h4');

s.focus(function(){
if( f.hasClass('open') ) return;
f.addClass('in');
setTimeout(function(){
f.addClass('open');
f.removeClass('in');
}, 1300);
});

a.on('click', function(e){
e.preventDefault();
if( !f.hasClass('open') ) return;
s.val('');
f.addClass('close');
f.removeClass('open');
setTimeout(function(){
f.removeClass('close');
}, 1300);
})

f.submit(function(e){
e.preventDefault();
m.html('Thanks, high five!').addClass('show');
f.addClass('explode');
setTimeout(function(){
s.val('');
f.removeClass('explode');
m.removeClass('show');
}, 3000);
})
</script>
</html>
