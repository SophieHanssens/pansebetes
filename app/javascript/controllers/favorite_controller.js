import { csrfToken } from "@rails/ujs";
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['animal'];

  add(event) {
    event.preventDefault();

    fetch('/favorites', {
      method: 'POST',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
      body: JSON.stringify({
        "favorite": {
        "user_id": 140,
        "animal_id": 331
      }})
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      });
  }
}
