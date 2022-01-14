import { csrfToken } from "@rails/ujs";
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['animal'];

  add(event) {
    event.preventDefault();

    fetch('/favorites', {
      method: 'POST',
      headers: { 'Accept': "application/json", "Content-Type": "application/json", 'X-CSRF-Token': csrfToken() },
      body: JSON.stringify({
        "user_id": 140,
        "animal_id": 334
      })
    })
      .then(response => response.json())
      .then((data)=>console.log(data))
  }
}
