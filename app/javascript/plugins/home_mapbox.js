import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const homeMapbox = () => {
  const mapElement = document.getElementById('map-home');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map-home',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    map.scrollZoom.disable();
    map.doubleClickZoom.disable();
    map.addControl(new mapboxgl.NavigationControl());

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);

      new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(map);
    });

    var geolocate = new mapboxgl.GeolocateControl({
      positionOptions: {
        enableHighAccuracy: true
      },
      trackUserLocation: true,
      showUserHeading: true,
      showAccuracyCircle: false,
    });

    map.on('load', function () {
      const button = document.querySelector('.mapboxgl-ctrl-geolocate');
      button.click();
    });

    map.addControl(geolocate);

    geolocate.on('geolocate', function (e) {
      var lon = e.coords.longitude;
      var lat = e.coords.latitude;
      var position = [lon, lat];
      directions.setOrigin(position); // can be address in form setOrigin("12, Elm Street, NY")
    });

    fitMapToMarkers(map, markers);
  }
};

export { homeMapbox };
