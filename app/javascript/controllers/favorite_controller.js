import { Controller } from "stimulus"

export default class extends Controller {
  toggle(){
    const classes = this.element.classList;

    if (classes[0] === 'fas') {
      this.element.classList = 'far fa-heart';
    } else {
      this.element.classList = 'fas fa-heart';
    };
  };
}
