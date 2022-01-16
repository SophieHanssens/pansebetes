import { csrfToken } from "@rails/ujs";
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['animal'];

  add(event) {
    event.preventDefault();
    const favdata = document.querySelector('#favdata');
    const user = favdata.dataset.user;
    const animal = favdata.dataset.animal;

    fetch('/favorites', {
      method: 'POST',
      headers: { 'Accept': "application/json", "Content-Type": "application/json", 'X-CSRF-Token': csrfToken() },
      body: JSON.stringify({
        "user_id": user,
        "animal_id": animal
      })
    })
      .then(response => response.json())
      .then((data)=>{
        const heartClass = document.querySelector('.fa-heart');
        if (data.id === null) {
          heartClass.classList.remove('fas');
          heartClass.classList.add('far');
        } else {
          heartClass.classList.remove('far');
          heartClass.classList.add('fas');
        }
      })
  }
}
