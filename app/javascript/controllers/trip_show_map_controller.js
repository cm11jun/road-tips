import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    new TripShowMapController(this.element)
  }

  // renderMap() {
  //   mapboxgl.accessToken = 'pk.eyJ1IjoiY20xMWp1biIsImEiOiJjbGVvbzZxb28wNDdmM3VvMTBqeXVub2trIn0.6YeYXqBNO0iFTo6kMuTM-w';
  //   var map = new mapboxgl.Map({
  //     container: 'map',
  //     style: 'mapbox://styles/mapbox/streets-v11',
  //     center: <%= @start_coords %>,
  //     zoom: 10
  //   });

  //   var mapboxgl = require('mapbox-gl');
  //   var MapboxDirections = require('@mapbox/mapbox-gl-directions');

  //   var directions = new MapboxDirections({
  //     accessToken: 'pk.eyJ1IjoiY20xMWp1biIsImEiOiJjbGVvbzZxb28wNDdmM3VvMTBqeXVub2trIn0.6YeYXqBNO0iFTo6kMuTM-w',
  //     unit: 'metric',
  //     profile: 'mapbox/driving'
  //   });

  //   map.addControl(directions, 'top-left');
  // }
}
