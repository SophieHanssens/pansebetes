const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v11',
      center: [5.3699525, 43.2961743], // starting position
      zoom: 12
    });
    var directions = new MapboxDirections({
      accessToken: mapboxgl.accessToken
    });

    map.addControl(directions, 'top-left');
    const address = document.querySelector('#address');
    map.on('load', function () {
      directions.setDestination(address.textContent);
    });

    var geolocate = new mapboxgl.GeolocateControl({
      positionOptions: {
        enableHighAccuracy: true
      },
      trackUserLocation: true,
      showUserHeading: true,
      showAccuracyCircle: false,
      reverseGeocode: true
    });

    map.on('load', function () {
      const button = document.querySelector('.mapboxgl-ctrl-geolocate');
      console.log(button);
      button.click();
    });

    map.addControl(geolocate);

    geolocate.on('geolocate', function (e) {
      var lon = e.coords.longitude;
      var lat = e.coords.latitude;
      var position = [lon, lat];
      console.log(position);
      directions.setOrigin(position); // can be address in form setOrigin("12, Elm Street, NY")
    });
  };
};
// destination.textContent = address.textContent;

  // var latlng = new google.maps.LatLng(lat, lng);
  // // This is making the Geocode request
  // var geocoder = new google.maps.Geocoder();
  // geocoder.geocode({ 'latLng': latlng }, (results, status) => {
  //   if (status !== google.maps.GeocoderStatus.OK) {
  //     alert(status);
  //   }
  //   // This is checking to see if the Geoeode Status is OK before proceeding
  //   if (status == google.maps.GeocoderStatus.OK) {
  //     console.log(results);
  //     var address = (results[0].formatted_address);
  //   }
  // });


export { initMapbox };
