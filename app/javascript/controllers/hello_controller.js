import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }

  myFunction() {
    new TomSelect("#select-state",{
      maxItems: 10,
      highlight: true
    });
  }
}
