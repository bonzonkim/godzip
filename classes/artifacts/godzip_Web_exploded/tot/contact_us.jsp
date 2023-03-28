<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/resources/js/contact_us.js"></script>
<title>Insert title here</title>
</head>
<body>

	<div id="wrap">
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

		<h1 class="h1" style="background-color: antiquewhite;">찾아오시는 길</h1>
      <div class="container">
        <table>
          <tr>
            <td><button type="button" class="button" onclick="document.getElementById('map').innerHTML = '<iframe src=\'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3306.4428111589928!2d-118.3033055!3d34.032510599999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2b874d3cfe12f%3A0x2ad9905fe5978fd1!2s1801%20W%20Adams%20Blvd%2C%20Los%20Angeles%2C%20%EB%209%209%20CA%209%20EA%B5%AD!5e0!3m2!1sko!2skr!4v1678889227003!5m2!1sko!2skr\' width=\'100%\' height=\'450\' style=\'border:0;\' allowfullscreen=\'\' loading=\'eager\' referrerpolicy=\'no-referrer-when-downgrade\'></iframe>';"><h1>LA(본사)</h1></button></td>
            <td><button type="button" class="button" onclick="document.getElementById('map').innerHTML = '<iframe src=\'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12661.513516944651!2d127.032909!3d37.498993!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9ec255555555%3A0x3565475c3365c5bb!2zS0jsoJXrs7TqtZDsnKHsm5A!5e0!3m2!1sko!2skr!4v1678893686771!5m2!1sko!2skr\' width=\'100%\' height=\'450\' style=\'border:0;\' allowfullscreen=\'\' loading=\'eager\'></iframe>';"><h1>서울</h1></button></td>
          </tr>
          <tr>
            <td><button type="button" class="button" onclick="document.getElementById('map').innerHTML = '<iframe src=\'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9739.059117628754!2d4.8417339!3d52.3928143!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c5e394caa3a533%3A0xf0b5383402432ccb!2sEDGE%20Amsterdam%20West!5e0!3m2!1sen!2sus!4v1678896695679!5m2!1sen!2sus\' width=\'100%\' height=\'450\' style=\'border:0;\' allowfullscreen=\'\' loading=\'eager\'></iframe>';"><h1>네덜란드</h1></button></td>
            <td><button type="button" class="button" onclick="document.getElementById('map').innerHTML = '<iframe src=\'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12423.313191372842!2d114.162813!3d22.279461!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x34040062fcdc4211%3A0x328e9d92fd98f7d!2z6rWt7KCc6riI7Jy17IS87YSw!5e0!3m2!1sko!2skr!4v1678897233228!5m2!1sko!2skr\' width=\'100%\' height=\'450\' style=\'border:0;\' allowfullscreen=\'\' loading=\'eager\'></iframe >';"><h1>홍콩</h1></button></td>

          </tr>
        </table>
      </div>

      <div id="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3306.4428111589928!2d-118.3033055!3d34.032510599999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2b80b33226c93%3A0x50e9a8bfde502ff2!2s1800%20W%20Adams%20Blvd%2C%20Los%20Angeles%2C%20CA%2090018%20%EB%AF%B8%EA%B5%AD!5e0!3m2!1sko!2skr!4v1678898333968!5m2!1sko!2skr" width="100%" height="450" style="border:0;" allowfullscreen="" loading="eager" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>
      <%@ include file="/WEB-INF/views/common/footer.jsp" %>

	</div>
</body>
</html>