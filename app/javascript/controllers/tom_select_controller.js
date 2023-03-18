import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select"

export default class extends Controller {

  connect() {
    console.log("?");
    const select = document.querySelector(".stops");

    new TomSelect(select,{
      maxItems: 10,
      highlight: true
    });
  }
}
