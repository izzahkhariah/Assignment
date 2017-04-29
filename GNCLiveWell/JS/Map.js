 function initMap() {
        var uluru = {lat: 4.9083702, lng: 114.9425094};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 10,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
}
