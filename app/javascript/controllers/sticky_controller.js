import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ['button'];

  connect() {
    this.topOffset = this.buttonTarget.getBoundingClientRect().top + window.pageYOffset;
  }

  stick() {
    console.log(this.buttonTarget)
    console.log(window.pageYOffset)
    console.log(this.topOffset)
    if (window.pageYOffset >= this.topOffset) {
      this.buttonTarget.classList.add('sticky');
    } else {
      this.buttonTarget.classList.remove('sticky');
    }
  }

}
