import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }
  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
    container: this.element, // container ID
    style: 'mapbox://styles/mapbox/streets-v12', // style URL
   });
   this.#addMarkersToMap()
   this.#fitMapToMarkers()

   this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
    mapboxgl: mapboxgl }))
}

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat])
    })
    this.map.fitBounds(bounds, {padding: 80})
  }


  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const customMarker = document.createElement('div')
      customMarker.style.height = "20px"
      customMarker.style.width = "20px"
      customMarker.style.borderRadius="50px"
      customMarker.style.backgroundImage = `url('${marker.image_url}')`
      customMarker.style.backgroundSize = "contain"
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      new mapboxgl.Marker({element: customMarker})
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })
  }
}
