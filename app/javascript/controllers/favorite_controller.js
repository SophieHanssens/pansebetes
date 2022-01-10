import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['form'];

  add(e) {
  //   e.preventDefault();

  //   fetch('/favorites', {
  //     method: 'POST',
  //     headers: { 'Accept': "application/json", 'Content-type': "application/json", 'X-CSRF-Token': csrfToken() },
  //     body: new FormData(this.formTarget)
  //   })
  //     .then(response => response.json())
  //     .then((data) => {
  //       console.log(data)
  //   });
  // }


  }
}
