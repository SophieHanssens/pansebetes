const letsGo = () => {

}

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

    map.scrollZoom.disable();
    map.doubleClickZoom.disable();
    map.addControl(new mapboxgl.NavigationControl());


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
    });



    map.addControl(geolocate);

    const goButton = document.querySelector('#go');
    goButton.addEventListener('click', () => {

    const button = document.querySelector('.mapboxgl-ctrl-geolocate');
    button.click();

    geolocate.on('geolocate', function (e) {
      var lon = e.coords.longitude;
      var lat = e.coords.latitude;
      var position = [lon, lat];
      directions.setOrigin(position); // can be address in form setOrigin("12, Elm Street, NY")
    });
  });

  };
};

export { initMapbox };
