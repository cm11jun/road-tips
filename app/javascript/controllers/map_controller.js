import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = { apiKey: String }
  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
    container: this.element, // container ID
    style: 'mapbox://styles/mapbox/streets-v12', // style URL
   });
   this.#addMarkersToMap
 }

 #addMarkersToMap() {
    new mapboxgl.Marker()
      .setLngLat([51.5072, 0.1276])
      .addTo(this.map);
 }
}
