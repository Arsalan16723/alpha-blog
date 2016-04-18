<script type="text/javascript">
$(document).ready(function(){


	var Geo={};
if (navigator.geolocation) {
navigator.geolocation.getCurrentPosition(success,error);
}
else {
alert('Geolocation is not supported');
}
function error() {
alert("That's weird! We couldn't find you!");
}
function success(position) {
      Geo.lat = position.coords.latitude;
      Geo.lng = position.coords.longitude;

  });
</script>